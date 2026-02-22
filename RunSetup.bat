@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    powershell -ExecutionPolicy Bypass -File "%~dp0AutoSetup.ps1"
) else (
    powershell -Command "Start-Process '%~dp0AutoSetup.ps1' -Verb RunAs"
)