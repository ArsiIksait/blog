@echo off&color 0a&title ArsiIksait's Blog - Preview&cd %~dp0
start http://localhost:1313/
hugo server
pause