taskkill /f /fi "WindowTitle eq Server*"
taskkill /f /im FXServer.exe >nul


rd /s /q cache 
echo -- Cache foi deletada com sucesso...
echo ... %time% - espere um pouco...