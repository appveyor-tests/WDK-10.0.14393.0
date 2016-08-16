@echo off

setlocal

set Configuration=Release

if not X%1==X set Configuration=%1

call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" x64

cd %~dp0..\build\VStudio
if exist build\ del /s/q build >nul

devenv winfsp.sln /build "%Configuration%|x64"
if errorlevel 1 goto fail
devenv winfsp.sln /build "%Configuration%|x86"
if errorlevel 1 goto fail

exit /b 0

:fail
exit /b 1
