taskkill /f /fi "WindowTitle eq ServerManager*"
taskkill /f /fi "WindowTitle eq Selecionar ServerManager*"
taskkill /f /im FXServer.exe >nul


rd /s /q cache 
echo -- Cache foi deletada com sucesso...
echo ... %time% - espere um pouco...

:start
start "ServerManager" C:\BorfOfARoleplay\run.cmd +exec server.cfg
echo ... %time% - Iniciando...
