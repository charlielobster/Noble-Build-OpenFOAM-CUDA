# `OpenFOAM/etc/bashrc` Environment Variables

Some values have been pre- and post- set around calls to `/etc/bashrc`. See config issues for details.


```bash
# Useful trick for clearing environment variables
exec env -i bash --norc --noprofile
```

```bash
# output has been edited

bash-5.2$ source ~/repos/OpenFOAM/etc/bashrc

bash-5.2$ env | sort
ADIOS2_VERSION=none
BOOST_ARCH_PATH=/usr
BOOST_VERSION=1.83.0
CCMIO_VERSION=none
CGAL_ARCH_PATH=/usr
CGAL_VERSION=5.6
FFTW_ARCH_PATH=/opt/fftw
FFTW_VERSION=3.3.11
FOAM_API=2606
FOAM_APP=/home/user/repos/OpenFOAM/applications
FOAM_APPBIN=/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/bin
FOAM_ETC=/home/user/repos/OpenFOAM/etc
FOAM_EXT_LIBBIN=/home/user/repos/ThirdParty-common/platforms/linux64GccDPInt32/lib
FOAM_LIBBIN=/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib
FOAM_MPI=sys-openmpi
FOAM_RUN=/OpenFOAM/user-v2606/run
FOAM_SITE_APPBIN=/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin
FOAM_SITE_LIBBIN=/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib
FOAM_SOLVERS=/home/user/repos/OpenFOAM/applications/solvers
FOAM_SRC=/home/user/repos/OpenFOAM/src
FOAM_TUTORIALS=/home/user/repos/OpenFOAM/tutorials
FOAM_USER_APPBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin
FOAM_USER_LIBBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib
FOAM_UTILITIES=/home/user/repos/OpenFOAM/applications/utilities
HDF5_VERSION=none
HYPRE_ARCH_PATH=/opt/hypre
HYPRE_VERSION=3.1.0
KAHIP_ARCH_PATH=/opt/kahip
KAHIP_VERSION=3.17
LD_LIBRARY_PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib:/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib:/home/user/repos/ThirdParty-common/platforms/linux64GccDPInt32/lib/sys-openmpi:/home/user/repos/ThirdParty-common/platforms/linux64GccDPInt32/lib:/opt/fftw/lib:/usr/lib64:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/dummy
METIS_ARCH_PATH=/opt/karypis
METIS_VERSION=5.2.1
MGRIDGEN_VERSION=none
PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin:/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/bin:/home/user/repos/OpenFOAM/bin:/home/user/repos/OpenFOAM/wmake:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
PETSC_ARCH_PATH=/opt/petsc
PETSC_VERSION=3.25.3
ParaView_VERSION=none
SCOTCH_ARCH_PATH=/opt/scotch
SCOTCH_VERSION=7.0.12
UMPIRE_ARCH_PATH=/opt/umpire
UMPIRE_VERSION=2025.12.0
VTK_VERSION=none
WM_ARCH=linux64
WM_COMPILER=Gcc
WM_COMPILER_LIB_ARCH=64
WM_COMPILER_TYPE=system
WM_COMPILE_OPTION=Opt
WM_DIR=/home/user/repos/OpenFOAM/wmake
WM_LABEL_OPTION=Int32
WM_LABEL_SIZE=32
WM_MPLIB=SYSTEMOPENMPI
WM_OPTIONS=linux64GccDPInt32Opt
WM_PRECISION_OPTION=DP
WM_PROJECT=OpenFOAM
WM_PROJECT_DIR=/home/user/repos/OpenFOAM
WM_PROJECT_USER_DIR=/OpenFOAM/user-v2606
WM_PROJECT_VERSION=v2606
WM_THIRD_PARTY_DIR=/home/user/repos/ThirdParty-common
ZOLTAN_ARCH_PATH=/opt/zoltan
ZOLTAN_VERSION=3.901
```

# FOAM Prefix

## Core OpenFOAM Binary Paths

* `FOAM_API`: The specific API version number used for linking external modules.
* `FOAM_APP`: Tracks the primary applications directory.
* `FOAM_SOLVERS`: Path targeting standard built-in numerical solvers.
* `FOAM_UTILITIES`: Path pointing to prepackaged utility programs.
* `FOAM_SRC`: Folder variable pointing to the core C++ libraries source code tree.
* `FOAM_RUN`: The default location targeting the user simulation run cases folder.

## Executable and Library Targets (Where variables bloat PATH)

* `FOAM_APPBIN`: Core location for compiled solver binaries (.../platforms/linux64GccDPInt32Opt/bin).
* `FOAM_LIBBIN`: Core location for compiled primary shared libraries (.../platforms/linux64GccDPInt32Opt/lib).
* `FOAM_EXT_LIBBIN`: Directory path specifically for compiling external library modules.
* `FOAM_USER_APPBIN`: Target folder for custom user-compiled binaries.
* `FOAM_USER_LIBBIN`: Target folder for custom user-compiled shared object files.
* `FOAM_SITE_APPBIN`: Site-wide global cluster destination for custom tools.
* `FOAM_SITE_LIBBIN`: Site-wide global cluster destination for custom libraries.


```bash
FOAM_API=2606
FOAM_APP=/home/user/repos/OpenFOAM/applications
FOAM_APPBIN=/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/bin
FOAM_ETC=/home/user/repos/OpenFOAM/etc
FOAM_EXT_LIBBIN=/home/user/repos/ThirdParty-common/platforms/linux64GccDPInt32/lib
FOAM_LIBBIN=/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib
FOAM_MPI=sys-openmpi
FOAM_RUN=/OpenFOAM/user-v2606/run
FOAM_SITE_APPBIN=/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin
FOAM_SITE_LIBBIN=/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib
FOAM_SOLVERS=/home/user/repos/OpenFOAM/applications/solvers
FOAM_SRC=/home/user/repos/OpenFOAM/src
FOAM_TUTORIALS=/home/user/repos/OpenFOAM/tutorials
FOAM_USER_APPBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin
FOAM_USER_LIBBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib
FOAM_UTILITIES=/home/user/repos/OpenFOAM/applications/utilities
```

# WM Prefix

## Core Project Directory Variables

* `WM_PROJECT`: Set to OpenFOAM.
* `WM_PROJECT_VERSION`: The exact version or release code of the test repository.
* `WM_PROJECT_DIR`: The primary path to the installation (source root full path).
* `WM_PROJECT_USER_DIR`: The user directory paths that map right back into the home space by default.

## Compiler & Architecture Flags

* `WM_ARCH`: Set to linux64 based on Ubuntu
* `WM_COMPILER`: the designated compiler toolset (Gcc).
* `WM_COMPILER_TYPE`: Flag identifying system vs. third-party tools (system).
* `WM_COMPILE_OPTION`: Compilation builds (like Opt for optimized).
* `WM_OPTIONS`: Concatenated naming string combining the build specs.
* `WM_PRECISION_OPTION:` Precision tracking variables (typically DP for double precision).
* `WM_LABEL_SIZE`: Sizing parameters for integers (32 or 64).
* `WM_MPLIB`: the targeted MPI layer choice (SYSTEMOPENMPI).

```bash
WM_ARCH=linux64
WM_COMPILER=Gcc
WM_COMPILER_LIB_ARCH=64
WM_COMPILER_TYPE=system
WM_COMPILE_OPTION=Opt
WM_DIR=/home/user/repos/OpenFOAM/wmake
WM_LABEL_OPTION=Int32
WM_LABEL_SIZE=32
WM_MPLIB=SYSTEMOPENMPI
WM_OPTIONS=linux64GccDPInt32Opt
WM_PRECISION_OPTION=DP
WM_PROJECT=OpenFOAM
WM_PROJECT_DIR=/home/user/repos/OpenFOAM
WM_PROJECT_USER_DIR=/OpenFOAM/user-v2606
WM_PROJECT_VERSION=v2606
WM_THIRD_PARTY_DIR=/home/user/repos/ThirdParty-common
```

# Alterations to Core Variables

```bash
PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin:/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/bin:/home/user/repos/OpenFOAM/bin:/home/user/repos/OpenFOAM/wmake:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
LD_LIBRARY_PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib:/home/user/repos/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib:/home/user/repos/ThirdParty-common/platforms/linux64GccDPInt32/lib/sys-openmpi:/home/user/repos/ThirdParty-common/platforms/linux64GccDPInt32/lib:/opt/fftw/lib:/usr/lib64:/home/user/repos/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/dummy
```

# Third Party Tools

```bash
ADIOS2_VERSION=none
BOOST_ARCH_PATH=/usr
BOOST_VERSION=1.83.0
CCMIO_VERSION=none
CGAL_ARCH_PATH=/usr
CGAL_VERSION=5.6
FFTW_ARCH_PATH=/opt/fftw
FFTW_VERSION=3.3.11
HDF5_VERSION=none
HYPRE_ARCH_PATH=/opt/hypre
HYPRE_VERSION=3.1.0
KAHIP_ARCH_PATH=/opt/kahip
KAHIP_VERSION=3.17
METIS_ARCH_PATH=/opt/karypis
METIS_VERSION=5.2.1
MGRIDGEN_VERSION=none
PETSC_ARCH_PATH=/opt/petsc
PETSC_VERSION=3.25.3
ParaView_VERSION=none
SCOTCH_ARCH_PATH=/opt/scotch
SCOTCH_VERSION=7.0.12
UMPIRE_ARCH_PATH=/opt/umpire
UMPIRE_VERSION=2025.12.0
VTK_VERSION=none
ZOLTAN_ARCH_PATH=/opt/zoltan
ZOLTAN_VERSION=3.901
```