@echo off

set prog_path=shootout

nbody -n 50000000

binary-tree 15

fannkuch 12

spectral-norm -n 5500

mandelbrot -n 16000

meteor -n 2098

%prog_path%\pidigits -n 10000

chameneosredux 6000000