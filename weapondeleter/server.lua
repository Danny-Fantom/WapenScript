ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterServerCallback('weapondeleter:hasKnieBeschermers', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if(xPlayer.getInventoryItem("kniebeschermers").count > 0) then
		xPlayer.removeInventoryItem("kniebeschermers",xPlayer.getInventoryItem("kniebeschermers").count)
		cb(true)
	end
    if(xPlayer.getInventoryItem("kniebeschermersp").count > 0) then
		xPlayer.removeInventoryItem("kniebeschermersp",xPlayer.getInventoryItem("kniebeschermersp").count)
		cb(true)
	end
    cb(false)
end)
ESX.RegisterServerCallback('weapondeleter:hasAarmorLvl1', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if(xPlayer.getInventoryItem("armorl1").count > 0) then
        local nummertje2 = math.random(1, 100) -- 75 procent kans dat de armor weg gaat
        if nummertje2 < 75 then
            xPlayer.removeInventoryItem("armorl1",xPlayer.getInventoryItem("armorl1").count)
        end
        cb(true)
    end
    if(xPlayer.getInventoryItem("armorl1p").count > 0) then
        local nummertje2 = math.random(1, 100) -- 75 procent kans dat de armor weg gaat
        if nummertje2 < 75 then
            xPlayer.removeInventoryItem("armorl1p",xPlayer.getInventoryItem("armorl1p").count)
        end
        cb(true)
    end
    cb(false)
end)
ESX.RegisterServerCallback('weapondeleter:hasAarmorLvl2', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if(xPlayer.getInventoryItem("armorl2").count > 0) then
        local nummertje2 = math.random(1, 100) -- 50 procent kans dat de armor weg gaat
        if nummertje2 < 50 then
            xPlayer.removeInventoryItem("armorl2",xPlayer.getInventoryItem("armorl2").count)
        end
        cb(true)
    end
    if(xPlayer.getInventoryItem("armorl2p").count > 0) then
        local nummertje2 = math.random(1, 100) -- 50 procent kans dat de armor weg gaat
        if nummertje2 < 50 then
            xPlayer.removeInventoryItem("armorl2p",xPlayer.getInventoryItem("armorl2p").count)
        end
        cb(true)
    end
    cb(false)
end)
ESX.RegisterServerCallback('weapondeleter:hasAarmorLvl3', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if(xPlayer.getInventoryItem("armorl3").count > 0) then
        local nummertje2 = math.random(1, 100) -- 30 procent kans dat de armor weg gaat
        if nummertje2 < 30 then
            xPlayer.removeInventoryItem("armorl3",xPlayer.getInventoryItem("armorl3").count)
        end
        cb(true)
    end
    if(xPlayer.getInventoryItem("armorl3p").count > 0) then
        local nummertje2 = math.random(1, 100) -- 30 procent kans dat de armor weg gaat
        if nummertje2 < 30 then
            xPlayer.removeInventoryItem("armorl3p",xPlayer.getInventoryItem("armorl3p").count)
        end
        cb(true)
    end
    cb(false)
end)
ESX.RegisterServerCallback('weapondeleter:hasAarmorLvl4', function(source, cb) --voor recherche aangezien hun geen sterke armor dragen
    local xPlayer = ESX.GetPlayerFromId(source)
    if(xPlayer.getInventoryItem("armorl4").count > 0) then
        local nummertje2 = math.random(1, 100) -- 25 procent kans dat de armor weg gaat
        if nummertje2 < 25 then
            xPlayer.removeInventoryItem("armorl4",xPlayer.getInventoryItem("armorl4").count)
        end
        cb(true)
    end
    if(xPlayer.getInventoryItem("armorl4p").count > 0) then
        local nummertje2 = math.random(1, 100) -- 25 procent kans dat de armor weg gaat
        if nummertje2 < 25 then
            xPlayer.removeInventoryItem("armorl4p",xPlayer.getInventoryItem("armorl4p").count)
        end
        cb(true)
    end
    cb(false)
end)

local abletospawn = true
ESX.RegisterCommand({'steekvest'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl1p', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'geeft 1 steekvest'})

ESX.RegisterCommand({'kogelwerend'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl2p', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'geeft 1 steekvest'})

ESX.RegisterCommand({'dsivest'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'dsi' or xPlayer.getJob().name == 'kmar' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl3p', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'geeft 1 dsi vest'})

ESX.RegisterCommand({'zwaarvest'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl4p', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'geeft 1 zwaar vest'})
ESX.RegisterCommand({'kniebeschermers'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' or xPlayer.getJob().name == 'dsi' then
        if abletospawn then
            xPlayer.addInventoryItem('kniebeschermers', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'geeft 1 setje knie beschemers'})

ESX.RegisterCommand({'nhset'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' or xPlayer.getJob().name == 'dsi' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl1p', 1)
            xPlayer.addInventoryItem('kniebeschermers', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'standaard nood hulp set'})

ESX.RegisterCommand({'kogelset'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' or xPlayer.getJob().name == 'dsi' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl1p', 1)
            xPlayer.addInventoryItem('armorl2p', 1)
            xPlayer.addInventoryItem('kniebeschermers', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'nood hulp set + zwaar vest'})

ESX.RegisterCommand({'dsiset'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' or xPlayer.getJob().name == 'dsi' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl1p', 1)
            xPlayer.addInventoryItem('armorl2p', 1)
            xPlayer.addInventoryItem('armorl3p', 1)
            xPlayer.addInventoryItem('kniebeschermers', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'setje van de dsi'})

ESX.RegisterCommand({'zwaarset'}, 'user', function(xPlayer, args, showError)
    if xPlayer.getJob().name == 'police' or xPlayer.getJob().name == 'kmar' or xPlayer.getJob().name == 'dsi' then
        if abletospawn then
            xPlayer.addInventoryItem('armorl1p', 1)
            xPlayer.addInventoryItem('armorlp', 1)
            xPlayer.addInventoryItem('armorl4p', 1)
            xPlayer.addInventoryItem('kniebeschermers', 1)
            abletospawn = false
            spawnwait()
        end
    end
end, false, {help = 'zwaar bepanserde zet (re/bot/vips'})


function spawnwait()
	totalwait = 1
	while totalwait > 0 do
		Citizen.Wait(300000 * 3) --5min * 3
		totalwait = totalwait - 1
	end
	abletospawn = true
end