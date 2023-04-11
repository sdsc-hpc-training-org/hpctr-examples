/*
* Copyright 1993-2010 NVIDIA Corporation. All rights reserved. *
* NVIDIA Corporation and its licensors retain all intellectual property and
*
* Updated by Mary Thomas, April 2023, for simple cuda compile example 
*/
#include <stdio.h>
__global__ void kernel( void ) { }
int main( void ) { kernel<<<1,1>>>();
printf( "Hello,  SDSC HPC Training World!\n" ); return 0;
}
