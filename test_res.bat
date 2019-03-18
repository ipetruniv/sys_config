qres.exe /l > Modes.txt"
for /f "tokens=1-5 delims=x, " %%a in Modes.txt do echo /X:%%a /Y:%%b /C:%%c > Resolution.txt
for /f "tokens=*" %%i in Resolution.txt do qres.exe %%i
ping 127.0.0.1 -n 2 -w 1000 > nul
