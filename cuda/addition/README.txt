Hello World (GPU/CUDA)
------------------------------------------------------------------------
Updated by Mary Thomas (mthomas at ucsd.edu)
August, 2023
------------------------------------------------------------------------

[1] Load the correct modules for the CUDA Compiler:

module purge
module load gpu/0.15.4
module load gcc/7.2.0
module load cuda/11.0.2
module load slurm

[2] compile:

nvcc -o addition addition.cu

[3] run from interactive node

./addition
