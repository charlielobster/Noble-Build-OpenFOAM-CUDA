# OpenFOAM Configuration Issues

Although built from a relatively simple set of commands, OpenFOAM uses a complex configuration and build process under the hood that automates the setting and revising multiple environment variables, and creates numerous new folders and paths. As part of the normal documented build process, users are directed to source the `etc/bashrc` in the root OpenFOAM directory to kick off the process. This `bashrc` file generated or changed 60 environment varaibles.

Some of the expected functionality is broken for my Ubuntu instance, especially pertaining to external tool mappings. OpenFOAM uses a `etc/config.sh/tool-name` convention, along with an associated, user-created `etc/prefs.sh` file for customization and overriding. However, this didn't always work for every tool, in my case. Instead, I wound up needing to both add a `prefs.sh` file and overwrite the values set in some of the `etc/config.sh/tool-name` files. In particular, I needed to both include a `prefs.sh` file, and override the `metis`, `kahip`, `scotch`, and `zoltan` files before I could build their associated artifacts (`libmetis.so`, `libkahip.so`, etc). It's mostly a black box to me, so I can't really explain why this is would be the case. I've included all the file edits here in the `OpenFOAM` folder, inside this repository, for your review.


## Installation Topology

Like all the external tools, this build assumes a target installation path of `opt/openfoam`. To begin, create a new folder in `/opt` called `openfoam`, and give temporary ownership to your regular user:

```bash
sudo mkdir /opt/openfoam
sudo chown username:username /opt/openfoam
cp -r repos/OpenFOAM/* /opt/openfoam
```

## Stale ParaView Libraries

I built the current version of ParaView after trying `v5.12.1`, the version used in the tarball associated with OpenFOAM `v2606` on OpenFOAM.com's website. Note that brittle dependencies exist between VTK and QT 5 in the only ParaView-aware OpenFOAM component, a module named PVFoamReader. PVFoamReader is also the only tool that requires HDF5 support. There is also an associated visualization component, an in-process off-screen renderer, that uses VTK libraries as well. It may have built on Haswell without issues.

Due to the issues with those incompatible ParaView libraries, rename two `Allwmake` files to `xxxAllwmake`, in the following `openfoam` locations:

- `src/plugins/bindings/vtk-hdf` 
- `src/modules/visualization`.


## Copy `OpenFOAM/etc` Contents

Form this repostory, copy the contents of `OpenFOAM/etc` into `/opt/openfoam/etc/`.

See the OpenFOAM External Tools Introduction for details and possible issues.

## Source `openfoam/etc/bashrc`

```bash
# sources prefs.sh, but later bashrc overwrites some vars
source /opt/openfoam/etc/bashrc

# source prefs again, overwriting the overwrites
source /opt/openfoam/etc/prefs.sh
```

## Run Allwmake

```bash
cd /opt/openfoam

# Executes both Allwmake and Allwmake-modules
./Allwmake -j

# Plugins
/./Allwmake-plugins -j
```

# Post-Install Environment Clean-Up and Consolidation

Once the installation is complete, I consolidated my environment and generated folders. 

```bash
# move everything that Allwmake built into ...
# one lib folder
mv $FOAM_USER_LIBBIN/* $FOAM_LIBBIN

# and one bin folder
mv $FOAM_USER_APPBIN/* $FOAM_APPBIN

# remove dummy libs
rm -rf $FOAM_LIBBIN/dummy

# don't use a separate folder for the ompi libs
mv $FOAM_LIBBIN/sys-openmpi/* $FOAM_LIBBIN

# clean up the now empty folder
rm -rf $FOAM_LIBBIN/sys-openmpi

# move these tools into the bin folder
mv $FOAM_LIBBIN/../../tools/linux64Gcc/* $FOAM_APPBIN/

# clean up the now empty folder
rm -rf $FOAM_LIBBIN/../../tools

# just move all the lib files into a folder named lib
mv $FOAM_LIBBIN /opt/openfoam/lib

# just move all the bin files into the existing bin folder
mv $FOAM_APPBIN/* /opt/openfoam/bin

# remove the now empty legacy paths
rm -rf /opt/openfoam/platforms

exit
```

Now, source a new version of `.bashrc` with the following contents:

```bash
# OpenFOAM environment variables
export CUDA_HOME=/usr/local/cuda
export WM_PROJECT=openfoam
export WM_PROJECT_DIR=/opt/$WM_PROJECT
export FOAM_APPBIN=$WM_PROJECT_DIR/bin
export FOAM_LIBBIN=$WM_PROJECT_DIR/lib
export FOAM_RUN=$WM_PROJECT_DIR/run

export FOAM_SITE_APPBIN=$FOAM_APPBIN
export FOAM_SITE_LIBBIN=$FOAM_LIBBIN
export FOAM_USER_APPBIN=$FOAM_APPBIN
export FOAM_USER_LIBBIN=$FOAM_LIBBIN
export WM_PROJECT_USER_DIR=$WM_PROJECT_DIR
export WM_THIRD_PARTY_DIR=none

export PATH=$FOAM_APPBIN:/opt/scotch/bin:/opt/karypis/bin:/opt/kahip/bin:/opt/fftw/bin:/opt/umpire/bin:/opt/paraview/bin:/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/opt/hwloc/bin:/opt/libevent/bin:/opt/ucx/bin:$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$FOAM_LIBBIN:/opt/petsc/lib:/opt/amgx/lib:/opt/zoltan/lib:/opt/scotch/lib:/opt/karypis/lib:/opt/kahip/lib:/opt/fftw/lib:/opt/hypre/lib:/opt/umpire/lib:/opt/paraview/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/opt/hwloc/lib:/opt/libevent/lib:/opt/ucx/lib:$CUDA_HOME/lib64
```

From a new terminal, check the paths are resolved.

```bash
ldd /opt/openfoam/lib/libOpenFOAM.so 
ldd $FOAM_APPBIN/simpleFoam
# etc
```
Finally, lock the folder down:

```bash
sudo chown root:root /opt/openfoam
```
