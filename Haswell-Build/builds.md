# Build an OpenFOAM, OpenMPI, and CUDA-Aware Ubuntu Node

## OpenMPI

This section documents building `OpenMPI` with CUDA on Ubuntu Noble, including 3rd-party tools and documentation. Start with a recursively cloned fork of the `https://github.com/openmpi/ompi` repository. 

Here, the `OpenPMIx` and `PRRTE` tools are built to `/opt/pmix` and `/opt/prrte` respectively, and OpenMPI is built to `/opt/ompi`. 

### Prerequisites
```bash
sudo apt update
sudo apt install build-essential \
  m4 autoconf automake libtool \
  perl python3 python3-pip virtualenv \
  flex bison \
  libevent-dev libhwloc-dev

```
### Documentation
In each 3rd-party application folder, and for the ompi folder in the last step, `cd` into each directory

```bash
# Setup a virtual environment to safely install Sphinx
virtualenv venv
source venv/bin/activate
pip install sphinx sphinx-rtd-theme
pip install -r docs/requirements.txt
```

Make sure to add the `--enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build` flag on all the calls to `./configure` inside a `source venv/bin/activate` block, like in this example for `openpmix`:

```bash
source venv/bin/activate # you should see (venv) to the left of the prompt
./configure --prefix=/opt/pmix --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
deactivate
```
Note that although this method will work, it is not the best way to do this for all three tools. It's better to install the sphinx tools just once for all three.

As each tool is built, add its `bin` and `lib` folders to the `PATH` and `LD_LIBRARY_PATH` variables in `~/.bashrc`. Eventually variable assignments should look like this:

```bash
# set PATH so it includes ompi, prrte, pmix, and cuda bin folders
export PATH="/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/usr/local/cuda/bin:$PATH"
# set LD_LIBRARY_PATH so it includes ompi, prrte, pmix, and cuda lib folders
export LD_LIBRARY_PATH="/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
```

Then append each tool's `man` folder to each of the sublists of `MANPATH` items in the `/etc/manpath.config` file, where `<3pt>` is the tool name.

```properties
MANDATORY_MANPATH /opt/<3pt>/share/man
...
MANPATH_MAP /opt/<3pt>/bin /opt/<3pt>/share/man
...
MANDB_MAP /opt/<3pt>/share/man /var/cache/man/<3pt>
```

Eventually, `manpath.config` will contain all three new sets of entries:

```properties
MANDATORY_MANPATH /opt/pmix/share/man
MANDATORY_MANPATH /opt/prrte/share/man
MANDATORY_MANPATH /opt/ompi/share/man
...
MANPATH_MAP	/opt/pmix/bin	/opt/pmix/share/man
MANPATH_MAP	/opt/prrte/bin	/opt/prrte/share/man
MANPATH_MAP	/opt/ompi/bin	/opt/ompi/share/man
...
MANDB_MAP /opt/pmix/share/man /var/cache/man/pmix
MANDB_MAP /opt/prrte/share/man /var/cache/man/prrte
MANDB_MAP /opt/ompi/share/man /var/cache/man/ompi
```

### OpenPMIx

```bash
cd <pmix home>
./autogen.pl |& tee autogen.out
./configure --prefix=/opt/pmix |& tee configure.out 
make -j$(nproc) |& tee make.out
sudo make install |& tee install.out
```

### PRRTE
```bash
cd <prrte home>
./autogen.pl |& tee autogen.out
./configure --prefix=/opt/prrte --with-pmix=/opt/pmix |& tee configure.out
make -j$(nproc) |& tee make.out
sudo make install |& tee install.out
```

### OpenMPI
```bash
cd <ompi home>
./autogen.pl |& tee autogen.out
./configure --prefix=/opt/ompi \
  --with-pmix=/opt/pmix \
  --with-prrte=/opt/prrte \
  --with-cuda=/usr/local/cuda \
  --with-cuda-libdir=/usr/local/cuda/lib64/stubs |& tee configure.out

make -j$(nproc) |& tee make.out
sudo make install |& tee install.out
```
### Verify the Links
Once make install finishes, verify that the custom OpenMPI binary isn't missing any library hooks to your other tools:
```bash
ldd /opt/ompi/bin/mpirun
```

## ParaView

Start with a recursively cloned fork of the `https://github.com/kitware/ParaView` repository.

### Prerequisites

```bash
sudo apt install cmake \              
  mesa-common-dev \
  mesa-utils \
  libgl1-mesa-dev \
  freeglut3-dev \
  ninja-build \
  libtbb-dev \
  xsltproc \
  libxkbcommon-dev qt6-5compat-dev  \
  qt6-base-dev qt6-tools-dev qt6-svg-dev
```

### Build using `cmake` Configuration
```bash
mkdir paraview_build
cd paraview_build
cmake -GNinja \
  -DCMAKE_INSTALL_PREFIX=/opt/paraview \
  -DPARAVIEW_USE_PYTHON=ON \
  -DPARAVIEW_USE_CUDA=ON \
  -DPARAVIEW_USE_MPI=ON \
  -DVTK_SMP_IMPLEMENTATION_TYPE=TBB \
  -DCMAKE_BUILD_TYPE=Release \
  ../ |& tee cmake.out
ninja -j$(nproc) |& tee ninja.out
sudo ninja install |& tee install.out
```

### Changes to `PATH` and `LD_LIBRARY_PATH` in `~/.bashrc`

```bash
# set PATH so it includes paraview, ompi, prrte, pmix, and cuda bin folders
export PATH="/opt/paraview/bin:/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/usr/local/cuda/bin:$PATH"
# set LD_LIBRARY_PATH so it includes paraview, ompi, prrte, pmix, and cuda lib folders
export LD_LIBRARY_PATH="/opt/paraview/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
```

## OpenFOAM

### Understanding OpenFOAM GPU Usage

Over the years, OpenFOAM's solvers have been decoupled from its main components, so interestingly, OpenFOAM is therefore not actually GPU-aware. Instead, each Case's problem is offloaded to a specific GPU-Aware solver library, for example AMGX or PETSc. These APIs are in turn wrapped into an interface OpenFOAM can communicate with and reference, such as AmgX4Foam or PETSc4Foam. Since all our GPU devices run CUDA, the plan is to use AmgX and AmgX4Foam. Running OpenFOAM on, for example, a two-node, multi-GPU CUDA set-up involves configuring AmgX and OpenMPI.

### .com or .org?

There are two completely separate branches of OpenFOAM, a `.com` version and an `.org` version. We need to use the `.com` version because it has better support for CUDA, and in particular `AmgX4Foam` is built using the `.com` version, and fails to build for the `.org` version (but a port looks doable). `MeshObject`, a beast of a container class in the `.com` version, does not exist in the `.org` version, but that seems to be the only real issue.

## `.org` Version Notes

Here use a recursively cloned fork of the https://github.com/OpenFOAM/OpenFOAM-dev repository. OpenFOAM compilation also requires some third-party builds. See https://github.com/OpenFOAM/ThirdParty-dev. Both of these build steps are just calls to each repository's Allwmake script.

### Prerequisites

```bash
# Checks for library existence
apt list --installed | grep -E \
"libxml2-dev|libhdf5-dev|libavfilter-dev|libtheora-dev|libgl2ps-dev|libx11-dev|libqt5x11extras5-dev|libglew-dev|libutfcpp-dev|libdouble-conversion-dev|libfreetype-dev|libqt5svg5-dev|qtxmlpatterns5-dev-tools|qttools5-dev|python3-dev|libadios2-serial-c-dev|libadios2-serial-c++11-dev"

# Install the required libraries
sudo apt install libxml2-dev libhdf5-dev libavfilter-dev libtheora-dev libgl2ps-dev \
    libx11-dev libqt5x11extras5-dev libglew-dev libutfcpp-dev \
    libdouble-conversion-dev libfreetype-dev libqt5svg5-dev \
    qtxmlpatterns5-dev-tools qttools5-dev python3-dev \
    libadios2-serial-c-dev libadios2-serial-c++11-dev
```
Inside `~/.bashrc`, add this line:
```bash
source repos/OpenFOAM-dev/etc/bashrc
```

### Third-Party Tools

Now, `cd` into the `ThirdParty-dev` folder.

```bash
./Allwmake -j$(nproc) |& tee allwmake.out
```

### OpenFOAM

Now, `cd` into the `OpenFOAM-dev` folder.

```bash
./Allwmake -j$(nproc) |& tee allwmake.out
```

## AMGX

Where amgx fits in:

```text
               [ STEP 1: OPENMPI RUNTIME LAUNCH ]
             User executes: mpirun -np 8 --host machineA:6,machineB:2
                                     |
                +--------------------+--------------------+

                | (Network Fabric via SSH)                |
                v                                         v
   [ MACHINE A (Main/New GPU) ]               [ MACHINE B (Remote/Old GPU) ]
   Spawns 6 local MPI Ranks                  Spawns 2 local MPI Ranks

        |                                          |
   [ STEP 2: MATRIX DISCRETIZATION ]          [ STEP 2: MATRIX DISCRETIZATION ]
   CPUs build equations for domains 0-5       CPUs build equations for domains 6-7

        |                                          |
   [ STEP 3: AMGX INTERFACE CONVERSION ]      [ STEP 3: AMGX INTERFACE CONVERSION ]
   OpenFOAM LDU Matrix -> GPU CSR Matrix      OpenFOAM LDU Matrix -> GPU CSR Matrix

        |                                          |
   [ STEP 4: LOCAL GPU SOLVE ]                [ STEP 4: LOCAL GPU SOLVE ]
   Passes data to local AmgX instance         Passes data to local AmgX instance
   Solves pressure on New GPU                 Solves pressure on Old GPU

        |                                          |
        +------------------< MPI INTER-NODE >------+
                     (Ranks sync border data via network)

```

Create your build directory and navigate into it
```bash
mkdir build && cd build
```
### Configure AMGX

Identify the exact compute architectures (`sm_` values) of the physical GPUs installed on this machine:

```bash
nvidia-smi --query-gpu=name,compute_cap --format=csv
```

Strip the decimal point from the returned `compute_cap` value (e.g., `6.1` becomes `61`). Pass only these local targets to the `CUDA_ARCH` flag. Use semicolons between values for machines hosting multiple GPU architechures.

Configure the build with the path, architectures, and MPI flags
```bash
cmake -DCMAKE_INSTALL_PREFIX=/opt/amgx \
  -DCMAKE_BUILD_TYPE=Release \
  -DCUDA_ARCH="61" \
  ../ |& tee cmake.out
```
Compile using all available cores
```bash
make -j$(nproc) |& tee make.out
```
Install into `/opt/amgx`
```bash
sudo make install |& tee install.out
```
Latest `~/.bashrc` Changes

```bash
# set LD_LIBRARY_PATH so it includes amgx, paraview, ompi, prrte, pmix, and cuda lib folders
export LD_LIBRARY_PATH="/opt/amgx/lib:/opt/paraview/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
```

## Build foamExternalSolvers (Amgx4Foam) Libraries

```bash
# 1. Define the clean, raw path locations
export AMGX_INC="/opt/amgx/include"
export AMGX_LIB="/opt/amgx/lib"

# 2. Fire off the core parallel build loop
./Allwmake -cu 61 -j$(nproc) |& tee allwmake.out
```

```bash
...
export CUDA_HOME="/usr/local/cuda"

# set PATH so it includes paraview, ompi, prrte, pmix, and cuda bin folders
export PATH="/opt/paraview/bin:/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/usr/local/cuda/bin:$PATH"
# set LD_LIBRARY_PATH so it includes amgx, paraview, ompi, prrte, pmix, and cuda lib folders
export LD_LIBRARY_PATH="/opt/hypre/lib:/opt/amgx/lib:/opt/paraview/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

#source repos/OpenFOAM-dev/etc/bashrc
source repos/OpenFOAM-com-v2606/OpenFOAM-v2606/etc/bashrc
```