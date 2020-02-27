@echo off
call _internal\setenv.bat

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" train ^
    --training-data-src-dir "%WORKSPACE%\data_src\aligned" ^
    --training-data-dst-dir "%WORKSPACE%\data_src\aligned" ^
    --model-dir "%WORKSPACE%\model" ^
    --model DEV_FANSEG

copy "%WORKSPACE%\model\FANSeg_256_full_face.h5" "%DFL_ROOT%\nnlib\FANSeg_256_full_face.h5"

pause