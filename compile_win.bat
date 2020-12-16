@echo off

set prog_path=shootout

call :compile %prog_path%\pidigits
call :compile %prog_path%\nbody
call :compile %prog_path%\binary-tree
call :compile %prog_path%\binary-tree-freelist
call :compile %prog_path%\fannkuch
call :compile %prog_path%\spectral-norm
call :compile %prog_path%\meteor-contest
call :compile %prog_path%\chameneosredux

EXIT /B 0

:compile
echo %~1
set fx=%~1
set GOOS=windows
set GOARCH=amd64
echo go build -o %fx%.exe %fx%.go
go build -o %fx%.exe %fx%.go

set GOOS=js
set GOARCH=wasm
echo go build -o %fx%.wasm %fx%.go
go build -o %fx%.wasm %fx%.go
