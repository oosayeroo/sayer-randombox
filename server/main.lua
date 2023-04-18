local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("sayer-randombox:removeItem")
AddEventHandler("sayer-randombox:removeItem", function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    Player.Functions.RemoveItem(item, 1) 
end) 

CreateThread(function()
    for k,v in pairs(Config.Useables) do
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent('sayer-randombox:OpenBox', source, k,v)
        end)
    end
end)

RegisterNetEvent('sayer-randombox:server:GetReward', function(value)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for i = 1, value.NumberOfItems, 1 do
        local item = value.Items[math.random(1, #value.Items)]
        Player.Functions.AddItem(item, value.ItemAmount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
        Wait(500)
    end
    if value.HasRare then
        if value.RareItemChance > math.random(1,100) then
            local rareitem = value.RareItem
            local rareamount = value.RareItemAmount
            Player.Functions.AddItem(rareitem, rareamount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rareitem], 'add')
            TriggerClientEvent('QBCore:Notify', src, "You Received a Rare Item", 'success')
        end
    end
end)