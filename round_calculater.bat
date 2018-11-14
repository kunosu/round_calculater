@echo off

cd /d %~pd0

rem Syntax check
ruby -c round_calculater.rb

if %ERRORLEVEL% neq 0 goto :label_end

echo.

ruby round_calculater.rb

echo.

:label_end
pause

