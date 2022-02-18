[1] Compile:

module purge
module load slurm
module load cpu
module load aocc

flang -fopenmp -o hello_openmp hello_openmp.f90

[2] Run:

## from interactive nodes:
# might need to set number of OMP threads:
export OMP_NUM_THREADS=16
./hello_openmp

## using batch queue
sbatch openmp-slurm-shared.sb
