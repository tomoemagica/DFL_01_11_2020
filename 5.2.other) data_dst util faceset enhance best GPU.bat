@echo off
call _internal\setenv.bat

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" facesettool enhance ^
    --input-dir "%WORKSPACE%\data_dst\aligned"

pause