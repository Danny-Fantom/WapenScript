shared_script '@WaveShield/resource/waveshield.lua' --this line was automatically written by WaveShield

shared_script '@wave/waveshield.lua' --this line was automatically written by WaveShield

fx_version 'adamant'
game 'gta5'
use_fxv2_oal 'true'

client_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'lists/weapons.lua',
    'lists/bones.lua',
    'client.lua'
}

server_scripts {
    'config.lua',
    'server.lua'
}

dependencies {
    'es_extended'
}

