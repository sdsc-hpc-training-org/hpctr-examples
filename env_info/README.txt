# Checking your environment on HPC node:

[1] load the right modules
module purge
module load slurm
module load cpu
module load gcc/10.2.0
module load openmpi/4.0.4

[2] Run:

sbatch env-slurm.sb
