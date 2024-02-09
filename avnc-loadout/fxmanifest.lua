fx_version 'cerulean'
game 'gta5'

description 'avnc-loadout'
version '1.0'
author 'Akyolm383'

shared_scripts {
    'shared/config.lua',
    'shared/locale.lua',
    '@ox_lib/init.lua'
}

client_scripts {
    "client/main.lua",
}
 
server_scripts {
    "server/main.lua",
}

lua54 'yes'
