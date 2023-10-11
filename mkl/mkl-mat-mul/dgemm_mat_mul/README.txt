### 
# NOTE: this is a SERIAL CODE
#
[1] Compile:
## load module environemnt
module purge
module load cpu/0.15.4
module load gpu/0.15.4 
module load intel/19.0.5.281 
module load intel-mkl/2020.3.279
module load slurm

ifort -o dgemm_mat_mul  -mkl -static-intel dgemm_mat_mul.f

[2] Run:

sbatch dgemm-slurm.sb

NOTE: for other compilers, replace "ifort"
with the one you want to use.
