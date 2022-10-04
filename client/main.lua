local QBCore = exports['qb-core']:GetCoreObject()
local spawnprop = false

RegisterNetEvent("qb-randombox:BoxOpening")
AddEventHandler("qb-randombox:BoxOpening", function()
    if not spawnprop then
        spawnprop = true
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

        TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
        QBCore.Functions.Progressbar('name_here', 'Opening Box...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})

            DeleteEntity(obj1)

            TriggerServerEvent("qb-randombox:removeItem", "randombox")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randombox'], "remove")

            TriggerServerEvent('qb-randombox:server:GetRewardBox')
            spawnprop = false
        end)
    else
        QBCore.Functions.Notify('You Are Already Doing Something', 'error')
    end
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

    TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
    QBCore.Functions.Progressbar('name_here', 'Opening Case...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj2)

        TriggerServerEvent("qb-randombox:removeItem", "randomcase")
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

    TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
    QBCore.Functions.Progressbar('name_here', 'Opening Bag...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(bag1)

        TriggerServerEvent("qb-randombox:removeItem", "randombag")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randombag'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardBag')
    end)
end)

RegisterNetEvent("qb-randombox:AmmoOpening")
AddEventHandler("qb-randombox:AmmoOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local ammo = `prop_box_ammo01a`
    RequestModel(ammo)
    while (not HasModelLoaded(ammo)) do
        Wait(1)
    end
    local ammo1 = CreateObject(ammo, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(ammo1)
    SetEntityAsMissionEntity(ammo1)

    TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
    QBCore.Functions.Progressbar('name_here', 'Opening Ammo Case...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(ammo1)

        TriggerServerEvent("qb-randombox:removeItem", "randomammo")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randomammo'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardAmmo')
    end)
end)

RegisterNetEvent("qb-randombox:MedkitOpening")
AddEventHandler("qb-randombox:MedkitOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local medkit = `xm_prop_smug_crate_s_medical`
    RequestModel(medkit)
    while (not HasModelLoaded(medkit)) do
        Wait(1)
    end
    local med1 = CreateObject(medkit, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(med1)
    SetEntityAsMissionEntity(med1)

    TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
    QBCore.Functions.Progressbar('name_here', 'Opening Medical Kit...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(med1)

        TriggerServerEvent("qb-randombox:removeItem", "randommedkit")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randommedkit'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardMedkit')
    end)
end)

RegisterNetEvent("qb-randombox:GunCaseOpening")
AddEventHandler("qb-randombox:GunCaseOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local guncase = `prop_box_guncase_03a`
    RequestModel(guncase)
    while (not HasModelLoaded(guncase)) do
        Wait(1)
    end
    local gun1 = CreateObject(guncase, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(gun1)
    SetEntityAsMissionEntity(gun1)

    TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
    QBCore.Functions.Progressbar('name_here', 'Opening Gun Case...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(gun1)

        TriggerServerEvent("qb-randombox:removeItem", "randomgun")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randomgun'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardGunCase')
    end)
end)

RegisterNetEvent("qb-randombox:GymBagOpening")
AddEventHandler("qb-randombox:GymBagOpening", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local gymbag = `hei_p_m_bag_var22_arm_s`
    RequestModel(gymbag)
    while (not HasModelLoaded(gymbag)) do
        Wait(1)
    end
    local gym1 = CreateObject(gymbag, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(gym1)
    SetEntityAsMissionEntity(gym1)

    TriggerEvent('animations:client:EmoteCommandStart', {Config.OpeningEmote})
    QBCore.Functions.Progressbar('name_here', 'Opening Gym Bag...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(gym1)

        TriggerServerEvent("qb-randombox:removeItem", "randomgym")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['randomgym'], "remove")

        TriggerServerEvent('qb-randombox:server:GetRewardGymBag')
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

RegisterNetEvent('qb-randombox:client:SetAmmoItems', function(AmmoItemList)
	Config.AmmoItemList = AmmoItemList
end)

RegisterNetEvent('qb-randombox:client:SetMedkitItems', function(MedkitItemList)
	Config.MedkitItemList = MedkitItemList
end)

RegisterNetEvent('qb-randombox:client:SetAmmoItems', function(GunItemList)
	Config.GunItemList = GunItemList
end)

RegisterNetEvent('qb-randombox:client:SetGymItems', function(GymItemList)
	Config.GymItemList = GymItemList
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end