#!/bin/bash

##############
echo "List Modules"
module list

##############
echo "Compile pdpttr.c"
mpicc -o pdpttr.exe pdpttr.c -I$INTEL_MKLHOME/mkl/include ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_scalapack_lp64.a -Wl,--start-group ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_intel_lp64.a ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_core.a ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_sequential.a ${INTEL_MKLHOME}/mkl/lib/intel64/libmkl_blacs_intelmpi_lp64.a -Wl,--end-group -lpthread -lm
