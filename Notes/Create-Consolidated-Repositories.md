# OpenMPI Suite (LibEvent, HWLoc, OpenPMIx, PRRTE, OMPI)

```bash
cd repos
mkdir OpenMPI && cd OpenMPI
git init -b main
gh repo create OpenMPI --private --source=. --remote=origin
git submodule add https://github.com/libevent/libevent.git
git submodule add https://github.com/open-mpi/hwloc.git
git submodule add https://github.com/openpmix/openpmix.git
git submodule add https://github.com/openpmix/prrte.git
git submodule add https://github.com/open-mpi/ompi.git
git add .
git commit -m "Added OpenMPI submodules"
git push -u origin main
```

# KarypisLabs Suite (GKlib, METIS, ParMETIS)

Build a consolidated repository containing MEITS, ParMETIS, and the GKLib dependency

```bash
cd repos
mkdir KarypisLabs && cd KarypisLab
git init -b main
gh repo create KarypisLab --private --source=. --remote=origin
git submodule add https://github.com/KarypisLab/GKlib.git
git submodule add https://github.com/KarypisLab/METIS.git
git submodule add https://github.com/KarypisLab/ParMETIS.git
git add .
git commit -m "Added KarypisLab tools GKLib, Metis, and ParMetis"
git push -u origin main
```

# OpenFOAM `.com` Suite (OpenFOAM, ThirdParty-common)

ThirdParty-common is of questionable value and may not be useful, given all the external tool configuration that is required. 

```bash
cd repos
mkdir OpenFOAM_com && cd OpenFOAM_com
git init -b main
gh repo create OpenFOAM_com --private --source=. --remote=origin
git submodule add https://gitlab.com/openfoam/core/OpenFOAM.git
git submodule add https://gitlab.com/openfoam/core/ThirdParty-common.git
git add .
git commit -m "Added OpenFOAM .com submodules"
git push -u origin main
```

# Consolidated External Tool Submodules [Folder](../Tools/)

```bash
# inside this repository
mkdir Tools && cd Tools
git submodule add https://github.com/openucx/ucx
git submodule add https://github.com/libevent/libevent.git
git submodule add https://github.com/open-mpi/hwloc.git
git submodule add https://github.com/openpmix/openpmix.git
git submodule add https://github.com/openpmix/prrte.git
git submodule add https://github.com/open-mpi/ompi.git
git submodule add https://github.com/Kitware/ParaView.git
git submodule add https://github.com/LLNL/Umpire.git
git submodule add https://github.com/hypre-space/hypre.git
git submodule add https://github.com/FFTW/fftw3.git
git submodule add https://github.com/KaHIP/KaHIP.git
git submodule add https://github.com/KarypisLab/GKlib.git
git submodule add https://github.com/KarypisLab/METIS.git
git submodule add https://github.com/KarypisLab/ParMETIS.git
git submodule add https://gitlab.inria.fr/scotch/scotch.git
git submodule add https://github.com/sandialabs/Zoltan
git submodule add https://github.com/amgx/amgx.git
git submodule add https://github.com/petsc/PETSc.git
git submodule add https://gitlab.com/openfoam/core/OpenFOAM.git
git submodule add https://gitlab.hpc.cineca.it/exafoam/foamExternalSolvers
git add .
git commit -m "All Tools"
```