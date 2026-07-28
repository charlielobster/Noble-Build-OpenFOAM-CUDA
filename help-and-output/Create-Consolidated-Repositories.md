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

