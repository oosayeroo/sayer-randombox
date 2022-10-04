local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("qb-randombox:removeItem")
AddEventHandler("qb-randombox:removeItem", function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    Player.Functions.RemoveItem(item, 1) 
end) 

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

RegisterNetEvent('qb-randombox:server:GetRewardBag', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        for i = 1, Config.NumberOfItemsBag, 1 do
            local item = Config.BagItems[math.random(1, #Config.BagItems)]
            Player.Functions.AddItem(item, Config.ItemAmountBag)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            Wait(500)
        end
        local Luck = math.random(1, 8)
        local Odd = math.random(1, 8)
        if Luck == Odd then
            local random = Config.LuckAmountBag
            Player.Functions.AddItem(Config.LuckItemBag, random)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.LuckItemBag], 'add')
        
        end
    end)

RegisterNetEvent('qb-randombox:server:GetRewardAmmo', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        for i = 1, Config.NumberOfItemsAmmo, 1 do
            local item = Config.AmmoItems[math.random(1, #Config.AmmoItems)]
            Player.Functions.AddItem(item, Config.ItemAmountAmmo)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            Wait(500)
        end
    end)

    RegisterNetEvent('qb-randombox:server:GetRewardMedkit', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
            for i = 1, Config.NumberOfItemsMedkit, 1 do
                local item = Config.MedkitItems[math.random(1, #Config.MedkitItems)]
                Player.Functions.AddItem(item, Config.ItemAmountMedkit)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
                Wait(500)
            end
        end)

        RegisterNetEvent('qb-randombox:server:GetRewardGunCase', function()
            local src = source
            local Player = QBCore.Functions.GetPlayer(src)
                for i = 1, Config.NumberOfItemsGun, 1 do
                    local item = Config.GunItems[math.random(1, #Config.GunItems)]
                    Player.Functions.AddItem(item, Config.ItemAmountGun)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
                    Wait(500)
                end
            end)

            RegisterNetEvent('qb-randombox:server:GetRewardGymBag', function()
                local src = source
                local Player = QBCore.Functions.GetPlayer(src)
                    for i = 1, Config.NumberOfItemsGym, 1 do
                        local item = Config.GymItems[math.random(1, #Config.GymItems)]
                        Player.Functions.AddItem(item, Config.ItemAmountGym)
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
                        Wait(500)
                    end
                end)



QBCore.Functions.CreateUseableItem("randombox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:BoxOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randombag", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:BagOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randomcase", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:CaseOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randomammo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:AmmoOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randommedkit", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:MedkitOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randomgun", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:GunCaseOpening", source, item.name)
end)

QBCore.Functions.CreateUseableItem("randomgym", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-randombox:GymBagOpening", source, item.name)
end)