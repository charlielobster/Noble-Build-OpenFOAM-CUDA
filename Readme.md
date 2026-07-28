# The Noble Build OpenFOAM CUDA Repository

This repository thoroughly explains how to configure, build, and install an optimized, full-suite OpenFOAM instance from source on most CUDA-enabled devices running Ubuntu Noble v24.04. The assumption is that the device is potentially part of a cluster, and so OpenMPI and UCX support is presumed. 

The walkthrough includes configuration from source of most of the numerous external tools OpenFOAM has awareness of, such as PETSc, METIS, Scotch, FFTW, etc - as well as all the lower-level or CUDA-aware tools, such as UCX, OpenMPI, Umpire, and AMGX.

The build notes have been tested on two devices covering a wide range of capabilities, and should work for most Nvidia GPUs manufactured in the last decade or so. Both the tested devices are named after their respective CPUs. The older device is named Haswell, and it has a 3x1080 Ti GPU set-up using compute architecture `sm_61`. The newer device is named Threadripper (or TR), and it has a dual 5090, 3090 Ti set-up, so TR requires multiple arch flags (`sm_86`, and `sm_120`) for several compilation steps.

To get started, read the consolidated [Noble-Build-Notes.md](Noble-Build-Notes.md)
