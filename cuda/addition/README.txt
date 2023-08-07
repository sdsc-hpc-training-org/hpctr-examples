Hello World (GPU/CUDA)

[1] Load the correct modules for the CUDA Compiler:

module purge
module load slurm
module load gpu
module load cuda

[2] compile:

nvcc -o addition addition.cu

[3] run from interactive node

./addition
