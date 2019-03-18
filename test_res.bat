qres.exe /l > "%USERPROFILE%\Desktop\Modes.txt"
for /f "tokens=1-5 delims=x, " %%a in (%USERPROFILE%\Desktop\Modes.txt) do echo /X:%%a /Y:%%b /C:%%c > "%USERPROFILE%\Desktop\Resolution.txt"
for /f "tokens=*" %%i in (%USERPROFILE%\Desktop\Resolution.txt) do C:\Qres.exe %%i
ping 127.0.0.1 -n 2 -w 1000 > nul
rem del %USERPROFILE%\Desktop\Modes.txt
rem del %USERPROFILE%\Desktop\Resolution.txt
