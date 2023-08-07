[1] Interactive computing:running GnuPlt
Logon using X11 argument:  -Y 

[2] Obtain an interactive node:

srun --partition=debug  --pty --account=use300 --nodes=1 --ntasks-per-node=24  --mem=8G -t 00:30:00 --wait=0 --export=ALL /bin/bash

[3] Set the module environment
module purge
module load cpu/0.15.4  
module load gcc/10.2.0
module load gnuplot/5.2.8
module load slurm


[4] Launch gnuplt:

[mthomas@login01 ]$ gnuplot
G N U P L O T
Version 5.2 patchlevel 8    last modified 2019-12-01 
Copyright (C) 1986-1993, 1998, 2004, 2007-2019
Thomas Williams, Colin Kelley and many others
gnuplot home:     http://www.gnuplot.info
faq, bugs, etc:   type "help FAQ"
immediate help:   type "help"  (plot window: hit 'h')
Terminal type is now 'x11'
gnuplot> plot sin(x)
gnuplot> 


