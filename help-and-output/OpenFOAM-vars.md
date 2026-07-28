# Important OpenFOAM Environment Variable Overrides

When you source `etc/bashrc` on top of your baseline environment, OpenFOAM populates your shell with approximately 60 new variables. 

## Core Project Directory Variables

* WM_PROJECT: Set to OpenFOAM.
* WM_PROJECT_VERSION: The exact version or release code of your test repository.
* WM_PROJECT_DIR: The primary path to your installation (source root full path).
* WM_PROJECT_USER_DIR: The user directory paths that map right back into your home space by default.
* FOAM_INST_DIR: The overarching installation folder containing the repository source trees.

## Compiler & Architecture Flags

* WM_ARCH: Set to linux64 based on Ubuntu
* WM_ARCH_OPTION: Flags denoting 64-bit address modes (64).
* WM_COMPILER: Your designated compiler toolset (Gcc).
* WM_COMPILER_TYPE: Flag identifying system vs. third-party tools (system).
* WM_COMPILE_OPTION: Compilation builds (like Opt for optimized).
* WM_OPTIONS: The concatenated naming string combining your build specs and hardcoding platform.
* WM_PRECISION_OPTION: Precision tracking variables (typically DP for double precision).
* WM_LABEL_SIZE: Sizing parameters for integers (32 or 64).
* WM_MPLIB: Your targeted MPI layer choice (SYSTEMOPENMPI).
* WM_OSTYPE: Set to POSIX. 

## Core OpenFOAM Binary Paths

* FOAM_API: The specific API version number used for linking external modules.
* FOAM_APP: Tracks the primary applications directory.
* FOAM_SOLVERS: Path targeting standard built-in numerical solvers.
* FOAM_UTILITIES: Path pointing directly to prepackaged utility programs.
* FOAM_SRC: Folder variable pointing straight to the core C++ libraries source code tree.
* FOAM_RUN: The default location targeting your user simulation run cases folder.

## Executable and Library Targets (Where variables bloat PATH)

* FOAM_APPBIN: Core location for compiled solver binaries (.../platforms/linux64GccDPInt32Opt/bin).
* FOAM_LIBBIN: Core location for compiled primary shared libraries (.../platforms/linux64GccDPInt32Opt/lib).
* FOAM_EXT_LIBBIN: Directory path specifically for compiling external library modules.
* FOAM_USER_APPBIN: Target folder where your custom user-compiled binaries dump into.
* FOAM_USER_LIBBIN: Target folder where your custom user-compiled shared object files dump into.
* FOAM_SITE_APPBIN: Site-wide global cluster destination for custom tools.
* FOAM_SITE_LIBBIN: Site-wide global cluster destination for custom libraries.

## Third-Party Component Paths

* WM_THIRD_PARTY_DIR: Path directing to the ThirdParty source directory stack.
* CGAL_ARCH_PATH, BOOST_ARCH_PATH, SCOTCH_ARCH_PATH, METIS_ARCH_PATH, FFTW_ARCH_PATH, etc