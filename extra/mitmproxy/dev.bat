@echo off
set VENV=..\venv.mitmproxy

virtualenv %VENV% --always-copy
if %errorlevel% neq 0 exit /b %errorlevel%
call %VENV%\Scripts\activate.bat
if %errorlevel% neq 0 exit /b %errorlevel%
pip install --src .. -r requirements.txt
if %errorlevel% neq 0 exit /b %errorlevel%

echo.
echo * Created virtualenv environment in %VENV%.
echo * Installed all dependencies into the virtualenv.
echo * Activated virtualenv environment.
