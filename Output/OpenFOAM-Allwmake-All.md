# ./Allwmake -j

```text
./Allwmake -j
Compiling enabled on 64 cores
gcc=/usr/bin/gcc
clang=
mpirun=/opt/ompi/bin/mpirun
make=/usr/bin/make
cmake=/usr/bin/cmake
wmake=/home/user/repos/OpenFOAM_com/OpenFOAM/wmake/wmake
m4=/usr/bin/m4
flex=/usr/bin/flex

compiler=/usr/bin/g++
g++ (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
cxxflags="-std=c++17 -m64 -pthread -DOPENFOAM=2606 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wold-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -Wno-attributes -Wno-unknown-pragmas -O3 -DNoRepository -ftemplate-depth=1000 -fPIC"

========================================
2026-07-25 22:10:25 -0400
Starting compile OpenFOAM Allwmake
  Gcc system compiler []
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
========================================

built wmake-bin (linux64Gcc)
Skip ThirdParty (no Allwmake* files)
========================================
Compile OpenFOAM libraries
========================================
    ln: OpenFOAM/lnInclude
    ln: OSspecific/POSIX/lnInclude
wmake libo (POSIX)
wmake -no-openmp dummy (mpi=SYSTEMOPENMPI)
wmake dummy
wmake -no-openmp (mpi=SYSTEMOPENMPI:sys-openmpi)
wmake mpi
wmake OpenFOAM
wmake fileFormats
wmake surfMesh
wmake meshTools
wmake finiteArea
wmake finiteVolume
wmake fused/finiteVolume
wmake mesh/blockMesh
wmake mesh/extrudeModel
wmake dynamicMesh
wmake genericPatchFields
wmake parallel/decompose/decompositionMethods
    ln: decompositionMethods/lnInclude
    ln: kahipDecomp/lnInclude
    ln: metisDecomp/lnInclude
    ln: scotchDecomp/lnInclude
    ln: ptscotchDecomp/lnInclude
wmake scotchDecomp
wmake ptscotchDecomp
wmake metisDecomp
wmake kahipDecomp
wmake MGridGen
    ln: fvOptions/lnInclude
wmake lagrangian/basic
wmake lagrangian/distributionModels
wmake libso renumberMethods
wmake libso SloanRenumber
zoltan - /opt/zoltan
wmake libso zoltanRenumber
wmake decompositionMethods
wmake decompose
wmake faDecompose
kahip (int32) - /opt/kahip
wmake kahipDecomp
metis (int32) - /opt/karypis
wmake metisDecomp
scotch (int) - /opt/scotch
wmake scotchDecomp
scotch (int) - /opt/scotch
ptscotch - /opt/scotch
wmake -no-openmp (mpi=SYSTEMOPENMPI:sys-openmpi)
wmake ptscotchDecomp
wmake reconstruct
wmake faReconstruct
wmake distributed
wmake dynamicFvMesh
wmake topoChangerFvMesh
wmake sampling
wmake twoPhaseMixture
wmake interfaceProperties
wmake twoPhaseProperties
wmake incompressible
wmake compressible
wmake immiscibleIncompressibleTwoPhaseMixture
wmake geometricVoF
wmake libso (randomProcesses)
wmake ODE
    ln: thermophysicalProperties/lnInclude
wmake specie
wmake solidSpecie
wmake thermophysicalProperties
wmake basic
wmake reactionThermo
wmake laminarFlameSpeed
wmake chemistryModel
wmake barotropicCompressibilityModel
wmake SLGThermo
wmake solidThermo
wmake solidChemistryModel
wmake radiation
wmake turbulenceModels
wmake incompressible
wmake compressible
wmake schemes
    ln: phaseIncompressible/lnInclude
    ln: phaseCompressible/lnInclude
wmake fused/turbulenceModels
wmake combustionModels
    ln: regionFaModels/lnInclude
    ln: faOptions/lnInclude
    ln: overset/lnInclude
wmake overset
wmake fvOptions
wmake fvMotionSolver
    ln: blockMesh/lnInclude
wmake snappyHexMesh
wmake blockMesh
wmake extrudeModel
wmake pairPatchAgglomeration
wmake waveModels
wmake engine
wmake libso (conversion)
==> skip ccmio (no header)
==> skip optional libccm adapter
wmake saturationModels
wmake multiphaseSystem
wmake twoPhaseSystem
wmake twoPhaseCompressibleTurbulenceModels
wmake phasesSystem
wmake compressibleMultiPhaseTurbulenceModels
wmake multiphaseSystem
wmake twoPhaseSystem
wmake phaseCompressibleTurbulenceModels
wmake VoFphaseIncompressibleTurbulenceModels
wmake incompressibleInterPhaseTransportModel
wmake field
wmake forces
wmake initialisation
wmake utilities
wmake solvers
wmake phaseSystems
wmake libso (randomProcesses)
wmake thermoTools
wmake regionModel
wmake pyrolysisModels
wmake surfaceFilmModels
wmake surfaceFilmModels/derivedFvPatchFields/wallFunctions
wmake thermalBaffleModels
wmake regionCoupling
wmake faOptions
wmake regionFaModels
wmake distributionModels
wmake basic
wmake solidParticle
wmake intermediate
wmake turbulence
wmake spray
wmake DSMC
wmake coalCombustion
wmake potential
wmake molecularMeasurements
wmake molecule
wmake functionObjects/lagrangian
wmake lumpedPointMotion
wmake sixDoFRigidBodyMotion
wmake sixDoFRigidBodyState
wmake rigidBodyDynamics
wmake rigidBodyMeshMotion
wmake atmosphericModels
wmake optimisation/adjointOptimisation/adjoint
wmake interfaceTrackingFvMesh
========================================
Done OpenFOAM libraries
========================================
========================================
Compile OpenFOAM applications
========================================
wmake utilities
wmake doc
wmake finiteArea
wmake mesh
wmake miscellaneous
wmake parallelProcessing
wmake postProcessing
wmake preProcessing
wmake surface
wmake thermophysical
wmake checkFaMesh
wmake makeFaMesh
wmake foamDictionary
wmake advanced
wmake foamFormatConvert
wmake conversion
wmake doc
wmake foamHasLibrary
wmake generation
wmake foamHelp
wmake applyBoundaryLayer
wmake decomposePar
wmake reconstructPar
wmake manipulation
wmake boxTurb
wmake changeDictionary
wmake foamListTimes
wmake surfaceAdd
wmake redistributePar
wmake foamRestoreFields
wmake reconstructParMesh
wmake foamListRegions
wmake patchSummary
wmake surfaceCheck
wmake chemkinToFoam
wmake adiabaticFlameT
wmake createBoxTurb
wmake createExternalCoupledPatchGeometry
wmake surfaceBooleanFeatures
wmake dataConversion
wmake surfaceClean
wmake surfaceCoarsen
wmake createViewFactors
wmake createZeroDirectory
wmake equilibriumCO
wmake lumped
wmake surfaceConvert
wmake miscellaneous
wmake equilibriumFlameT
wmake dsmcInitialise
wmake noise
wmake surfaceFeatureConvert
wmake surfaceFeatureExtract
wmake engineSwirl
wmake lagrangian
wmake surfaceFind
wmake optimisation
wmake mixtureAdiabaticFlameT
wmake faceAgglomerate
wmake surfaceHookUp
wmake mapFields
wmake postProcess
wmake surfaceInertia
wmake mapFieldsPar
wmake surfaceInflate
wmake mdInitialise
wmake surfaceLambdaMuSmooth
wmake PDRblockMesh
wmake foamUpgradeCyclics
wmake helpTypes
wmake optimisation
wmake surfaceMeshConvert
wmake PDR
wmake setAlphaField
wmake setExprBoundaryFields
wmake surfaceMeshExport
wmake viewFactorModels
wmake surfaceMeshExtract
wmake collapseEdges
wmake extractionMethod
wmake pdrFields
wmake alphaFieldFunctions
wmake ansysToFoam
wmake foamDataToFluent
wmake attachMesh
wmake lumpedPointForces
wmake createROMfields
wmake computeSensitivities
wmake particleTracks
wmake bunnylod
wmake writeMorpherCPs
wmake ROMmodels
wmake DMD
wmake ROMmodel
wmake PolyhedronReader
wmake steadyParticleTracks
wmake engineCompRatio
wmake lumpedPointMovement
wmake surfaceMeshImport
wmake combinePatchFaces
wmake lumpedPointZones
wmake autoPatch
wmake foamToEnsight
wmake ccm
wmake checkMesh
wmake foamToGMV
wmake modifyMesh
wmake surfaceMeshInfo
wmake setExprFields
wmake PDRMesh
wmake surfacePatch
wmake cfx4ToFoam
wmake createBaffles
wmake surfaceOrient
wmake foamToTetDualMesh
wmake cumulativeDisplacement
wmake refineHexMesh
wmake surfacePointMerge
wmake createPatch
wmake surfaceRedistributePar
wmake refinementLevel
wmake blockMesh
wmake refineWallLayer
wmake deformedGeom
wmake pdfPlot
wmake surfaceRefineRedGreen
wmake datToFoam
wmake setFields
wmake foamToVTK
wmake ensightToFoam
wmake fireToFoam
wmake surfaceSplitByPatch
wmake removeFaces
wmake flattenMesh
wmake fluent3DMeshToFoam
wmake smapToFoam
wmake selectCells
wmake fluentMeshToFoam
wmake postChannel
wmake setTurbulenceFields
wmake faceSelection
wmake insideCells
wmake searchableSurfaceModifier
wmake surfaceSplitByTopology
wmake foamMeshToFluent
wmake smoothSurfaceData
wmake viewFactorsGen
wmake mergeMeshes
wmake wallFunctionTable
wmake foamToFireMesh
wmake mergeOrSplitBaffles
wmake tabulatedWallFunction
wmake mirrorMesh
wmake snappyRefineMesh
==> skip optional ccm conversion components (no libccm)
wmake surfaceSplitNonManifolds
wmake surfaceSubset
wmake test
wmake createViewFactors
wmake PDRsetFields
    found CGAL -- enabling CGAL support.
wmake foamToStarMesh
wmake profilingSummary
wmake splitCells
wmake temporalInterpolate
wmake foamToSurface
wmake moveDynamicMesh
wmake surfaceToPatch
wmake surfaceTransformPoints
wmake gambitToFoam
wmake moveEngineMesh
wmake gmshToFoam
wmake ideasUnvToFoam
wmake moveMesh
wmake kivaToFoam
wmake orientFaceZone
wmake refineMesh
wmake polyDualMesh
wmake mshToFoam
wmake renumberMesh
wmake netgenNeutralToFoam
wmake rotateMesh
wmake plot3dToFoam
wmake objToVTK
wmake setSet
wmake star4ToFoam
wmake setsToZones
wmake tetgenToFoam
wmake vtkUnstructuredToFoam
wmake writeMeshObj
wmake singleCellMesh
wmake gmsh
wmake splitMesh
wmake splitMeshRegions
wmake unv
wmake subsetMesh
wmake stitchMesh
wmake topoSet
wmake transformPoints
wmake zipUpMesh
wmake extrude
wmake testFiles
wmake extrudeMesh
wmake extrudeToRegionMesh
wmake extrudedMesh
wmake extrude2DMesh
wmake extrude2DMesh
wmake snappyHexMesh
wmake conformalVoronoiMesh
wmake conformalVoronoi2DMesh
wmake foamyQuadMesh
wmake foamyHexMesh
Finish foamyMesh
wmake solvers
wmake basic
wmake combustion
wmake acoustic
wmake compressible
wmake discreteMethods
wmake DNS
wmake doc
wmake electromagnetics
wmake financial
wmake heatTransfer
wmake finiteArea
wmake incompressible
wmake lagrangian
wmake stressAnalysis
wmake multiphase
wmake laplacianFoam
wmake acousticFoam
wmake rhoCentralFoam
wmake rhoPimpleAdiabaticFoam
wmake potentialFoam
wmake dsmc
wmake chemFoam
wmake rhoPimpleFoam
wmake molecularDynamics
wmake scalarTransportFoam
wmake coldEngineFoam
wmake rhoSimpleFoam
wmake dnsFoam
wmake fireFoam
wmake electrostaticFoam
wmake PDRFoam
wmake magneticFoam
wmake reactingFoam
wmake XiFoam
wmake mhdFoam
wmake sonicFoam
wmake buoyantBoussinesqPimpleFoam
wmake financialFoam
wmake buoyantBoussinesqSimpleFoam
wmake sphereSurfactantFoam
wmake liquidFilmFoam
wmake buoyantPimpleFoam
wmake adjointOptimisationFoam
wmake adjointShapeOptimizationFoam
wmake surfactantFoam
wmake solidDisplacementFoam
wmake boundaryFoam
wmake chtMultiRegionFoam
wmake coalChemistryFoam
wmake buoyantSimpleFoam
wmake DPMFoam
wmake solidFoam
wmake cavitatingFoam
wmake icoUncoupledKinematicParcelFoam
wmake icoFoam
wmake compressibleInterFoam
wmake thermoFoam
wmake compressibleMultiphaseInterFoam
wmake nonNewtonianIcoFoam
wmake driftFluxFoam
wmake pimpleFoam
wmake BCs
wmake solidEquilibriumDisplacementFoam
wmake icoReactingMultiphaseInterFoam
wmake reactingParcelFoam
wmake interCondensatingEvaporatingFoam
wmake interFoam
wmake simpleCoalParcelFoam
wmake sprayFoam
wmake interIsoFoam
wmake kinematicParcelFoam
wmake uncoupledKinematicParcelFoam
wmake pisoFoam
wmake simpleFoam
wmake shallowWaterFoam
wmake interPhaseChangeFoam
wmake MPPICInterFoam
wmake multiphaseEulerFoam
wmake potentialFreeSurfaceFoam
wmake multiphaseInterFoam
wmake multiphaseMixtureThermo
wmake twoPhaseMixtureThermo
wmake DPMTurbulenceModels
wmake temperaturePhaseChangeTwoPhaseMixtures
wmake laserDTRM
wmake mixtureViscosityModels
wmake overPotentialFoam
wmake mdEquilibrationFoam
wmake laminarFlameSpeed
wmake overLaplacianDyMFoam
wmake phaseChangeTwoPhaseMixtures
wmake dsmcFoam
wmake overRhoSimpleFoam
wmake compressibleTwoPhaseMixtureTurbulenceModels
wmake overRhoPimpleDyMFoam
wmake multiphaseMixture
wmake rhoReactingBuoyantFoam
wmake XiDyMFoam
wmake tractionDisplacement
wmake adjointOutletPressure
wmake chtMultiRegionSimpleFoam
wmake overPimpleDyMFoam
wmake overBuoyantPimpleDyMFoam
wmake sonicDyMFoam
wmake interMixingFoam
wmake tractionDisplacementCorrection
wmake cavitatingDyMFoam
wmake reactingHeterogenousParcelFoam
wmake icoUncoupledKinematicParcelDyMFoam
wmake uncoupledKinematicParcelDyMFoam
wmake engineFoam
wmake overSimpleFoam
wmake potentialFreeSurfaceDyMFoam
wmake SCOPE
wmake adjointOutletVelocity
wmake fluid
wmake immiscibleIncompressibleThreePhaseMixture
wmake PDRModels
wmake incompressibleThreePhaseMixture
wmake solid
wmake dragModels
wmake threePhaseInterfaceProperties
wmake basic
wmake PDRDragModel
wmake turbulence
wmake PDRkEpsilon
wmake XiEqModels
wmake basicXiSubXiEq
wmake XiGModels
wmake basicXiSubG
wmake simpleReactingParcelFoam
wmake XiEngineFoam
wmake mdFoam
wmake XiModels
wmake rhoPorousSimpleFoam
wmake SRFPimpleFoam
wmake chtMultiRegionTwoPhaseEulerFoam
wmake simpleSprayFoam
wmake reactingMultiphaseEulerFoam
wmake overInterDyMFoam
wmake sonicLiquidFoam
wmake rhoReactingFoam
wmake reactingTwoPhaseEulerFoam
wmake porousSimpleFoam
wmake twoLiquidMixingFoam
wmake SRFSimpleFoam
wmake twoPhaseEulerFoam
wmake sprayDyMFoam
wmake fluid
wmake include
wmake VoF
wmake solid
wmake pU
wmake algebraic
wmake pUf
wmake fluid
wmake derivedFvPatchFields
wmake fixed
wmake solid
wmake XiEqModels
wmake transport
wmake XiGModels
wmake pU
wmake pUf
wmake XiModel
wmake pU
wmake pUf
wmake Gulder
wmake turbulentTemperatureTwoPhaseRadCoupledMixed
wmake SCOPEBlendXiEq
wmake instabilityXiEq
wmake XiGModel
wmake SCOPEXiEq
wmake instabilityG
wmake KTS
wmake XiEqModel
wmake relativeVelocityModels
wmake surfaceTensionModels
wmake interPhaseChangeDyMFoam
wmake MPPICFoam
wmake VoFphaseCompressibleTurbulenceModels
wmake overInterPhaseChangeDyMFoam
wmake DPMDyMFoam
wmake DPMDyMFoam/MPPICDyMFoam
wmake compressibleInterDyMFoam
wmake compressibleInterFilmFoam
wmake compressibleInterIsoFoam
wmake overCompressibleInterDyMFoam
========================================
Done OpenFOAM applications
========================================
========================================
prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

    ignoring possible compilation errors
    make certain to check the output file

wmake libso 
========================================
2026-07-25 22:10:42 -0400
Starting compile of OpenQBMM with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

========================================
Compile OpenQBMM libraries

wmake libso Vandermonde
wmake libso quadratureMethods/momentSets
wmake libso quadratureMethods/momentInversion
wmake libso quadratureMethods/hermiteQuadrature
wmake libso quadratureMethods/quadratureNode
wmake libso quadratureMethods/fieldMomentInversion
wmake libso quadratureMethods/quadratureApproximations
wmake libso quadratureMethods/momentAdvection
wmake libso quadratureMethods/PDFTransportModels
wmake libso quadratureMethods/mixingModels
wmake libso quadratureMethods/populationBalanceModels
========================================
Compile OpenQBMM applications

wmake libso utilities
wmake libso computeMoments
wmake libso errorEstimator
wmake libso generateMoments
wmake libso reconstructPointDistribution
wmake libso phaseMeanVelocityForce
wmake libso momentGenerationModels
wmake libso lnInclude
wmake libso lnInclude
wmake libso phaseCompressibleMeanVelocityForce
wmake libso phaseIncompressibleMeanVelocityForce
wmake populationBalance
wmake buoyantPbePimpleFoam
wmake pbeTransportFoam
wmake pbeFoam
wmake mixing
wmake mixingFoam
wmake mixingTransportFoam
wmake libso ButcherTable
wmake explicitRhoFoam
wmake compressibleSystem
wmake compressiblePbeTransportFoam
wmake velocityDistributionTransport
wmake phaseModel
wmake interfacialModels
wmake phaseCompressibleTurbulenceModels
wmake vdfTransportFoam
wmake oneWayCoupledVdfTransportFoam
wmake diluteVdfTransportFoam
wmake multiphase
wmake twoPhaseSystem
wmake interfacialModels
wmake phaseCompressibleTurbulenceModels
wmake polydisperseBubbleFoam
wmake denseAGFoam

2026-07-25 22:10:45 -0400
========================================
  Finished compile of OpenQBMM with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

wmake libso 
========================================
========================================
2026-07-25 22:10:45 -0400
Starting compile of adiosFoam with OpenFOAM 
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

==> adios2 not found?
Define manually, enable in OpenFOAM etc/bashrc, or try the following [POSIX]:

    eval $(foamEtcFile -sh -config adios2 -- -force)

==

2026-07-25 22:10:45 -0400
========================================
  Finished compile of adiosFoam with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

wmake libso 
========================================
2026-07-25 22:10:45 -0400
Starting compile of external-solver (petsc) with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

wmake(petsc) libso : /opt/petsc
wmake libso (petsc4Foam)
==> Before running, verify that PETSc libraries can be found
For example,

    foamHasLibrary -verbose petscFoam

Define manually, enable in OpenFOAM etc/bashrc, or try the following [POSIX]:

    eval $(foamEtcFile -sh -config petsc -- -force)

==

2026-07-25 22:10:46 -0400
========================================
  Finished compile of external-solver (petsc) with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

========================================
The optional plugins can be built separately:

    ./Allwmake-plugins -prefix=...

========================================


2026-07-25 22:10:46 -0400
========================================
  OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

  api = 2606
  patch = 0
  bin = 287 entries
  lib = 158 entries

========================================

```

# ./Allwmake-plugins -j

```text

./Allwmake-plugins -j
Compiling enabled on 64 cores
========================================
prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

    ignoring possible compilation errors
    make certain to check the output file

wmake libso 
========================================
========================================
2026-07-25 22:25:53 -0400
Starting compile of avalanche with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

wmake libso avalanche
wmake libso solvers
wmake libso faSavageHutterFoam
wmake libso faParkerFukushimaFoam
wmake libso faTwoLayerAvalancheFoam
wmake libso utilities
wmake libso gridToSTL
wmake libso releaseAreaMapping
wmake libso slopeMesh
wmake libso elevationModels
wmake libso elevationModel
wmake libso simpleSlope

2026-07-25 22:25:53 -0400
========================================
  Finished compile of avalanche with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

wmake libso 
========================================
prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

    ignoring possible compilation errors
    make certain to check the output file

wmake libso 
========================================
2026-07-25 22:25:53 -0400
Starting compile of cfmesh with OpenFOAM 
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

wmake libso meshLibrary
wmake executables
wmake cartesian2DMesh
wmake cartesianMesh
wmake tetMesh
wmake pMesh
wmake utilities
wmake checkSurfaceMesh
wmake copySurfaceParts
wmake extrudeEdgesInto2DSurface
wmake FLMAToSurface
wmake generateBoundaryLayers
wmake FMSToSurface
wmake FMSToVTK
wmake importSurfaceAsSubset
wmake improveMeshQuality
wmake improveSymmetryPlanes
wmake mergeSurfacePatches
wmake meshToFPMA
wmake patchesToSubsets
wmake preparePar
wmake removeSurfaceFacets
wmake scaleMesh
wmake scaleSurfaceMesh
wmake subsetToPatch
wmake surfaceFeatureEdges
wmake surfaceGenerateBoundingBox
wmake surfaceToFMS

2026-07-25 22:25:54 -0400
========================================
  Finished compile of cfmesh with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

wmake libso 
========================================
2026-07-25 22:25:54 -0400
Starting compile of Data-Driven Modelling Special Interest Group with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

wmake libso 
From https://github.com/CrayLabs/SmartRedis
 * branch            develop    -> FETCH_HEAD
Already up to date.
Skipping repository build/Release/hiredis-prefix/src/hiredis
Removing build/Release/hiredis-prefix/src/hiredis-stamp
Removing build/Release/hiredis-prefix/src/hiredis-build
Removing build/Release/hiredis-prefix/tmp
Skipping repository build/Release/redis++-prefix/src/redis++
Removing build/Release/redis++-prefix/src/redis++-build
Removing build/Release/redis++-prefix/src/redis++-stamp
Removing build/Release/redis++-prefix/tmp
Removing build/Release/smartredisConfig.cmake
Removing build/Release/CMakeCache.txt
Removing build/Release/Makefile
Removing build/Release/install_manifest.txt
Removing build/Release/smartredisConfigVersion.cmake
Removing build/Release/cmake_install.cmake
Removing build/Release/CMakeFiles
Removing build/Release/libsmartredis.so
Removing install/
rm -rf build
Using gcc and g++
-- The C compiler identification is GNU 13.3.0
-- The CXX compiler identification is GNU 13.3.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/gcc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/g++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
-- Found Threads: TRUE  
-- Skipping Fortran client build
-- Skipping Python client build
-- Configuring done (0.4s)
-- Generating done (0.0s)
-- Build files have been written to: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/build/Release
[  1%] Creating directories for 'hiredis'
[  3%] Performing download step (git clone) for 'hiredis'
Cloning into 'hiredis'...
HEAD is now at ccad7eb Merge pull request #1296 from redis/change-the-version-to-1.3
[  5%] Performing update step for 'hiredis'
[  7%] No patch step for 'hiredis'
[  9%] Performing configure step for 'hiredis'
Detected version: 1.3.0
-- The C compiler identification is GNU 13.3.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/gcc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done (0.1s)
-- Generating done (0.0s)
-- Build files have been written to: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/build/Release/hiredis-prefix/src/hiredis-build
[ 10%] Performing build step for 'hiredis'
[ 10%] Building C object CMakeFiles/hiredis.dir/hiredis.c.o
[ 30%] Building C object CMakeFiles/hiredis.dir/async.c.o
[ 30%] Building C object CMakeFiles/hiredis.dir/alloc.c.o
[ 40%] Building C object CMakeFiles/hiredis.dir/net.c.o
[ 50%] Building C object CMakeFiles/hiredis.dir/read.c.o
[ 60%] Building C object CMakeFiles/hiredis.dir/sds.c.o
[ 70%] Building C object CMakeFiles/hiredis.dir/sockcompat.c.o
[ 80%] Linking C static library libhiredis.a
[ 80%] Built target hiredis
[ 90%] Building C object CMakeFiles/hiredis-test.dir/test.c.o
[100%] Linking C executable hiredis-test
[100%] Built target hiredis-test
[ 12%] Performing install step for 'hiredis'
make[4]: warning: jobserver unavailable: using -j1.  Add '+' to parent make rule.
[ 80%] Built target hiredis
[100%] Built target hiredis-test
Install the project...
-- Install configuration: ""
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/libhiredis.a
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/build/native/hiredis.targets
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/hiredis.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/read.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/sds.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/async.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/alloc.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/sockcompat.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/redismoduleapi.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/ae.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/libhv.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/ivykis.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/libevent.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/qt.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/libsdevent.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/glib.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/poll.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/libev.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/macosx.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/hiredis/adapters/libuv.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/pkgconfig/hiredis.pc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/cmake/hiredis/hiredis-targets.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/cmake/hiredis/hiredis-targets-noconfig.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/cmake/hiredis/hiredis-config.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/cmake/hiredis/hiredis-config-version.cmake
[ 14%] Completed 'hiredis'
[ 14%] Built target hiredis
[ 16%] Creating directories for 'redis++'
[ 18%] Performing download step (git clone) for 'redis++'
Cloning into 'redis++'...
HEAD is now at e30d4c4 update cmake_minimum_required to 3.5
[ 20%] Performing update step for 'redis++'
[ 21%] No patch step for 'redis++'
[ 23%] Performing configure step for 'redis++'
-- redis-plus-plus version: 1.3.15
-- The CXX compiler identification is GNU 13.3.0
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/g++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- redis-plus-plus build type: Release
-- redis-plus-plus build with CXX standard: c++17
-- redis-plus-plus TLS support: OFF
-- redis-plus-plus check hiredis features
-- Looking for redisEnableKeepAliveWithInterval
-- Looking for redisEnableKeepAliveWithInterval - found
-- redis-plus-plus build static library: ON
-- redis-plus-plus build static library with position independent code: ON
-- redis-plus-plus build shared library: OFF
-- redis-plus-plus build test: OFF
-- Debian package name: .deb
-- Configuring done (0.3s)
-- Generating done (0.0s)
-- Build files have been written to: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/build/Release/redis++-prefix/src/redis++-build
[ 25%] Performing build step for 'redis++'
[  5%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/command.cpp.o
[ 11%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/command_options.cpp.o
[ 16%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/errors.cpp.o
[ 22%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/pipeline.cpp.o
[ 27%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/connection_pool.cpp.o
[ 44%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/redis.cpp.o
[ 44%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/connection.cpp.o
[ 44%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/crc16.cpp.o
[ 50%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/reply.cpp.o
[ 66%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/sentinel.cpp.o
[ 66%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/shards.cpp.o
[ 72%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/redis_cluster.cpp.o
[ 72%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/redis_uri.cpp.o
[ 77%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/shards_pool.cpp.o
[ 83%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/subscriber.cpp.o
[ 88%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/transaction.cpp.o
[ 94%] Building CXX object CMakeFiles/redis++_static.dir/src/sw/redis++/patterns/redlock.cpp.o
[100%] Linking CXX static library libredis++.a
[100%] Built target redis++_static
[ 27%] Performing install step for 'redis++'
make[4]: warning: jobserver unavailable: using -j1.  Add '+' to parent make rule.
[100%] Built target redis++_static
Install the project...
-- Install configuration: "Release"
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/libredis++.a
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/redis++/redis++-targets.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/redis++/redis++-targets-release.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/hiredis_features.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/cmd_formatter.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/command.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/command_args.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/command_options.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/connection.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/connection_pool.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/cxx_utils.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/errors.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/tls.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/pipeline.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/queued_redis.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/queued_redis.hpp
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/redis++.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/redis.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/redis.hpp
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/redis_cluster.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/redis_cluster.hpp
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/redis_uri.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/reply.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/sentinel.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/shards.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/shards_pool.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/subscriber.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/transaction.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/utils.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/version.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sw/redis++/patterns/redlock.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/redis++/redis++-config.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/redis++/redis++-config-version.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/pkgconfig/redis++.pc
[ 29%] Completed 'redis++'
[ 29%] Built target redis++
[ 30%] Building CXX object CMakeFiles/smartredis.dir/src/c/c_client.cpp.o
[ 32%] Building CXX object CMakeFiles/smartredis.dir/src/c/c_configoptions.cpp.o
[ 34%] Building CXX object CMakeFiles/smartredis.dir/src/c/c_error.cpp.o
[ 36%] Building CXX object CMakeFiles/smartredis.dir/src/c/c_logger.cpp.o
[ 38%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/address.cpp.o
[ 41%] Building CXX object CMakeFiles/smartredis.dir/src/c/c_dataset.cpp.o
[ 41%] Building CXX object CMakeFiles/smartredis.dir/src/c/c_logcontext.cpp.o
[ 43%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/addressallcommand.cpp.o
[ 45%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/addressanycommand.cpp.o
[ 47%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/clusterinfocommand.cpp.o
[ 52%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/commandlist.cpp.o
[ 52%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/command.cpp.o
[ 52%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/client.cpp.o
[ 54%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/addressatcommand.cpp.o
[ 56%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/compoundcommand.cpp.o
[ 60%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/commandreply.cpp.o
[ 60%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/dbinfocommand.cpp.o
[ 67%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/dataset.cpp.o
[ 67%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/configoptions.cpp.o
[ 67%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/gettensorcommand.cpp.o
[ 67%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/dbnode.cpp.o
[ 70%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/logger.cpp.o
[ 70%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/metadata.cpp.o
[ 72%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/keyedcommand.cpp.o
[ 74%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/nonkeyedcommand.cpp.o
[ 76%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/metadatafield.cpp.o
[ 78%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/multikeycommand.cpp.o
[ 81%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/pipelinereply.cpp.o
[ 81%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/singlekeycommand.cpp.o
[ 85%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/redisserver.cpp.o
[ 85%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/tensorpack.cpp.o
[ 87%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/rediscluster.cpp.o
[ 89%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/tensorbase.cpp.o
[ 90%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/srobject.cpp.o
[ 94%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/utility.cpp.o
[ 94%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/redis.cpp.o
[ 96%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/stringfield.cpp.o
[ 98%] Building CXX object CMakeFiles/smartredis.dir/src/cpp/threadpool.cpp.o
[100%] Linking CXX shared library libsmartredis.so
Removing artifacts from dependencies
[100%] Built target smartredis
-- Install configuration: "Release"
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/lib/libsmartredis.so
-- Up-to-date: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/configoptions.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/command.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/commandreply.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/enum_fortran.inc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/logger.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/addressanycommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/c_logger.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/command.tcc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/logcontext.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sr_enums.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/dbnode.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/addressatcommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/tensorpack.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/srassert.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/pyconfigoptions.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/nonkeyedcommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/addressallcommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/compoundcommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/metadatafield.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/dataset.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/commandlist.tcc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/gettensorcommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/commandlist.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/keyedcommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/pyclient.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/dbinfocommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/metadata.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/threadpool.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/clusterinfocommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/srexception.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/client.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/tensor.tcc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sharedmemorylist.tcc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/multikeycommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/pipelinereply.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/c_logcontext.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/metadatabuffer.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/stringfield.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/utility.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/scalarfield.tcc
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/address.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/c_configoptions.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/redis.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/redisserver.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/pysrobject.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/singlekeycommand.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/srobject.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/rediscluster.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/pylogcontext.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/pydataset.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/sharedmemorylist.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/c_client.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/tensor.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/c_dataset.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/tensorbase.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/include/scalarfield.h
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/smartredis/smartredis.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/smartredis/smartredis-release.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/smartredis/smartredisConfig.cmake
-- Installing: /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/openfoam-smartsim/smartredis/install/share/cmake/smartredis/smartredisConfigVersion.cmake
wmake libso src/smartRedis
wmake libso src/functionObjects
wmake libso src/displacementSmartSimMotionSolver
wmake applications
wmake utilities
wmake foamSmartSimSvd
wmake foamSmartSimSvdDBAPI
wmake svdToFoam
wmake libso 
========================================
2026-07-25 22:26:03 -0400
Starting compile of NN_Pred with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

========================================
Activating environment...
./Allwmake: 29: source: not found
========================================
Building Predictor-Core...
========================================
Checking and downloading third-party libraries...
Checking /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/third_party/Predictor-Core/third_party/EIGEN_libs for eigen-3.4.0.tar.gz...
/home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/third_party/Predictor-Core/third_party/EIGEN_libs already exists and is not empty. Skipping download.
Checking /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/third_party/Predictor-Core/third_party/TF_libs for libtensorflow-cpu-linux-x86_64-2.8.0.tar.gz...
/home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/third_party/Predictor-Core/third_party/TF_libs already exists and is not empty. Skipping download.
Checking /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/third_party/Predictor-Core/third_party/ONNX_libs for onnxruntime-linux-x64-1.20.1.tgz...
/home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/third_party/Predictor-Core/third_party/ONNX_libs already exists and is not empty. Skipping download.
All required libraries have been checked and downloaded if necessary.
========================================
Compiling Predictor-Core...
rm -rf /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/outputs/bin/*
rm -rf /home/user/repos/OpenFOAM_com/OpenFOAM/plugins/data-community/NN_Pred/Predictor-Core/outputs/lib/*
rm -rf include/ml_predictor.mod
rm -rf source/ml_predictor.mod
Environment variable ONNX_HOME not set
make: *** [Makefile:109: guard-ONNX_HOME] Error 1
Compilation of Predictor-Core failed
Allwmake in Predictor-Core failed

2026-07-25 22:26:03 -0400
========================================
  Finished compile of Data-Driven Modelling Special Interest Group with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi

wmake libso 
========================================
2026-07-25 22:26:03 -0400
Starting compile of Turbulence Technical Committee with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

wmake libso 
2026-07-25 22:26:03 -0400
Starting compile of kOmegaSSTPDA
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

wmake kOmegaSSTPDA
wmake kOmegaSSTPDA_compressible
wmake libso (libWallModelledLES)
2026-07-25 22:26:04 -0400
Starting compile of libWallModelledLES
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

OpenFOAM (com) - api=2606 patch=0
No change to versionRules/foamVersion4wmles.H

  Please include the output above when reporting a problem in the compilation. It helps diagnosing the problem    

wmake libso (libWallModelledLES)
wmake libso 
2026-07-25 22:26:04 -0400
Starting compile of EllipticBlending
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

wmake kEpsilonLagEB
wmake libso 
2026-07-25 22:26:04 -0400
Starting compile of dynamicSmagorinsky
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

wmake dynamicSmagorinsky
wmake libso 
Compiling application calculateNut
wmake ./of-applications/calculateNut
Finished compiling calculateNut 


Compiling application calculateRFV
wmake ./of-applications/calculateRFV
Finished compiling calculateRFV 


Compiling application calculateRFVperp
wmake ./of-applications/calculateRFVperp
Finished compiling calculateRFVperp 


Compiling application calculateRperp
wmake ./of-applications/calculateRperp
Finished compiling calculateRperp 


Compiling application calculateGamma
wmake ./of-applications/calculateGamma
Finished compiling calculateGamma 


Compiling turbulence models
wmake libso ./of-turbulence-models
Finished compiling turbulence models 


wmake libso 
2026-07-25 22:26:04 -0400
Starting compile of kOmegaSSTCND
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

wmake kOmegaSSTCND/compressible
wmake kOmegaSSTCND/incompressible
wmake libso 
2026-07-25 22:26:05 -0400
Starting compile of SpalartAllmarasRC
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

wmake libso incompressible
wmake libso compressible
wmake libso 
2026-07-25 22:26:05 -0400
Starting compile of gammaSST
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

wmake libso incompressible
wmake libso compressible
wmake libso 
2026-07-25 22:26:05 -0400
Starting compile of SpalartAllmarasH
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi
  prefix = /home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt

  Rebuilding for OpenFOAM = v2606 (2606).

    ln: ../turbulenceModels/lnInclude
    ln: ./lnInclude
Making dependencies: myTurbulentTransportModels.C
g++ -std=c++17 -m64 -pthread -DOPENFOAM=2606 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wold-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -Wno-attributes -Wno-unknown-pragmas -O3  -DNoRepository -ftemplate-depth=1000  -I../turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/finiteVolume/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/meshTools/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/transportModels -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/incompressible/lnInclude -iquote. -IlnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OpenFOAM/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OSspecific/POSIX/lnInclude   -fPIC -c turbulentTransportModels/myTurbulentTransportModels.C -o /home/user/repos/OpenFOAM_com/OpenFOAM/build/linux64GccDPInt32Opt/plugins/turbulence-community/HelicitySpalartAllmaras/incompressible/turbulentTransportModels/myTurbulentTransportModels.o
g++ -std=c++17 -m64 -pthread -DOPENFOAM=2606 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wold-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -Wno-attributes -Wno-unknown-pragmas -O3  -DNoRepository -ftemplate-depth=1000  -I../turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/finiteVolume/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/meshTools/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/transportModels -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/incompressible/lnInclude -iquote. -IlnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OpenFOAM/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OSspecific/POSIX/lnInclude   -fPIC -shared -Xlinker --add-needed -Xlinker --no-as-needed  /home/user/repos/OpenFOAM_com/OpenFOAM/build/linux64GccDPInt32Opt/plugins/turbulence-community/HelicitySpalartAllmaras/incompressible/turbulentTransportModels/myTurbulentTransportModels.o -L/home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt/lib \
    -lturbulenceModels -lfiniteVolume -lmeshTools -lincompressibleTransportModels -lincompressibleTurbulenceModels  -o /home/user/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib/libSAHIncompressibleTurbulenceModel.so
    ln: ../turbulenceModels/lnInclude
    ln: ./lnInclude
Making dependencies: myTurbulentFluidThermoModels.C
Making dependencies: compressibleTurbulenceModel.C
g++ -std=c++17 -m64 -pthread -DOPENFOAM=2606 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wold-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -Wno-attributes -Wno-unknown-pragmas -O3  -DNoRepository -ftemplate-depth=1000  -I../turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/finiteVolume/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/meshTools/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/transportModels/compressible/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/basic/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/radiation/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/specie/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/solidThermo/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/solidSpecie/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/thermophysicalProperties/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/compressible/lnInclude -iquote. -IlnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OpenFOAM/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OSspecific/POSIX/lnInclude   -fPIC -c compressibleTurbulenceModel.C -o /home/user/repos/OpenFOAM_com/OpenFOAM/build/linux64GccDPInt32Opt/plugins/turbulence-community/HelicitySpalartAllmaras/compressible/compressibleTurbulenceModel.o
g++ -std=c++17 -m64 -pthread -DOPENFOAM=2606 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wold-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -Wno-attributes -Wno-unknown-pragmas -O3  -DNoRepository -ftemplate-depth=1000  -I../turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/finiteVolume/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/meshTools/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/transportModels/compressible/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/basic/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/radiation/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/specie/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/solidThermo/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/solidSpecie/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/thermophysicalProperties/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/compressible/lnInclude -iquote. -IlnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OpenFOAM/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OSspecific/POSIX/lnInclude   -fPIC -c turbulentFluidThermoModels/myTurbulentFluidThermoModels.C -o /home/user/repos/OpenFOAM_com/OpenFOAM/build/linux64GccDPInt32Opt/plugins/turbulence-community/HelicitySpalartAllmaras/compressible/turbulentFluidThermoModels/myTurbulentFluidThermoModels.o
g++ -std=c++17 -m64 -pthread -DOPENFOAM=2606 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wold-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -Wno-attributes -Wno-unknown-pragmas -O3  -DNoRepository -ftemplate-depth=1000  -I../turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/finiteVolume/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/meshTools/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/transportModels/compressible/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/basic/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/radiation/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/specie/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/solidThermo/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/solidSpecie/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/thermophysicalModels/thermophysicalProperties/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/turbulenceModels/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/TurbulenceModels/compressible/lnInclude -iquote. -IlnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OpenFOAM/lnInclude -I/home/user/repos/OpenFOAM_com/OpenFOAM/src/OSspecific/POSIX/lnInclude   -fPIC -shared -Xlinker --add-needed -Xlinker --no-as-needed  /home/user/repos/OpenFOAM_com/OpenFOAM/build/linux64GccDPInt32Opt/plugins/turbulence-community/HelicitySpalartAllmaras/compressible/compressibleTurbulenceModel.o /home/user/repos/OpenFOAM_com/OpenFOAM/build/linux64GccDPInt32Opt/plugins/turbulence-community/HelicitySpalartAllmaras/compressible/turbulentFluidThermoModels/myTurbulentFluidThermoModels.o -L/home/user/repos/OpenFOAM_com/OpenFOAM/platforms/linux64GccDPInt32Opt/lib \
    -lcompressibleTransportModels -lfiniteVolume -lmeshTools -lradiationModels -lfluidThermophysicalModels -lsolidThermo -lsolidSpecie -lturbulenceModels -lspecie -lcompressibleTurbulenceModels  -o /home/user/OpenFOAM/user-v2606/platforms/linux64GccDPInt32Opt/lib/libSAHCompressibleTurbulenceModel.so

2026-07-25 22:26:31 -0400
========================================
  Finished compile of Turbulence Technical Committee with OpenFOAM
  Gcc system compiler
  linux64GccDPInt32Opt, with SYSTEMOPENMPI sys-openmpi


```