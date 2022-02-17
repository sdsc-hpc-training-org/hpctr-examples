[1] Compile:

module purge 
module load slurm
module load cpu
module load gcc/10.2.0
module load openmpi/4.0.4

mpicc -o mpi_prime mpi_prime.c 


[2] Run:

    sbatch mpi-prime-slurm.sb

To pass value to script:
    sbatch --export=NHI=250000 mpi-prime-slurm.sb 

NOTE: for other compilers, replace "gcc"
with the one you want to use.
 srun --mpi=pmi2 -n 8 --cpu-bind=rank ./mpi_prime
 srun --mpi=pmi2 -n 8 --cpu-bind=rank ./mpi_prime
