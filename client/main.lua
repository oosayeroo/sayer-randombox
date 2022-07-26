local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("qb-randombox:BoxOpening")
AddEventHandler("qb-randombox:BoxOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local box = `hei_prop_heist_box`
    RequestModel(box)
    while (not HasModelLoaded(box)) do
        Wait(1)
    end
    local obj1 = CreateObject(box, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj1)
    SetEntityAsMissionEntity(obj1)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Opening Box...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj1)

        TriggerServerEvent('QBCore:Server:RemoveItem', 'randombox', 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randombox'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardBox')
    end)
end)

RegisterNetEvent("qb-randombox:CaseOpening")
AddEventHandler("qb-randombox:CaseOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local case = `bkr_prop_biker_case_shut`
    RequestModel(case)
    while (not HasModelLoaded(case)) do
        Wait(1)
    end
    local obj2 = CreateObject(case, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj2)
    SetEntityAsMissionEntity(obj2)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Opening Case...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj2)

        TriggerServerEvent('QBCore:Server:RemoveItem', 'randomcase', 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randomcase'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardCase')
    end)
end)

RegisterNetEvent("qb-randombox:BagOpening")
AddEventHandler("qb-randombox:BagOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local bag = `hei_prop_heist_binbag`
    RequestModel(bag)
    while (not HasModelLoaded(bag)) do
        Wait(1)
    end
    local bag1 = CreateObject(bag, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(bag1)
    SetEntityAsMissionEntity(bag1)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Opening Bag...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(bag1)

        TriggerServerEvent('QBCore:Server:RemoveItem', 'randombag', 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randombag'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardBag')
    end)
end)

RegisterNetEvent('qb-randombox:client:SetBagItems', function(BagItemList)
	Config.BagItemList = BagItemList
end)

RegisterNetEvent('qb-randombox:client:SetBoxItems', function(BoxItemList)
	Config.BoxItemList = BoxItemList
end)

RegisterNetEvent('qb-randombox:client:SetCaseItems', function(CaseItemList)
	Config.CaseItemList = CaseItemList
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end