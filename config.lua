Config = {}
---Box and Case Can have completely different items within them. they do not inteferre with each other at all.
Config.Framework = 'qb'

Config.Useables = {
    ['randombox'] = { --item code
        Model = `hei_prop_heist_box`, --model that spawns infront of player
        OpeningEmote = "mechanic3", --emote used to open
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "coffee",
            "twerks_candy",
            "lockpick",
            "advancedlockpick",
            "weapon_dagger",
            "weapon_flashlight",
            "weapon_briefcase",
            "weapon_briefcase_02",
            "weapon_pistol_mk2",
            "pistol_ammo",
            "security_card_01",
            "beer",
            "whiskey",
            "joint",
            "metalscrap",
            "repairkit",
        },
        HasRare = true,
        RareItemChance = 5, --in % out of 100
        RareItemAmount = 1, 
        RareItem = "trojan_usb",
    },
    ['randomcase'] = {
        Model = `bkr_prop_biker_case_shut`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "casinochips",
            "lighter",
            "empty_evidence_bag",
            "handcuffs",
            "rolex",
            "goldchain",
            "plastic",
            "weed_white-widow",
            "joint",
        },
        HasRare = true,
        RareItemChance = 5, --in % out of 100
        RareItemAmount = 1, 
        RareItem = "bandage",
    },
    ['randombag'] = {
        Model = `hei_prop_heist_binbag`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "pistol_ammo",
            "rifle_ammo",
            "smg_ammo",
            "shotgun_ammo",
            "security_card_01",
            "water_bottle",
            "cokebaggy",
            "weed_white-widow",
            "joint",
        },
        HasRare = true,
        RareItemChance = 5, --in % out of 100
        RareItemAmount = 1, 
        RareItem = "lockpick",
    },
    ['randomammo'] = {
        Model = `prop_box_ammo01a`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "pistol_ammo",
            "rifle_ammo",
            "smg_ammo",
            "shotgun_ammo",
            "mg_ammo",
        },
        HasRare = false,
    },
    ['randommedkit'] = {
        Model = `xm_prop_smug_crate_s_medical`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "firstaid",
            "bandage",
            "ifaks",
            "painkillers",
        },
        HasRare = false,
    },
    ['randomgun'] = {
        Model = `prop_box_guncase_03a`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "weapon_pistol",
            "weapon_pistol50",
            "weapon_pistol_mk2",
            "weapon_smg",
            "weapon_pumpshotgun",
            "weapon_molotov",
            "pistol_extendedclip",
            "pistol_flashlight",
            "pistol50_extendedclip",
            "pistol50_luxuryfinish",
            "smg_extendedclip",
            "pumpshotgun_luxuryfinish",
        },
        HasRare = false,
    },
    ['randomgym'] = {
        Model = `hei_p_m_bag_var22_arm_s`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            "water_bottle",
            "grapejuice",
            "snikkel_candy",
        },
        HasRare = false,
    },
}