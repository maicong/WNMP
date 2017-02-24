@echo off

REM find and stop service
tasklist | findstr /i mysqld.exe && taskkill /f /im mysqld.exe
tasklist | findstr /i php-cgi.exe && taskkill /f /im php-cgi.exe
tasklist | findstr /i nginx.exe && taskkill /f /im nginx.exe

REM set variable
set DIR=C:\server
set PATH=%PATH%;%DIR%\bin;%DIR%\mysql;%DIR%\php;%DIR%\nginx

REM check and hide running service
where mysqld.exe >nul 2>&1 && hiderun.exe mysqld.exe
where php-cgi.exe >nul 2>&1 && hiderun.exe php-cgi.exe -c %DIR%\php\php.ini -b 127.0.0.1:9000
where nginx.exe >nul 2>&1 && hiderun.exe nginx.exe -p %DIR%\nginx

REM clear variable
set DIR=
set PATH=

REM close cmd window
exit
