taskkill /f /fi "WindowTitle eq cmd.exe*"
taskkill /f /im FXServer.exe >nul


rd /s /q cache 
echo -- Cache foi deletada com sucesso...
echo ... %time% - espere um pouco...