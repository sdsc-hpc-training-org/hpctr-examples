[1] Compile:

module reset
module load gcc/10.2.0

gfortran -fopenmp -ffixed-form -o hello_openmp hello_openmp.f90

[2] Run:

## from interactive nodes:
# might need to set number of OMP threads:
export OMP_NUM_THREADS=16
./hello_openmp

## using batch queue
sbatch openmp-slurm-shared.sb
