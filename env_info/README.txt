# Checking your environment on HPC node:

[1] Load module file(s) into the shell environment
module purge
module load cpu
module load gcc
module load mvapich2
module load slurm

[2] Run:

sbatch env-slurm.sb
