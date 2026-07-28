# The Noble Build 
Last Updated Tuesday, July 28, 2026

## Configure a CUDA-Aware HPC Node for OpenFOAM

This repository documents the configuration, build, and installation of an optimized, full-suited OpenFOAM instance from source repositories on most CUDA-enabled PCs running Ubuntu Noble v24.04. The presumption is that the device is potentially part of a HPC cluster, thus OpenMPI and UCX support are considered mandatory requirements. 

This repository includes configuration from source of many external tools OpenFOAM has awareness support for, such as PETSc, METIS, Scotch, FFTW, etc - as well as parallel and CUDA-aware tools such as UCX, OpenMPI, Umpire, Hypre, and AMGX.

These consolidated [Noble Build Notes](Noble-Build-Notes.md) have been tested on two PCs covering a broad range of capabilities, and should work for most Nvidia GPUs manufactured in the last decade. Both PCs are named after their respective CPUs, Haswell. The older device, Haswell, has a triple 1080 Ti GPU set-up, and exclusively requires a compute architecture `sm_61` flag. Meanwhile, Threadripper (or TR) has a dual 5090, 3090 Ti set-up, and so requires mixed architecture flags (both `sm_86` and `sm_120`) for several compilation steps. 

Note that although Haswell and Threadripper both have their [own build notes](Build-Archive/), these are in fact just legacy versions of the consolidated notes, and are mostly there for my own reference.

This repository also includes folders containing some [`OpenFOAM/etc`](OpenFOAM/etc/) path overrides, an [Output](Output/) folder containing a few helpful reference files, and a [Notes](Notes/) folder documenting a few specific issues that came up during the builds. 

## Repositories

Forks and/or clones were made of the following repositories:

- https://github.com/libevent/libevent.git
- https://github.com/open-mpi/hwloc.git
- https://github.com/openpmix/openpmix.git
- https://github.com/openpmix/prrte.git
- https://github.com/open-mpi/ompi.git
- https://github.com/KarypisLab/GKlib.git
- https://github.com/KarypisLab/METIS.git
- https://github.com/KarypisLab/ParMETIS.git
- https://gitlab.com/openfoam/core/OpenFOAM.git
- https://gitlab.com/openfoam/core/ThirdParty-common.git
- https://github.com/openucx/ucx
- https://github.com/Kitware/ParaView.git
- https://github.com/LLNL/Umpire.git
- https://github.com/amgx/amgx.git

## Prerequisites

The complete list of prerequisite tools to acquire using `sudo apt get`:

```text
cuda-toolkit-12-8 build-essential automake autoconf pkg-config libtool perl python3 python3-pip flex bison gfortran cmake ninja-build libtbb-dev mesa-common-dev mesa-utils freeglut3-dev xsltproc libxkbcommon-dev qt6-5compat-dev qt6-base-dev qt6-tools-dev qt6-svg-dev libcgal-dev libgmp-dev libmpfr-dev libboost-system-dev libopenblas-dev liblapack-dev
```

Note that I install these in a particular sequence in the builds.

## Topology

The tools and applications are placed in `root`-owned folders inside `/opt`. 

Upon completion, the topology is as follows:

```bash
ls /opt
amgx  hwloc  kahip    libevent  ompi      paraview  pmix   scotch  umpire
fftw  hypre  karypis  nvidia    openfoam  petsc     prrte  ucx     zoltan
```
