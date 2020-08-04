# Setting variable using current file name
set filename=%~f0

## Running for-loop to create file name
@echo off
FOR %%i IN (1 2) DO copy %filename% %filename%%%i
PAUSE
