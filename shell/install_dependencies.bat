ECHO OFF

REM A batch script to install dependancies needed to view the database 


python ../python/setup.py PYTHON_PATH > Output
SET /p PYTHON_PATH=<Output
SET PATH=%PATH%;%PYTHON_PATH%
ECHO %PYTHON_PATH%
python ../python/setup.py PYTHON_ACTIVATE > Output 
SET /p Python_Act=<Output
call :testargs "%Python_Act%"
ECHO %Python_Act%


pip install dash==1.4.1 --user 
pip install pandas --user
PAUSE

:testargs
call %~s1
goto :eof