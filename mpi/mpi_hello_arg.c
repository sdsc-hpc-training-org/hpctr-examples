/******************************************************************************
* FILE: mpi_hello.c
* DESCRIPTION:
*   MPI tutorial example code: Simple hello world program
* AUTHOR: Blaise Barney
* LAST REVISED: 03/05/10
******************************************************************************/
#include "mpi.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define  MASTER		0

int main (int argc, char *argv[])
{
   int   numtasks, taskid, len;
   char hostname[MPI_MAX_PROCESSOR_NAME];
   char *tname;

   MPI_Init(&argc, &argv);
   MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
   MPI_Comm_rank(MPI_COMM_WORLD,&taskid);
   MPI_Get_processor_name(hostname, &len);
   if (taskid == MASTER)
      printf("MASTER: Number of MPI tasks is: %d\n",numtasks);
   MPI_Finalize();

   if(argc > 1)
   {
      tname = argv[1];
   } else {
      tname= "HPC Trainee";      
   }
   printf ("Hello %s,  from task %d on %s!\n",tname, taskid, hostname);
}

