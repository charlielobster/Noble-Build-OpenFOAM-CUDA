```bash
# Useful trick for clearing environment variables
exec env -i bash --norc --noprofile
```

```bash
# output has been edited

bash-5.2$ source ~/repos/OpenFOAM_com_build_test/OpenFOAM/etc/bashrc

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
FOAM_APP=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/applications
FOAM_APPBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/bin
FOAM_ETC=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/etc
FOAM_EXT_LIBBIN=/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common/platforms/linux64GccDPInt32/lib
FOAM_LIBBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib
FOAM_MPI=sys-openmpi
FOAM_RUN=/OpenFOAM/user-v2606/run
FOAM_SITE_APPBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin
FOAM_SITE_LIBBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib
FOAM_SOLVERS=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/applications/solvers
FOAM_SRC=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/src
FOAM_TUTORIALS=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/tutorials
FOAM_USER_APPBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin
FOAM_USER_LIBBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib
FOAM_UTILITIES=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/applications/utilities
HDF5_VERSION=none
HYPRE_ARCH_PATH=/opt/hypre
HYPRE_VERSION=3.1.0
KAHIP_ARCH_PATH=/opt/kahip
KAHIP_VERSION=3.17
LD_LIBRARY_PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib:/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common/platforms/linux64GccDPInt32/lib/sys-openmpi:/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common/platforms/linux64GccDPInt32/lib:/opt/fftw/lib:/usr/lib64:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/dummy
METIS_ARCH_PATH=/opt/karypis
METIS_VERSION=5.2.1
MGRIDGEN_VERSION=none
PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/wmake:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
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
WM_DIR=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/wmake
WM_LABEL_OPTION=Int32
WM_LABEL_SIZE=32
WM_MPLIB=SYSTEMOPENMPI
WM_OPTIONS=linux64GccDPInt32Opt
WM_PRECISION_OPTION=DP
WM_PROJECT=OpenFOAM
WM_PROJECT_DIR=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM
WM_PROJECT_USER_DIR=/OpenFOAM/user-v2606
WM_PROJECT_VERSION=v2606
WM_THIRD_PARTY_DIR=/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common
ZOLTAN_ARCH_PATH=/opt/zoltan
ZOLTAN_VERSION=3.901
```

# FOAM

```bash
FOAM_API=2606
FOAM_APP=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/applications
FOAM_APPBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/bin
FOAM_ETC=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/etc
FOAM_EXT_LIBBIN=/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common/platforms/linux64GccDPInt32/lib
FOAM_LIBBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib
FOAM_MPI=sys-openmpi
FOAM_RUN=/OpenFOAM/user-v2606/run
FOAM_SITE_APPBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin
FOAM_SITE_LIBBIN=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib
FOAM_SOLVERS=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/applications/solvers
FOAM_SRC=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/src
FOAM_TUTORIALS=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/tutorials
FOAM_USER_APPBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin
FOAM_USER_LIBBIN=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib
FOAM_UTILITIES=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/applications/utilities
```

# WM

```bash
WM_ARCH=linux64
WM_COMPILER=Gcc
WM_COMPILER_LIB_ARCH=64
WM_COMPILER_TYPE=system
WM_COMPILE_OPTION=Opt
WM_DIR=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/wmake
WM_LABEL_OPTION=Int32
WM_LABEL_SIZE=32
WM_MPLIB=SYSTEMOPENMPI
WM_OPTIONS=linux64GccDPInt32Opt
WM_PRECISION_OPTION=DP
WM_PROJECT=OpenFOAM
WM_PROJECT_DIR=/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM
WM_PROJECT_USER_DIR=/OpenFOAM/user-v2606
WM_PROJECT_VERSION=v2606
WM_THIRD_PARTY_DIR=/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common
```

# changes to core vars

```bash
PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/bin:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/wmake:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
LD_LIBRARY_PATH=/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/site/2606/platforms/linux64GccDPInt32Opt/lib:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/sys-openmpi:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib:/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common/platforms/linux64GccDPInt32/lib/sys-openmpi:/home/skooby/repos/OpenFOAM_com_build_test/ThirdParty-common/platforms/linux64GccDPInt32/lib:/opt/fftw/lib:/usr/lib64:/home/skooby/repos/OpenFOAM_com_build_test/OpenFOAM/platforms/linux64GccDPInt32Opt/lib/dummy
```

# third party tool locations

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