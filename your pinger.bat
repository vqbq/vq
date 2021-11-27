@echo off
title {        } pinger

     

set /p ip="Ip to Ping:: "
goto ping


:ping
set /a num=%random% %%9
title {        } Pinger - Ctrl+C Exit
color %num%
ping -n 0 %ip% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo %ip% is offline) 
ping localhost -n 0 >nul
goto ping