[1] Compile:

module purge
module load slurm
module load cpu/0.15.4  
module load gcc/10.2.0
module load openmpi/4.0.4

mpif90 -o hello_mpi hello_mpi.f90
or
mpicc -o mpi_hello mpi_hello.c


[2] Run using batch script:

sbatch hellompi-slurm.sb
OR
sbatch mpi-hello.sb

NOTE: for other compilers, replace "gcc"
with the one you want to use.
 srun --mpi=pmi2 -n 8 --cpu-bind=rank ./hello_k
 srun --mpi=pmi2 -n 8 --cpu-bind=rank ./hello_k


[3] Run using an interactive node:

To run on an interactive node, you need to use the salloc command.
salloc - Obtain a Slurm job allocation (a set of nodes), execute a command, and then release the allocation when the command is finished.
For more information, see the Slurm page: https://slurm.schedmd.com/salloc.html

You can request resources using "salloc" and then use either "srun" or "mpirun" to run your MPI jobs. After you are done you can exit to relinquish the resources reserved by salloc. An example of using "salloc"

salloc --nodes=2 --ntasks-per-node=4 --cpus-per-task=2 -p debug --account=use300 -t 00:30:00 --mem=5G

Once you run this command, you will be on an interactive node, but the nodeID will not change. You can use 'srun' to execute your MPI code on the node:

srun --mpi=pmi2 -n 8 ./hello_mpi_f90 
