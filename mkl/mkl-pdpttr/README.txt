### See description in Expanse 101 tutorial:
### Updated:  January 28, 2022
/* This program illustrates the use of the ScaLAPACK routines         */
/* PDPTTRF and PDPTTRS to factor and solve a symmetric positive       */
/* definite tridiagonal system of linear equations T*x = b in         */
/* two distinct contexts.                                             */

[1] Compile:
#Env working: 10/11/2023 (MPT)
module purge
module load slurm
module load cpu/0.15.4
module load intel/19.1.1.217
module load mvapich2/2.3.6
module load intel-mkl

###############
## Compile pdpttr.c
mpicc -o pdpttr.exe pdpttr.c -I$INTEL_MKLHOME/mkl/include ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_scalapack_lp64.a -Wl,--start-group ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_intel_lp64.a ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_core.a ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_sequential.a ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_blacs_intelmpi_lp64.a -Wl,--end-group -lpthread -lm


[2] Run:

sbatch pdpttr-slurm.sb

