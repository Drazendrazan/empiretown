fx_version 'cerulean'

game 'gta5'

version '1.1.1'

author 'wasabirobby#5110'

description 'A simple yet smooth ESX based mining script'

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/style.css',
    'ui/main.js'
}

client_scripts {
    'client/client.lua',
    'client/functions.lua',
    'client/skillbar.lua',
    'config.lua'
}

server_scripts {
    'server/server.lua',
    'config.lua'
}

shared_script '@es_extended/imports.lua'
