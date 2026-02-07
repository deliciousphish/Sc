@echo off
REM ====================================================
REM Build script for solid-pancake on Windows
REM This will create Main.exe in the dist folder
REM ====================================================

echo.
echo [*] Checking Python installation...
python --version || (
    echo Python is not installed. Please install Python 3.11+ from https://www.python.org/downloads/
    pause
    exit /b 1
)

echo.
echo [*] Installing PyInstaller...
pip install pyinstaller

echo.
echo [*] Building executable with PyInstaller...
pyinstaller --onefile Main.py

echo.
echo [*] Build complete!
echo The executable is located in the dist folder: dist\Main.exe

pause
