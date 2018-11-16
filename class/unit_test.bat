@echo off

cd /d %~pd0

rem Syntax check
ruby -c unit_test.rb

if %ERRORLEVEL% neq 0 goto :label_end

echo.

ruby unit_test.rb

echo.

:label_end
pause

