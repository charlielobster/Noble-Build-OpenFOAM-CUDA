
## HPC Cluster Example

```text
               [ STEP 1: OPENMPI RUNTIME LAUNCH ]
             User executes: mpirun -np 8 --host machineA:6,machineB:2
                                     |
                +--------------------+--------------------+

                | (Network Fabric via SSH)                |
                v                                         v
   [ MACHINE A (Main/New GPU) ]               [ MACHINE B (Remote/Old GPU) ]
   Spawns 6 local MPI Ranks                  Spawns 2 local MPI Ranks

        |                                          |
   [ STEP 2: MATRIX DISCRETIZATION ]          [ STEP 2: MATRIX DISCRETIZATION ]
   CPUs build equations for domains 0-5       CPUs build equations for domains 6-7

        |                                          |
   [ STEP 3: AMGX INTERFACE CONVERSION ]      [ STEP 3: AMGX INTERFACE CONVERSION ]
   OpenFOAM LDU Matrix -> GPU CSR Matrix      OpenFOAM LDU Matrix -> GPU CSR Matrix

        |                                          |
   [ STEP 4: LOCAL GPU SOLVE ]                [ STEP 4: LOCAL GPU SOLVE ]
   Passes data to local AmgX instance         Passes data to local AmgX instance
   Solves pressure on New GPU                 Solves pressure on Old GPU

        |                                          |
        +------------------< MPI INTER-NODE >------+
                     (Ranks sync border data via network)

```
