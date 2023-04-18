local QBCore = exports['qb-core']:GetCoreObject()
local spawnprop = false

RegisterNetEvent("sayer-randombox:OpenBox",function(key,value)
    if not spawnprop then
        spawnprop = true
        local playerPed = PlayerPedId()
        local coords    = GetEntityCoords(playerPed)
        local forward   = GetEntityForwardVector(playerPed)
        local x, y, z   = table.unpack(coords + forward * 1.0)

        local box = value.Model
        RequestModel(box)
        while (not HasModelLoaded(box)) do
            Wait(1)
        end
        local obj1 = CreateObject(box, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj1)
        SetEntityAsMissionEntity(obj1)

        TriggerEvent('animations:client:EmoteCommandStart', {value.OpeningEmote})
        QBCore.Functions.Progressbar('name_here', 'Opening...', value.OpeningTime*1000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})

            DeleteEntity(obj1)

            TriggerServerEvent("sayer-randombox:removeItem", key)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[key], "remove")
            TriggerServerEvent('sayer-randombox:server:GetReward', value)
            spawnprop = false
        end)
    else
        QBCore.Functions.Notify('You Are Already Doing Something', 'error')
    end
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end