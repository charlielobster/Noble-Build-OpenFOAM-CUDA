# Post-Install Environment Clean-Up and Folder Consolidation (DO NOT USE - In Progress)

Update Thur, July 30. Doing these steps break `Allwmake's wmkdepends` tool downstream. The safe bet is first installing `libAmgX4FOam.so` (instructions in the last section). Once that installation was complete, I consolidated my environment and generated folders, and locked down the installation by granting ownership to `root`. 

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

## `~/.bashrc` Clean-Up

Now, source a new version of `.bashrc` with the following contents:

```bash
# OpenFOAM environment variables
export CUDA_HOME=/usr/local/cuda
export WM_PROJECT=openfoam
export WM_PROJECT_DIR=/opt/$WM_PROJECT
export FOAM_APPBIN=$WM_PROJECT_DIR/bin
export FOAM_LIBBIN=$WM_PROJECT_DIR/lib

# Just setting these to main application folders for now
export FOAM_SITE_APPBIN=$FOAM_APPBIN
export FOAM_SITE_LIBBIN=$FOAM_LIBBIN

# Set to user's custom projects folder
export WM_PROJECT_USER_DIR=/home/user/My-OpenFOAM-Stuff
export FOAM_USER_APPBIN=$WM_PROJECT_USER_DIR/bin
export FOAM_USER_LIBBIN=$WM_PROJECT_USER_DIR/lib
export FOAM_RUN=$WM_PROJECT_USER_DIR/run
export WM_THIRD_PARTY_DIR=none

export PATH=$FOAM_USER_APPBIN:$FOAM_APPBIN:/opt/scotch/bin:/opt/karypis/bin:/opt/kahip/bin:/opt/fftw/bin:/opt/umpire/bin:/opt/paraview/bin:/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/opt/hwloc/bin:/opt/libevent/bin:/opt/ucx/bin:$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$FOAM_USER_LIBBIN:$FOAM_LIBBIN:/opt/petsc/lib:/opt/amgx/lib:/opt/zoltan/lib:/opt/scotch/lib:/opt/karypis/lib:/opt/kahip/lib:/opt/fftw/lib:/opt/hypre/lib:/opt/umpire/lib:/opt/paraview/lib:/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/opt/hwloc/lib:/opt/libevent/lib:/opt/ucx/lib:$CUDA_HOME/lib64
```

## Check Paths

From a new terminal, check the paths are resolved.

```bash
ldd /opt/openfoam/lib/libOpenFOAM.so 
ldd $FOAM_APPBIN/simpleFoam
# other tools, libs, etc...
```
Finally, lock the folder down:

```bash
sudo chown -R root:root /opt/openfoam
```
