# The Noble Build 
Last Updated Tuesday, July 28, 2026

## Configure a CUDA-Aware HPC Node for OpenFOAM

This repository documents the configuration, build, and installation of an optimized, full-suite OpenFOAM instance from source on most CUDA-enabled devices running Ubuntu Noble v24.04. The presumption is that the device is potentially part of a HPC cluster, thus OpenMPI and UCX support are considered requirments. 

That includes configuration from source of most of the numerous external tools OpenFOAM has awareness of, such as PETSc, METIS, Scotch, FFTW, etc - as well as all the lower-level or CUDA-aware tools, such as UCX, OpenMPI, Umpire, and AMGX.

So far, the [build notes](Noble-Build-Notes.md) have been tested on two devices covering a wide range of capabilities, and should work for most Nvidia GPUs manufactured in the last decade. Both devices, named Haswell and Threadripper (or TR), are named after their respective CPUs. The older device, Haswell, has a triple 1080 Ti GPU set-up, and uses compute architecture `sm_61`. Meanwhile, TR has a dual 5090, 3090 Ti set-up, and so requires a mixed arch flag (both `sm_86`, and `sm_120`) for several compilation steps.

The repository includes folders containing some OpenFOAM source path overrides in the `etc` folder, an Output folder containing a few helpful reference files, and a Notes folder documenting any specific issues worth discussing about the builds. 

## Topology

All the tools and applications used for this configuration are placed in root-owned folders inside `/opt`. Upon completion, the topology should appear as follows:

```bash
ls /opt
amgx  hwloc  kahip    libevent  ompi      paraview  pmix   scotch  umpire
fftw  hypre  karypis  nvidia    openfoam  petsc     prrte  ucx     zoltan
```
