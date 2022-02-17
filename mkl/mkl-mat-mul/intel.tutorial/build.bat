@echo off
REM ==============================================================
REM
REM SAMPLE SOURCE CODE - SUBJECT TO THE TERMS OF SAMPLE CODE LICENSE AGREEMENT,
REM http://software.intel.com/en-us/articles/intel-sample-source-code-license-agreement/
REM
REM Copyright 2005-2018 Intel Corporation
REM
REM THIS FILE IS PROVIDED "AS IS" WITH NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT
REM NOT LIMITED TO ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
REM PURPOSE, NON-INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS.
REM
REM =============================================================

set SRCDIR=src\
set DESTDIR=release\
set LIBFLAGS=/Qmkl
set FC=ifort

if "%1"=="" goto compile
if /i "%1"=="clean" goto clean
if /i "%1"=="run_dgemm_example" goto run_dgemm_example
if /i "%1"=="run_dgemm_with_timing" goto run_dgemm_with_timing
if /i "%1"=="run_matrix_multiplication" goto run_matrix_multiplication
if /i "%1"=="run_dgemm_threading_effect_example" goto run_dgemm_threading_effect_example
if /i "%1"=="help" goto helpmsg
goto helpmsg

:compile
mkdir %DESTDIR% 2>nul
echo %FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%dgemm_example.f /Fe%DESTDIR%dgemm_example.exe
%FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%dgemm_example.f /Fe%DESTDIR%dgemm_example.exe
echo %FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%dgemm_with_timing.f /Fe%DESTDIR%dgemm_with_timing.exe
%FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%dgemm_with_timing.f /Fe%DESTDIR%dgemm_with_timing.exe
echo %FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%matrix_multiplication.f /Fe%DESTDIR%matrix_multiplication.exe
%FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%matrix_multiplication.f /Fe%DESTDIR%matrix_multiplication.exe
echo %FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%dgemm_threading_effect_example.f /Fe%DESTDIR%dgemm_threading_effect_example.exe
%FC% %LIBFLAGS% /Fo%DESTDIR% %SRCDIR%dgemm_threading_effect_example.f /Fe%DESTDIR%dgemm_threading_effect_example.exe
goto eof

:run_dgemm_example
%DESTDIR%dgemm_example.exe
goto eof

:run_dgemm_with_timing
%DESTDIR%dgemm_with_timing.exe
goto eof

:run_matrix_multiplication
%DESTDIR%matrix_multiplication.exe
goto eof

:run_dgemm_threading_effect_example
%DESTDIR%dgemm_threading_effect_example.exe
goto eof

:helpmsg
echo "Syntax: build [|run_dgemm_example|run_dgemm_with_timing"
echo "               |run_matrix_multiplication"
echo "               |run_dgemm_threading_effect_example|clean]"
echo "     build - build all examples"
echo "     build run_dgemm_example - run dgemm_example"
echo "     build run_dgemm_with_timing - run dgemm_with_timing"
echo "     build run_matrix_multiplication - run matrix_multiplication"
echo "     build run_dgemm_threading_effect_example - run dgemm_threading_effect_example"
echo "     build clean - clean build directory"
goto eof


:clean
echo removing files...
rmdir /Q /S %DESTDIR% 2>nul

:eof
