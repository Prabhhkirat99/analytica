@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (set PY=py) else (set PY=python)
if not exist ".venv\Scripts\python.exe" (
  %PY% -m venv .venv
  if errorlevel 1 goto fail
)
call ".venv\Scripts\activate.bat"
if errorlevel 1 goto fail
python -m pip install --upgrade pip
if errorlevel 1 goto fail
python -m pip install -r requirements.txt
if errorlevel 1 goto fail
python -m streamlit run app.py
if errorlevel 1 goto fail
goto end
:fail
echo Startup failed. Check Python 3 installation and PATH.
pause
:end
endlocal
