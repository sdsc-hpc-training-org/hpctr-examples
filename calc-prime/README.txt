[1] Compile:

module purge 
module load slurm
module load cpu
module load gcc/10.2.0
module load openmpi/4.1.1

mpicc -o mpi_prime mpi_prime.c 


[2] Run:

    sbatch mpi-prime-slurm.sb

To pass value to script:
    sbatch --export=NHI=250000 mpi-prime-slurm.sb 

NOTE: for other compilers, replace "gcc"
with the one you want to use.
 
[3] Run using an interactive node:
Method [3a]
Request the interactive node using the "srun" command:

srun --partition=debug  --pty --account=use300 --nodes=1 --ntasks-per-node=24  --mem=8G -t 00:30:00 --wait=0 --export=ALL /bin/bash

Run the code using mpirun:
mpirun -n 64 ./mpi_prime 5000000

Method [3b]
Run job on an interactive node using the "salloc" command.
salloc - Obtain a Slurm job allocation (a set of nodes), execute a command, and then release the allocation when the command is finished.
For more information, see the Slurm page: https://slurm.schedmd.com/salloc.html

You can request resources using "salloc" and then use either "srun" or "mpirun" to run your MPI jobs. After you are done you can exit to relinquish the resources reserved by salloc. An example of using "salloc"

salloc --nodes=2 --ntasks-per-node=4 --cpus-per-task=2 -p debug --account=use300 -t 00:30:00 --mem=5G

Once you run this command, you will be on an interactive node, but the nodeID will not change. You can use 'srun' to execute your MPI code on the node:

srun --mpi=pmi2 -n 8 ./calc-prime
