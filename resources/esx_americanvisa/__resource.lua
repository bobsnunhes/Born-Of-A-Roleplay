client_script('client/main.lua')

server_script "@mysql-async/lib/MySQL.lua"
server_script "server/server.lua"

ui_page('html/index.html')

files({
  'html/index.html',
  'html/css/style.css',
  'html/css/reset.css',
  'html/css/materialize.css',
  'html/img/visa_erased.png',
  'html/js/listener.js',
  'html/js/init.js',
  'html/js/materialize.js'
})
