[1] Compile:

#### MODULE ENV: updated 01/28/2020 (MPT)
 module purge
 module load slurm
 module load cpu
 module load gcc/10.2.0
 module load openmpi/4.1.1

mpif90 -o hello_mpi hello_mpi.f90

[2a] Run using Slurm:

sbatch hello-mpi-slurm.sb
