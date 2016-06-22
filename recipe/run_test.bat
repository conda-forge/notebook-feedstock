pip install -r requirements.txt

rmdir /s /q "%PREFIX%\share\jupyter\kernels"

python -m nose -v notebook || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
