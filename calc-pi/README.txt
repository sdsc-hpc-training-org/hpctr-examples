CALC-PI: PI= 3.141592653589793238462643383279502884197
[1] Compile:

#### MODULE ENV: updated 01/28/2020 (MPT)
module purge
module load slurm
module load cpu/0.15.4  
module load gcc/10.2.0
module load openmpi/4.0.4

mpicc -o pi_mpi pi_mpi.c

[2a] Run using Slurm:

sbatch pi-mpi.sb
