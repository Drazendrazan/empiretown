ESX = nil
ESX = exports["es_extended"]:getSharedObject()

-- Raccolta patate
RegisterServerEvent('farmer:raccoltapotato') 
AddEventHandler('farmer:raccoltapotato', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local potato = xPlayer.getInventoryItem('potato').count
    if potato < 50 then
        if xPlayer.job then
            TriggerClientEvent('farmer:anim', _source)
            Citizen.Wait(5000)
            local countpotato = math.random(1,1)
            xPlayer.addInventoryItem('potato', countpotato)
            TriggerClientEvent('farmer:unfreeze', _source)
            TriggerClientEvent('esx:showNotification', _source, 'Hai raccolto '.. ESX.Math.Round(countpotato) .. ' delle patate')
        end
    end
end)

-- Raccolta cotton
RegisterServerEvent('farmer:raccoltacotton') 
AddEventHandler('farmer:raccoltacotton', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local cotton = xPlayer.getInventoryItem('cotton').count
    if cotton < 50 then
        if xPlayer.job then
            TriggerClientEvent('farmer:anim', _source)
            Citizen.Wait(5000)
            local countcotton = math.random(1,1)
            xPlayer.addInventoryItem('cotton', countcotton)
            TriggerClientEvent('farmer:unfreeze', _source)
            TriggerClientEvent('esx:showNotification', _source, 'Hai raccolto '.. ESX.Math.Round(countcotton) .. ' del cotone')
        end
    end
end)