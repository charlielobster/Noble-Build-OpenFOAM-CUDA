# Overrides by Functional Block

# Mpi and Memory Management

# MPI
export WM_MPLIB="SYSTEMOPENMPI"
export MPI_ARCH_PATH="/opt/ompi"

# Umpire
export UMPIRE_VERSION="2025.12.0"
export UMPIRE_ARCH_PATH="/opt/umpire"


# Linear Algebra Solvers

# Hypre 
export HYPRE_VERSION="3.1.0"
export HYPRE_ARCH_PATH="/opt/hypre"

# PETSc 
export PETSC_VERSION="3.25.3"
export PETSC_ARCH_PATH="/opt/petsc"


# Mesh Decomposition and Partitioning

# Scotch 
export SCOTCH_VERSION="7.0.12"
export SCOTCH_ARCH_PATH="/opt/scotch"

# Zoltan
export ZOLTAN_VERSION="3.901"
export ZOLTAN_ARCH_PATH="/opt/zoltan"

# METIS
export METIS_VERSION="5.2.1"
export METIS_ARCH_PATH="/opt/karypis"

# KaHIP 
export KAHIP_VERSION="3.17"
export KAHIP_ARCH_PATH="/opt/kahip"


# Geometry Engines, Mesh Tools, and Transforms

# CGAL 
# using default cgal - see build notes
export CGAL_VERSION="5.6"
export CGAL_ARCH_PATH="/usr"

export BOOST_VERSION="1.83.0"
export BOOST_ARCH_PATH="/usr"

# FFTW 
export FFTW_VERSION="3.3.11"
export FFTW_ARCH_PATH="/opt/fftw"

# MGridGen
# legacy tool - safe to ignore
export MGRIDGEN_VERSION="none"


# Data Input and Output

# hdf5 
export HDF5_VERSION="none"

# adios2
export ADIOS2_VERSION="none"


# Visualization and Legacy Wrappers

# ParaView
export ParaView_VERSION="6.1"
export ParaView_ARCH_PATH="/opt/paraview"

# paraview-system
# just ignore

# VTK
export VTK_VERSION="9.7"
export VTK_ARCH_PATH="/opt/paraview"

# ccmio 
# not used by this system
export CCMIO_VERSION="none"
