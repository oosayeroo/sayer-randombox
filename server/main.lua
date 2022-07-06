local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-randombox:server:GetRewardBox', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        for i = 1, Config.NumberOfItemsBox, 1 do
            local item = Config.BoxItems[math.random(1, #Config.BoxItems)]
            Player.Functions.AddItem(item, Config.ItemAmountBox)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            Wait(500)
        end
        local Luck = math.random(1, 8)
        local Odd = math.random(1, 8)
        if Luck == Odd then
            local random = Config.LuckAmountBox
            Player.Functions.AddItem(Config.LuckItemBox, random)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.LuckItemBox], 'add')
        
        end
    end)

RegisterNetEvent('qb-randombox:server:GetRewardCase', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        for i = 1, Config.NumberOfItemsCase, 1 do
            local item = Config.CaseItems[math.random(1, #Config.CaseItems)]
            Player.Functions.AddItem(item, Config.ItemAmountCase)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            Wait(500)
        end
        local Luck = math.random(1, 8)
        local Odd = math.random(1, 8)
        if Luck == Odd then
            local random = Config.LuckAmountCase
            Player.Functions.AddItem(Config.LuckItemCase, random)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.LuckItemCase], 'add')
        
        end
    end)

QBCore.Functions.CreateUseableItem("randombox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:BoxOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randomcase", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:CaseOpening", source, item.name)
end)