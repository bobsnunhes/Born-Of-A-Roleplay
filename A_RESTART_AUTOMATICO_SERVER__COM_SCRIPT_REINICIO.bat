@echo off
cls
color 0c
:start

echo SCRIPT DE REINICIO AUTOMATICO

timeout /t 10 >null

start "ServerManager" C:\BorfOfARoleplay\run.cmd +exec server.cfg
echo ... %time% - Iniciando servidor

timeout /t 15 >null
echo ... %time% - Carregando recursos...

timeout /t 1 >null
echo ... %time% - Servidor rodara por 8 horas...

timeout /t 28800 >null
echo ... %time% - Hora de reiniciar o servidor...

timeout /t 2 >null

taskkill /f /fi "WindowTitle eq ServerManager*"
taskkill /f /fi "WindowTitle eq Selecionar ServerManager*"
taskkill /f /im FXServer.exe >nul


rd /s /q cache 
echo -- Cache foi deletada com sucesso...
echo ... %time% - espere um pouco...

timeout /t 12 >null
echo ... %time% - mais um pouco...

timeout /t 1 >null
echo ... %time% - ta quase....

timeout /t 1 >null
echo ... %time% - ok... vamos startar!

timeout /t 1 >null
goto start