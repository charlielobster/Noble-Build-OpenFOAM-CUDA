# Desperate Last Minute Changes

## 7/25 Status Update

In what should come as no surprise, the initial attempt at a completely external installation of PETSc and its myriad of tools was not successful. 

On the one had, we can `./configure` PETSc `--with-download` basically everything, and this builds a perfectly functional copy of PETSc that passes all the tests and all the tools are lumped together into a single lib folder, and on the other, we can use `--with-dir` flags for all the tools, which will keep everything isolated, but it fails 2 tests.

Essentially there are two approaches to consider and I am coming at it from two ends until they converge. I know I can retain control of UCX, but the breaking point appears to be OpenMPI. Since AMGX uses an MPI compiler, this breaks a lot downstream.

The big concern about a PETSc-configured stack is the ability to add CUDA architectures to the components that require them. Hypre is one such tool, as is Umpire, AMGX, a few tools like Scotch, Zoltan, and AmgX4Foam also like to know CUDA arches.


```bash
cd petsc
```

# 7/25.2

Identified an issue involving communcation between OpenMPI and UCX. 


## Going to try this next:

```bash
# Works after removing scotch metis.h insert
./configure --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --with-ucx-dir=/opt/ucx --with-mpi-dir=/opt/ompi --with-amgx-dir=/opt/amgx --with-hwloc-dir=/opt/hwloc --with-umpire-dir=/opt/umpire --with-scotch-dir=/opt/scotch --with-ptscotch-dir=/opt/scotch --with-fftw-dir=/opt/fftw --with-zoltan-dir=/opt/zoltan --with-hypre-dir=/opt/hypre --with-parmetis-dir=/opt/karypis --with-metis-dir=/opt/karypis
```


## This Works!*
```bash
# *With openmpi-mca-params.conf chanages, Success!
./configure --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --with-ucx-dir=/opt/ucx --with-mpi-dir=/opt/ompi --with-amgx-dir=/opt/amgx --with-hwloc-dir=/opt/hwloc --with-umpire-dir=/opt/umpire --with-scotch-dir=/opt/scotch --with-ptscotch-dir=/opt/scotch --with-fftw-dir=/opt/fftw --with-zoltan-dir=/opt/zoltan --with-hypre-dir=/opt/hypre --download-parmetis=1 --download-metis=1 --download-metis-use-doubleprecision=1 
```



# 7/25.1
# Status Update: Major issues configuring PETSc with stack tools

At a high-level, we want to take configuration control away from PETSc as much as possible so that OpenFOAM can also do its thing with these tools. In particular, PETSc really shits the bed over METIS and Hypre misconfiguration.


```bash
./configure --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --with-ucx-dir=/opt/ucx --download-openmpi=1 --download-amgx=1 --with-hwloc-dir=/opt/hwloc --with-umpire-dir=/opt/umpire --download-ptscotch=1 --download-parmetis=1 --download-openmpi=1 --download-zoltan=1 --download-fftw=1 --download-hypre=1 --with-hypre-gpu-arch="86" --download-hypre-openmp --download-metis=1 --download-metis-use-doubleprecision=1 





# New Last Minute Try 7/25

# Completed full install passed all tests but only UCX is external.
./configure --with-openmp=1 --with-bison=1 --with-boost --with-cuda=1 --with-ucx-dir=/opt/ucx --download-amgx=1 --download-ptscotch=1 --download-parmetis=1 --download-openmpi=1 --download-zoltan=1 --download-umpire=1 --download-fftw=1 --download-hypre=1 --with-hypre-gpu-arch="86" --download-hypre-openmp --download-hwloc=1 --download-metis=1 --download-metis-use-doubleprecision=1 

```


# Sketches

```bash
# 

sudo ./configure --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --with-ucx-dir=/opt/ucx --with-hwloc-dir=/opt/hwloc --with-mpi-dir=/opt/ompi --with-amgx-dir=/opt/amgx --download-umpire=1 --download-hypre=1 --download-hypre-openmp --download-fftw=1 --download-scotch=1 --download-ptscotch=1 --download-parmetis=1 --download-zoltan=1 --download-metis=1 --download-metis-use-doubleprecision=1

sudo ./configure --prefix=/opt/petsc --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --with-ucx-dir=/opt/ucx --with-hwloc-dir=/opt/hwloc --with-mpi-dir=/opt/ompi --with-amgx-dir=/opt/amgx --with-umpire-dir=/opt/umpire --with-hypre-dir=/opt/hypre --with-fftw-dir=/opt/fftw --download-scotch=1 --download-ptscotch=1 --download-parmetis=1 --download-zoltan=1 --download-metis=1 --download-metis-use-doubleprecision=1

sudo make PETSC_DIR=/media/skooby/data/repos/petsc PETSC_ARCH=arch-linux-c-debug all

sudo make PETSC_DIR=/media/skooby/data/repos/petsc PETSC_ARCH=arch-linux-c-debug install


./configure --with-openmp --with-boost=1 --with-hwloc-dir=/opt/hwloc --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-fftw-dir=/opt/fftw --with-cuda-dir=/usr/local/cuda --with-umpire-dir=/opt/umpire --with-hypre-dir=/opt/hypre --download-metis=1 --download-metis-use-doubleprecision=1 --download-parmetis=1 --download-zoltan=1 CUDAFLAGS+"-arch=compute_86,code=sm_86 -arch=compute_120,code=sm_120"


./configure --with-openmp=1 --with-bison=1 --with-boost=1 --with-cuda=1 --download-ucx=1 --download-ptscotch=1 --download-parmetis=1 --download-openmpi=1 --download-zoltan=1 --download-umpire=1 --download-amgx=1 --download-fftw=1 --download-hypre=1 --download-hypre-openmp --download-hwloc=1 --download-metis=1 --download-metis-use-doubleprecision=1

# Start from ucx (no OpenMPI)

./configure --with-openmp=1 --with-bison=1 --with-boost --with-cuda=1 --download-ucx=1 --download-ptscotch=1 --download-parmetis=1 --download-openmpi=1 --download-zoltan=1 --download-umpire=1 --download-amgx=1 --download-fftw=1 --download-hypre=1 --download-hypre-openmp --download-hwloc=1 --download-metis=1 --download-metis-use-doubleprecision=1