CC=icc
FC=ifort

.PHONY: all clean

all: heat_openmp pi_openmp

pi_openmp: pi_openmp.c
	$(CC) -openmp -Wall -g -o $@ $<

heat_openmp: heat_openmp.f90
	$(FC) -fixed -openmp -o $@ $<

clean:
	$(RM) heat_openmp pi_openmp
