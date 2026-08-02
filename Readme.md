# The Noble Build 
Last Updated Wednesday, July 29, 2026

## Configure and Build CUDA-Aware HPC Node for OpenFOAM on Ubuntu Noble

This repository documents the configuration, build, and installation from source repositories of an optimized, CUDA-enabled, high-performance computing (HPC) device running OpenFOAM's full suite of tools on Ubuntu Noble v24.04. The PC is presumed to potentially be a node in a super-computing cluster. These include configuration from source of external tools OpenFOAM has awareness support for, such as PETSc, METIS, Scotch, FFTW, etc - along with parallel-computing and CUDA-aware tools such as UCX, OpenMPI, Umpire, Hypre, and AMGX.

These consolidated [Noble Build Notes](Noble-Build-Notes.md) have been tested on two PCs covering a broad range of capabilities, and should work for most Nvidia GPUs manufactured in the last decade. Both PCs are named after their respective CPUs. The older device, Haswell, has a triple 1080 Ti GPU set-up, and exclusively requires a compute architecture `sm_61` flag. Meanwhile, Threadripper (or TR) has a dual 5090, 3090 Ti set-up, and so requires mixed architecture flags (`sm_86` and `sm_120`) for several compilation steps. 

Note that although Haswell and Threadripper both have their [own build notes](Build-Archive/), these are legacy versions of the consolidated notes.

This repository also includes folders containing some [`OpenFOAM/etc`](OpenFOAM/etc/) path overrides, an [Output](Output/) folder containing a few helpful reference files, and a [Notes](Notes/) folder documenting a few specific issues that came up during the builds. 

## Repositories

Forks and/or clones were made of the following repositories:

- https://github.com/openucx/ucx
- https://github.com/libevent/libevent.git
- https://github.com/open-mpi/hwloc.git
- https://github.com/openpmix/openpmix.git
- https://github.com/openpmix/prrte.git
- https://github.com/open-mpi/ompi.git
- https://github.com/Kitware/ParaView.git
- https://github.com/LLNL/Umpire.git
- https://github.com/hypre-space/hypre.git
- https://github.com/FFTW/fftw3.git
- https://github.com/KaHIP/KaHIP.git
- https://github.com/KarypisLab/GKlib.git
- https://github.com/KarypisLab/METIS.git
- https://github.com/KarypisLab/ParMETIS.git
- https://gitlab.inria.fr/scotch/scotch.git
- https://github.com/sandialabs/Zoltan
- https://github.com/NVIDIA/amgx.git
- https://github.com/petsc/PETSc.git
- https://gitlab.com/openfoam/core/OpenFOAM.git
- https://gitlab.hpc.cineca.it/exafoam/foamExternalSolvers

The complete set of tools are collected as submodules in the [Tools folder](/Tools).

## Prerequisites

The complete list of prerequisite tools to acquire using `sudo apt get`:

```text
cuda-toolkit-12-8 build-essential automake autoconf pkg-config libtool perl python3 python3-pip flex bison gfortran cmake ninja-build libtbb-dev mesa-common-dev mesa-utils freeglut3-dev xsltproc libxkbcommon-dev qt6-5compat-dev qt6-base-dev qt6-tools-dev qt6-svg-dev libcgal-dev libgmp-dev libmpfr-dev libboost-system-dev libopenblas-dev liblapack-dev
```
Note that I did not install these all at once, but when needed to support the build.

## Installation Folder Topology

The tools and applications are placed in `root`-owned folders inside `/opt`. Upon completion of the build notes, the topology is as follows:

```bash
ls /opt
amgx  hwloc  kahip    libevent  ompi      paraview  pmix   scotch  umpire
fftw  hypre  karypis  nvidia    openfoam  petsc     prrte  ucx     zoltan
```
