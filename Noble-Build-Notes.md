# Noble Build Notes 
Last Modified Mon July 27 2026

# Build Order

## Core GPU/MPI Libraries

- Nvidia Driver
- CUDA Toolkit
- UCX
- libevent
- hwloc
- OpenPMIx
- PRRTE
- OpenMPI

## OpenFOAM Tools

- ParaView
- Umpire
- Hypre
- Apt Installs (CGAL, Boost, etc)
- FFTW
- KaHIP
- GKlib
- METIS
- ParMETIS
- Scotch
- Zoltan
- AMGX
- PETSc
- OpenFOAM
- AmgX4Foam

# Nvidia driver

Starting from a fresh install of 24.04.4. Haswell's trio of GTX 1080 TIs need:

```bash
nvidia-smi
| NVIDIA-SMI 570.211.01             Driver Version: 570.211.01     CUDA Version: 12.8 
```

## Nvidia Prerequisites

```bash
# register the CUDA keyring
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt update

# Threadripper needs Compute Architecture sm_86 and sm_120
sudo apt install nvidia-driver-570
```

# CUDA Toolkit

```bash
# maintain compatibility with Haswell's sm_61, hence Toolkit 12.8
sudo apt install cuda-toolkit-12-8
reboot
```

## `CUDA_HOME` Variable

Inside `~/.bashrc`, add the `CUDA_HOME` variable which some tools look for.

```bash
...
export CUDA_HOME=/usr/local/cuda
export PATH=$CUDA_HOME/bin
export LD_LIBRARY_PATH=$CUDA_HOME/lib64
```

# Track `PATH`, and `LD_LIBRARY_PATH` Variables

Moving forward, inside `~/.bashrc`, track changes following each successful installation of a tool, e.g.:

```bash
...
export PATH=/opt/mytool/bin:$PATH
export LD_LIBRARY_PATH=/opt/mytool/lib:$LD_LIBRARY_PATH
```


# UCX

## Prerequisites

```bash
mkdir repos && cd repos

# collect the codebase
git clone --recursive https://github.com/openucx/ucx
cd ucx
sudo apt update
sudo apt install build-essential automake autoconf pkg-config libtool
```

## Configure UCX

```bash
./autogen.sh

# For Haswell:
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt
```

# OpenMPI Dependencies

## `libevent`

```bash
cd libevent
./autogen.sh
./configure --help
mkdir build && cd build
../configure --prefix=/opt/libevent
make
make verify
sudo make install
```

## `hwloc`

```bash
cd hwloc
git checkout tags/hwloc-2.14.0
./autogen.sh
./configure --help
mkdir build && cd build
../configure --with-cuda=/usr/local/cuda --prefix=/opt/hwloc
make
sudo make install
```

## Prerequisites

```bash
sudo apt install perl python3 python3-pip virtualenv flex bison gfortran
```

## OpenPMIx

```bash
cd openpmix
git checkout tags/v6.1.1rc2
./autogen.pl
./configure --help
mkdir build && cd build
../configure --prefix=/opt/pmix --with-hwloc=/opt/hwloc --with-libevent=/opt/libevent
make -j$(nproc)
sudo make install
```

## PRRTE

```bash
cd prrte
./autogen.pl
mkdir build && cd build
../configure --prefix=/opt/prrte --with-libevent=/opt/libevent --with-hwloc=/opt/hwloc --with-pmix=/opt/pmix
make -j$(nproc)
sudo make install
```

## OpenMPI

```bash
cd ompi/
./autogen.pl
mkdir build && cd build
../configure --prefix=/opt/ompi --with-libevent=/opt/libevent --with-hwloc=/opt/hwloc --with-pmix=/opt/pmix --with-prrte=/opt/prrte --with-ucx=/opt/ucx --with-ucx-libdir=/opt/ucx/lib --with-cuda=/usr/local/cuda --with-cuda-libdir=/usr/local/cuda/lib64/stubs
make -j$(nproc)
sudo make install
```

## Changes to `etc/openmpi-mca-params.conf`

This appears to be an important tweak for a custom UCX set-up with multiple gencodes. Doing this prevents `ob1` from being the highest prioritized provider in the stack. Instead, `ucx` is always picked. This helps in most cases and passes the PETSc tests, but in theory this configuration could also cause errors too. It is still a little early to say anything certain.

This is confirmed for Haswell too 7/26.

```properties
# Point-to-point Messaging Layer
pml=ucx
# One-sided Communication Layer
osc=ucx
```

### OpenMPI `etc/prefs.sh` Changes

```bash
export MPI_ARCH_PATH=/opt/ompi
```

# OpenFOAM `.com` External Tools 

## Introduction 

Similar to most `make` tools, `Allwmake` looks for an `Allwmake` file and only builds subfolders containing one. You can run `./Allwmake` multiple times and it just picks up where it left off. 

## Hacking `etc/config.sh/*`

OpenFOAM has several quirks regarding its external dependencies. 

OpenFOAM uses the convention `etc/config.sh/tool_name` to set default external tool folder locations, and a optional `prefs.sh` file inside `etc/` for preferences. So in theory, any configuration changes in `prefs.sh` get picked up during the standard calls to `./Allwmake`. You do not have to put `prefs.sh` there, and calling `foamEtcFile -list` shows all the searched locations. 

However, when I tried calling `./Allwmake` when inside a subfolder, for some reason, it didn't find the `prefs.sh` file and reverted to OpenFOAM's default locations for those tools. But there was also some strange behavior involving the `prefs.sh` file being removed from `etc/` at some point, which may have caused the issue. 

Eventually, I just hard-coded some of the paths inside `etc/config.sh/*` directly to push through and complete the build. I also had to add `export FFTW_DIR=/opt/fftw` to the `etc/config.sh/FFTW` folder.

## Ignored Third-Party Tools

- ADIOS2
- CCMIO 
- HDF5 
- MGridGen

# ParaView

## Pre-Requisites

```bash
sudo apt install cmake ninja-build libtbb-dev mesa-common-dev mesa-utils freeglut3-dev xsltproc libxkbcommon-dev qt6-5compat-dev qt6-base-dev qt6-tools-dev qt6-svg-dev
```
## Cmake Configuration

```bash
cd repos
git clone --recursive https://github.com/Kitware/ParaView.git
cd ParaView 
mkdir paraview-build && cd paraview-build
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DCMAKE_CUDA_ARCHITECTURES="61" -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_BUILD_TYPE=Release ..

# ninja -j runs out of memory and always has to be re-run a couple of times on both machines. 
# build feedback is minimal. some libraries take several minutes to build.
# Update: ninja -j$(nproc) ultimately failed on TR.
# I had to use cmake --build . -j$(nproc) to finally complete the process. 
# Apparently, there are known issues with how ninja handles large core sizes on some AMD CPUs.

# ninja -j$(nproc) 
cmake --build . -j$(nproc)
sudo ninja install
```

## ParaView and VTK `etc/prefs.sh` Changes

```bash
export ParaView_VERSION="none"
export VTK_VERSION="none"
```

# Umpire

Like PRRTE, and OpenPMIx, Umpire is used by Hypre and is a configurable installation inside Hypre's build process. Here is the authoritative source.

## Collect Umpire Code

```bash
git clone --recursive https://github.com/LLNL/Umpire.git
cd Umpire
mkdir build && cd build
```

## Cmake Configuration and Build

```bash
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DBUILD_SHARED_LIBS=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES="61"  -DUMPIRE_ENABLE_C=ON -DCMAKE_INSTALL_PREFIX=/opt/umpire ..

make -j$(nproc)
sudo make install
```

## `LD_LIBRARY_PATH` and `PATH` changes in `~/.bashrc`:

```bash
export PATH=/opt/paraview/bin:/opt/umpire/bin:/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/opt/ucx/bin:$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=/opt/paraview/lib:/opt/umpire/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/opt/ucx/lib:/opt/ucx/lib/ucx:$CUDA_HOME/lib64
```

## Umpire `etc/prefs.sh` Changes

```bash
export UMPIRE_ARCH_PATH=/opt/umpire
```

# Hypre

```bash
cd repos
git clone --recursive https://github.com/hypre-space/hypre.git
cd hypre
mkdir build && cd build
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES="61"  -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.so ../src
make -j$(nproc)
sudo make install
```

## Hypre `etc/prefs.sh` Changes

```bash
export HYPRE_ARCH_PATH=/opt/hypre
```

# CGAL 

```bash
sudo apt update
sudo apt install libcgal-dev libgmp-dev libmpfr-dev libboost-system-dev
```

## CGAL `prefs.sh` Changes

```bash
#can use default cgal
export CGAL_ARCH_PATH=/usr
```

# FFTW 

```bash
# Use lscpu to identify supported architectures to enable
lscpu

cd fftw-3.3.11
mkdir build && cd build
../configure --prefix=/opt/fftw --enable-openmp --enable-shared --enable-threads --enable-mpi --enable-sse2 --enable-avx --enable-avx2
make -j$(nproc)
sudo make install
```

# KaHIP 

```bash
mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=/opt/kahip -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DMPI_HOME=/opt/ompi -DCMAKE_INSTALL_LIBDIR=/opt/kahip/lib ..

make -j$(nproc)
sudo make install
```

# Karypis Labs

## GKlib

```bash
cd GKlib
mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=/opt/karypis -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON ..

make -j$(nproc)
sudo make install
```

## METIS

For me, METIS had a couple of bugs in the root folder's `CMakeLists.txt`. I changed these lines:

```text
(line 55) include_directories(include)
...
(line 73) add_subdirectory("include")
```

### Pre-Make Step

Uncomment the `#defines` for `IDXTYPEWIDTH` and `REALTYPEWIDTH` inside `/opt/karypis/include/metis.h`:

```c
(line 33) #define IDXTYPEWIDTH 32
...
(line 43) #define REALTYPEWIDTH 64 /* note the 64 for double precision */
```

### Cmake Configuration and Build

```bash
cd METIS
mkdir build && cd build

cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis ..

make -j$(nproc)
sudo make install
```

## ParMETIS

```bash
cd ParMETIS
mkdir build && cd build

cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DMETIS_PATH=/opt/karypis -DCMAKE_C_COMPILER=mpicc ..

make -j$(nproc)
sudo make install
```

# Scotch

```bash
# Need Scotch for orthogonal decomposition
git clone --recursive https://gitlab.inria.fr/scotch/scotch.git

```

## Cmake

```bash
cd Scotch
mkdir build && cd build

cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/scotch -DINSTALL_METIS_HEADERS=OFF  -DMPI_THREAD_MULTIPLE=ON -DCMAKE_C_COMPILER=mpicc ..

make -j$(nproc)
sudo make install
```

### Scotch `etc/config.sh` Changes

```
export SCOTCH_ARCH_PATH=/opt/scotch
```

# Zoltan 

```bash
cd Zoltan
mkdir build && cd build

# Use CFLAGS and CXXFLAGS to force shared libraries
../configure --prefix=/opt/zoltan --enable-mpi --with-mpi=/opt/ompi --with-parmetis=1 --with-parmetis-incdir=/opt/karypis/include --with-parmetis-libdir=/opt/karypis/lib --with-scotch=1 --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" 

make everything -j$(nproc)

# Create the shared library version of libzoltan manually
cd src

# ran on Haswell 7/26
mpicxx -shared -o libzoltan.so *.o -L/opt/scotch/lib -lptscotch -lscotch -L/opt/karypis/lib -lparmetis -lmetis

# Create the system installation folders
sudo mkdir -p /opt/zoltan/lib /opt/zoltan/include

# Copy shared object library
sudo cp libzoltan.so /opt/zoltan/lib/

# Copy the Zoltan_config.h file into include
sudo cp include/Zoltan_config.h /opt/zoltan/include

# Copy the Zoltan header files into include
cd ../../src
sudo cp include/*.h /opt/zoltan/include

```

# AMGX


## Test launcher Issues

Ended up changing a line in `src/CMakeLists.txt` prior to running `cmake`:

```properties
(line 55) target_link_libraries(amgx_tests_launcher "/opt/ompi/lib/libmpi.so")
```

## Build

```bash
git clone https://github.com/amgx/amgx.git
cd amgx
mkdir build && cd build

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_EXE_LINKER_FLAGS="-L/opt/ompi/lib -lmpi" ..

make -j$(nproc)
sudo make install
```

# PETSc

## Repository and Prerequisites

```bash
# Need PETSc for Scientific Computation
git clone --recursive https://github.com/petsc/PETSc.git
sudo apt install libopenblas-dev liblapack-dev
```

## Configure

```bash
cd PETSc
mkdir build

sudo mkdir /opt/petsc
sudo chown skooby:skooby /opt/petsc

# works after removing Scotch's duplicate metis.h insertion
./configure --prefix=/opt/petsc --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --with-ucx-dir=/opt/ucx --with-mpi-dir=/opt/ompi --with-amgx-dir=/opt/amgx --with-hwloc-dir=/opt/hwloc --with-umpire-dir=/opt/umpire --with-scotch-dir=/opt/scotch --with-ptscotch-dir=/opt/scotch --with-fftw-dir=/opt/fftw --with-zoltan-dir=/opt/zoltan --with-hypre-dir=/opt/hypre --with-parmetis-dir=/opt/karypis --with-metis-dir=/opt/karypis

make PETSC_DIR=/media/skooby/data/repos/petsc PETSC_ARCH=arch-linux-c-debug all

make PETSC_DIR=/media/skooby/data/repos/petsc PETSC_ARCH=arch-linux-c-debug install

sudo chown root:root /opt/petsc

```

## PETSc `etc/prefs.sh` Changes

```bash
export PETSC_ARCH_PATH=/opt/petsc
```

# OpenFOAM

[OpenFOAM Configuration Details](OpenFOAM/OpenFOAM-Configuration.md)

## Update for 7/26

Definitely need to edit `etc/config.sh/tool-name` files directly with the correct `ARCH_PATH` variables prior to calling `Allwmake`.

## Haswell Issues

Currently on Haswell, there are issues with the external tools and libraries because I set `WM_THIRD_PARTY_DIR` to the empty string during the OpenFOAM configuration, build, and install (Allwmake). I did this because there are no external tools for OpenFOAM to configure on either machine (in theory). 

Note that PETSc's wrapper library, `libpetscFoam.so`, has been built and installed in an arbitrary location, outside of path conventions. Several other tools may not be functional for perhaps similar reasons. OpenFOAM's `lib` folder contains a `dummy` folder with a number of similar wrapper libraries to `libpetscFoam.so`, but for METIS, Scotch, Zoltan, etc. Thus, these wrapper libs may not be functional either.

## Stale ParaView Libraries

I built the current version of ParaView after trying `v5.12.1`, the version used in the tarball associated with OpenFOAM `v2606` on OpenFOAM.com's website. Note that brittle dependencies exist between VTK and QT 5 in the only ParaView-aware OpenFOAM component, a module named PVFoamReader. PVFoamReader is also the only tool that requires HDF5 support. There is also an associated visualization component, an in-process off-screen renderer, that uses VTK libraries as well. It may have built on Haswell without issues.

Due to the issues with those incompatible ParaView libraries, two `Allwmake` files were renamed to `xxxAllwmake`, in `src/plugins/bindings/vtk-hdf` and `src/modules/visualization`.

## Copy `OpenFOAM/etc` Contents Into `/opt/openfoam/etc/`

See the OpenFOAM External Tools Introduction for details and possible issues.

## Edit the .bashrc

```bash
# sources prefs.sh, but later bashrc overwrites some vars
source /opt/openfoam/etc/bashrc

# source prefs again, overwriting the overwrites
source /opt/openfoam/etc/prefs.sh
```

## Run Allwmake

```bash
cd openfoam

# Executes both Allwmake and Allwmake-modules
./Allwmake -j

# ran 7/25 for just the main script
# ./Allwmake -prefix=false

# Plugins
/./Allwmake-plugins -j
```

# AmgX4Foam

## Hacks

AmgX4Foam's `src/csrMatrix/csrMatrix.h` was missing a `#include <cuda_runtime.h>` statement.

Out of the box, AmgX4Foam's default configuration options limit only a single CUDA arch code, so I changed the behavior of the `-cu` flag so that it is no longer responsible for passing the architecture. Instead, I replaced line 12 in the `wmake/cuda` file: `cuARCH    :=  -m64 -arch=sm_$(NVARCH)` with `cuARCH    :=  -m64 -gencode arch=compute_61,code=sm_61`. I still had to enable CUDA by including the flag though: `./Allwmake -cu 1`. 

Lines 17 in `src/Make/options` and 12 in `wmake/c++` were also removed to complete the build.

I also had to add 3 lines to the top of `src/Make/options`:

```properties
LIB_SRC = $(FOAM_SRC)
AMGX_INC = /opt/amgx/include
AMGX_LIB = /opt/amgx/lib
```

Finally, I had to add these two lines to `EXE_INC` and `LIB_LIBS` accordingly:

```properties
EXE_INC = \
    ...
    -I/usr/local/cuda/include \
    -I/opt/ompi/include \
    ...

LIB_LIBS = \
    ...
    -L/usr/local/cuda/lib64 -lcudart \
    ...
```

By default, this installs to the `FOAM_USER_LIBBIN` folder, whether or not that folder exists. `FOAM_USER_LIBBIN` is one of the non-standard directories using OpenFOAM's variable-based naming convention: `~/OpenFOAM/<user name>-<version>/platforms/<arch><compiler><precision><index size><third party folder>/lib`.

```bash
./Allwmake -cu 1
```

# Final `~/.bashrc` Settings

```bash
export CUDA_HOME=/usr/local/cuda
export PATH=/opt/scotch/bin:/opt/karypis/bin:/opt/fftw/bin:/opt/umpire/bin:/opt/paraview/bin:/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/opt/hwloc/bin:/opt/libevent/bin:/opt/ucx/bin:$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=/opt/petsc/lib:/opt/zoltan/lib:/opt/scotch/lib:/opt/karypis/lib:/opt/amgx/lib:/opt/kahip/lib:/opt/fftw/lib:/opt/hypre/lib:/opt/umpire/lib:/opt/paraview/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/opt/hwloc/lib:/opt/libevent/lib:/opt/ucx/lib:$CUDA_HOME/lib64

source /media/skooby/data/repos/OpenFOAM_com/OpenFOAM/etc/bashrc
```
