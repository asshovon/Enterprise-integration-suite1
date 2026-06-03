@echo off
title C# Enterprise Integration App
echo =================================================================
echo        C# Enterprise App Integration Suite (Local Launcher)
echo =================================================================
echo.
echo Launching local web service on http://localhost:3000...
echo No Node.js required! Hosting pre-compiled static assets using Python.
echo.
start "" "http://localhost:3000"
python -m http.server 3000 --directory dist
if %errorlevel% neq 0 (
    echo Python command failed, trying fallback...
    python3 -m http.server 3000 --directory dist
)
pause
