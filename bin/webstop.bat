@echo off

REM find & stop service
tasklist | findstr /i mysqld.exe && taskkill /f /im mysqld.exe
tasklist | findstr /i php-cgi.exe && taskkill /f /im php-cgi.exe
tasklist | findstr /i nginx.exe && taskkill /f /im nginx.exe

REM close cmd window
exit
