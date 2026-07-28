# The Noble Build
Create A CUDA-Aware OpenFOAM HPC Node

This repository documents the configuration, build, and installation of an optimized, full-suite OpenFOAM instance from source on most CUDA-enabled devices running Ubuntu Noble v24.04. The presumption is that the device is potentially part of a HPC cluster, thus OpenMPI and UCX support are considered requirments. 

That includes configuration from source of most of the numerous external tools OpenFOAM has awareness of, such as PETSc, METIS, Scotch, FFTW, etc - as well as all the lower-level or CUDA-aware tools, such as UCX, OpenMPI, Umpire, and AMGX.

So far, the [build notes](Noble-Build-Notes.md) have been tested on two devices covering a wide range of capabilities, and should work for most Nvidia GPUs manufactured in the last decade or so. Both devices, named Haswell and Threadripper (or TR), are named after their respective CPUs. The older device Haswell, has a triple 1080 Ti GPU set-up and uses compute architecture `sm_61`. TR has a dual 5090, 3090 Ti set-up, and so requires a mixed arch flag (both `sm_86`, and `sm_120`) for several compilation steps.
