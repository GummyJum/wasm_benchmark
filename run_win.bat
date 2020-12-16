@echo off
set prog_path=shootout

set n_times=5
call :run_n_times %prog_path%\pidigits 10000 %n_times%
call :run_n_times %prog_path%\nbody 50000000 %n_times%
call :run_n_times %prog_path%\binary-tree 15 %n_times%
call :run_n_times %prog_path%\binary-tree-freelist 15 %n_times%
call :run_n_times %prog_path%\fannkuch 12 %n_times%
call :run_n_times %prog_path%\spectral-norm 5500 %n_times%
call :run_n_times %prog_path%\meteor-contest 2098 %n_times%
call :run_n_times %prog_path%\chameneosredux 6000000 %n_times%

EXIT /B 0

:run_n_times
for /L %%i in (1,1,%~3) do %~1 -n %~2