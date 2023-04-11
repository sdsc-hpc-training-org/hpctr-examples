C     PROGRAM sample: Example to illustrate debugging process
C
      Program sample
      implicit none
      include "mpif.h"
      integer status(MPI_STATUS_SIZE)
      integer my_id,nproc,ierr
      integer nmax, i, l
      real u(100), r(100)
      real delx

      delx = 0.1e0
      nmax = 100

C******************************************************************
C      Initialize MPI Library Routines
C******************************************************************
      call mpi_init(ierr)
      call mpi_comm_rank(mpi_comm_world,my_id,ierr)
      call mpi_comm_size(mpi_comm_world,nproc,ierr)

C******************************************************************
C      Initialize variables
C******************************************************************
      do i = 1 , nmax
         u(i) = delx * (nmax*my_id+i)
      enddo

C******************************************************************
C      Computations < We make one array bounds mistake here >
C****************************************************************** 
 
      if (my_id.eq.0) then
         u(1)   = 5e0
         r(1)   = 1e0
         r(nmax)= 1e0
         do i = 2, nmax-1
           r(i) = u(i-2)-2*u(i)+u(i+1)
         enddo
      endif

C******************************************************************
C       Processor 0 executes this code
C******************************************************************
      if (my_id.eq.0) then

          do i = 1, nproc - 1

C******* Send r(nmax) to all other processors *********************
C******* We made a mistake here. i in the mpi_send call below ***** 
C******* should be nmax                      **********************
          write(*,*)"Proc ",my_id," sending", r(3), "to proc", i
          call mpi_send(r,i,mpi_real,i,i,
     1                 mpi_comm_world,ierr)
         enddo
      endif
C******************************************************************
C       Other processors (not zero) execute this code
C******************************************************************
      if(my_id.ne.0) then 
          do i = 1, nmax
             r(i) = 0.0
          enddo
C****** Receive r from processor 0
          call mpi_recv(r,nmax,mpi_real,0,my_id,
     1                 mpi_comm_world,status,ierr)
          write(*,*)"Proc ",my_id, "received value", r(3)
      endif
C******************************************************************
         
      call mpi_finalize(ierr)
      end
