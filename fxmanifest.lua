fx_version 'bodacious'
game 'gta5'

author 'AMonkeys'
description 'Sistema de Lotería para ESX'
version '1.0.0'

client_scripts {
    'client.lua',
}

server_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'server.lua',
}

shared_scripts {
    'items.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'img/lottery_ticket.png'
}

dependencies {
    'es_extended'
}
