local FRMK = nil
if Config.Framework == 'qb' then
    FRMK = exports['qb-core']:GetCoreObject()
elseif Config.Framework == 'esx' then
    FRMK = exports["es_extended"]:getSharedObject()
end
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

        if Config.Framework == 'qb' then
            TriggerEvent('animations:client:EmoteCommandStart', {value.OpeningEmote})
            FRMK.Functions.Progressbar('name_here', 'Opening...', value.OpeningTime*1000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})

                DeleteEntity(obj1)

                TriggerServerEvent("sayer-randombox:removeItem", key)
                TriggerServerEvent('sayer-randombox:server:GetReward', value)
                spawnprop = false
            end)
        elseif Config.Framework == 'esx' then
            TriggerEvent('animations:client:EmoteCommandStart', {value.OpeningEmote})
            exports["esx_progressbar"]:Progressbar("Opening...", value.OpeningTime*1000,{
                FreezePlayer = true, 
                animation ={},
                onFinish = function()
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                DeleteEntity(obj1)

                TriggerServerEvent("sayer-randombox:removeItem", key)
                TriggerServerEvent('sayer-randombox:server:GetReward', value)
                spawnprop = false
            end})
        end
    else
        if Config.Framework == 'qb' then
            FRMK.Functions.Notify('You Are Already Doing Something', 'error')
        elseif Config.Framework == 'esx' then
            FRMK.ShowNotification("You Are Already Doing Something", "error")
        end
    end
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end