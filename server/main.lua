local FRMK = nil
if Config.Framework == 'qb' then
    FRMK = exports['qb-core']:GetCoreObject()
elseif Config.Framework == 'esx' then
    FRMK = exports["es_extended"]:getSharedObject()
end

RegisterServerEvent("sayer-randombox:removeItem")
AddEventHandler("sayer-randombox:removeItem", function(item)
    local src = source
    local Player = nil
    if Config.Framework == 'qb' then
        Player = FRMK.Functions.GetPlayer(src) 
        Player.Functions.RemoveItem(item, 1) 
    elseif Config.Framework == 'esx' then
        Player = FRMK.GetPlayerFromId(src)
        Player.removeInventoryItem(item, 1)
    end
end) 

CreateThread(function()
    for k,v in pairs(Config.Useables) do
        if Config.Framework == 'qb' then
            FRMK.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent('sayer-randombox:OpenBox', source, k,v)
            end)
        elseif Config.Framework == 'esx' then
            FRMK.RegisterUsableItem(k, function(source, item)
                TriggerClientEvent('sayer-randombox:OpenBox', source, k,v)
            end)
        end
    end
end)

RegisterNetEvent('sayer-randombox:server:GetReward', function(value)
    local src = source
    local Player = nil
    if Config.Framework == 'qb' then
        Player = FRMK.Functions.GetPlayer(src) 
        for i = 1, value.NumberOfItems, 1 do
            local item = value.Items[math.random(1, #value.Items)]
            Player.Functions.AddItem(item, value.ItemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, FRMK.Shared.Items[item], 'add')
            Wait(500)
        end
        if value.HasRare then
            if value.RareItemChance > math.random(1,100) then
                local rareitem = value.RareItem
                local rareamount = value.RareItemAmount
                Player.Functions.AddItem(rareitem, rareamount)
                TriggerClientEvent('inventory:client:ItemBox', src, FRMK.Shared.Items[rareitem], 'add')
                TriggerClientEvent('QBCore:Notify', src, "You Received a Rare Item", 'success')
            end
        end
    elseif Config.Framework == 'esx' then
        Player = GetPlayerFromId(src)
        for i = 1, value.NumberOfItems, 1 do
            local item = value.Items[math.random(1, #value.Items)]
            Player.addInventoryItem(item, value.ItemAmount)
            Wait(500)
        end
        if value.HasRare then
            if value.RareItemChance > math.random(1,100) then
                local rareitem = value.RareItem
                local rareamount = value.RareItemAmount
                Player.addInventoryItem(rareitem, rareamount)
                Player.showNotification("You Received a Rare Item")
            end
        end
    end
end)
