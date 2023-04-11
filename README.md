# SDSC HPC Training Repo:  hpctr-examples

Repository for example test codes used in training

## Last tested:  Jan 28, 2022, on Expanse

## Directory contents:
```
[mthomas@login01 hpctr-examples]$ tree -L 3 | grep -v out
.
├── basic_par
│   ├── collectives
│   │   ├── allreduce
│   │   ├── allreduce.f90
│   │   ├── allreduce.sb
│   │   ├── bcast
│   │   ├── bcast.f90
│   │   ├── bcast.sb
│   │   ├── fact2.f90
│   │   ├── factorial
│   │   ├── factorial.f90
│   │   ├── factorial.sb
│   │   └── factorial_ser.f90
│   ├── domain
│   │   ├── data0.dat
│   │   ├── data1.dat
│   │   ├── data2.dat
│   │   ├── heat_mpi
│   │   ├── heat_mpi.exe
│   │   ├── heat_mpi.f
│   │   ├── heat_mpi.f90
│   │   └── heat_mpi.sb
│   ├── misc
│   │   ├── compile_profile.readme.txt
│   │   ├── data0.dat
│   │   ├── data1.dat
│   │   ├── data2.dat
│   │   ├── heat_mpi.f
│   │   ├── heat_mpi.f90
│   │   ├── heat_mpi_profile.exe
│   │   ├── heat_mpi_profile.exe.3.33194.1.mpiP
│   │   ├── heat_mpi_profile.sb
│   │   ├── sample.f
│   │   └── sample.sb
│   ├── module.env.setup
│   ├── openmp
│   │   ├── heat_openmp
│   │   ├── heat_openmp.f90
│   │   ├── heat_openmp.sb
│   │   ├── Makefile
│   │   ├── pi_openmp
│   │   ├── pi_openmp.c
│   │   └── pi_openmp.sb
│   ├── point-to-point
│   │   ├── mpi-deadlock
│   │   ├── mpi-deadlock.c
│   │   ├── mpi-deadlock-fix
│   │   ├── mpi-deadlock.sb
│   │   ├── mpi-send-recv
│   │   ├── mpi-send-recv.c
│   │   └── mpi-send-recv.sb
│   ├── ptop
│   │   ├── blocking.c
│   │   ├── blocking.exe
│   │   ├── blocking.sb
│   │   ├── deadlock.c
│   │   ├── deadlock.exe
│   │   ├── deadlock-fix1.c
│   │   ├── deadlock-fix1.exe
│   │   ├── deadlock-fix1.sb
│   │   ├── deadlock-fix2-nb.c
│   │   ├── deadlock-fix2-nb.exe
│   │   ├── deadlock-fix2-nb.sb
│   │   ├── deadlock.sb
│   │   ├── nonblocking.c
│   │   ├── nonblocking.exe
│   │   └── nonblocking.sb
│   └── simple
│       ├── hello_mpi
│       ├── hello_mpi.f90
│       ├── hellompi-slurm.sb
│       ├── mpi_hello
│       ├── mpi_hello.c
│       ├── mpi-hello.sb
│       ├── pi_mpi
│       ├── pi_mpi.c
│       ├── pi_mpi.exe
│       ├── pi-mpi.sb
│       └── README.txt
├── calc-prime
│   ├── mpi_prime
│   ├── mpi_prime.c
│   ├── mpi_prime.c.no.compile
│   ├── mpi-prime-slurm.sb
│   │   └── mpi_prime.c
│   └── README.txt
├── cuda
│   ├── 1d_stencil
│   │   ├── 1d_stencil.cu
│   │   └── exercise
│   ├── addition
│   │   ├── exercise
│   │   ├── vector_add_gpu2.cu
│   │   ├── vector_add_gpu.c
│   │   └── vector_add_gpu.cu
│   ├── hello_world
│   │   ├── hello_world_cpu.c
│   │   ├── hello_world_cpu.cu
│   │   └── hello_world_device.cu
│   ├── README
│   └── square_array
│       ├── exercise
│       └── square_array.cu
├── env_info
│   └── env-slurm.sb
├── hybrid
│   ├── hello_hybrid
│   ├── hello_hybrid.c
│   ├── hybrid-slurm.sb
│   └── README.txt
├── LICENSE
├── mkl
│   ├── mkl-mat-mul
│   │   ├── dgemm_mat_mul
│   │   └── intel.tutorial
│   └── mkl-pdpttr
│       ├── compile.pdpttr.expanse.sh
│       ├── load.modules.mkl.pdpttr.txt
│       ├── pdpttr.c
│       ├── pdpttr-slurm.sb
│       └── README.txt
├── mpi
│   ├── hello_mpi
│   ├── hello_mpi_aocc
│   ├── hello_mpi.f90
│   ├── hello_mpi_f90
│   ├── hello_mpi_f_aocc
│   ├── hello_mpi_f_gnu
│   ├── hello_mpi_gnu
│   ├── hellompi-slurm-aocc.sb
│   ├── hellompi-slurm-gnu.sb
│   ├── hellompi-slurm-intel.sb
│   ├── hellompi-slurm.sb
│   ├── hellompi-slurm-v2.sb
│   ├── interactive.md
│   └── README.txt
├── mpi-openmp-hybrid
│   ├── hello_hybrid
│   ├── hello_hybrid.c
│   ├── hybrid-slurm.sb
│   └── README.txt
├── openacc
│   ├── laplace2d.c
│   ├── laplace2d.openacc.exe
│   ├── openacc-gpu-shared.sb
│   ├── README.txt
│   ├── timer.h
│   ├── vecadd.c
│   ├── vecadd.cpu.c
│   ├── vecadd.openacc.exe
│   └── vecadd-openacc-gpu-shared.sb
├── openmp
│   ├── hello_openmp
│   ├── hello_openmp.f90
│   ├── openmp-slurm-shared.sb
│   └── README.txt
└── README.md


```
<hr>
