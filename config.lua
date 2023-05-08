Config = {}
---Box and Case Can have completely different items within them. they do not inteferre with each other at all.
Config.Framework = 'qb' --'qb'/'esx'

Config.Useables = {
    ['randombox'] = { --item code
        Model = `hei_prop_heist_box`, --model that spawns infront of player
        OpeningEmote = "mechanic3", --emote used to open
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            {item = "coffee", isWeapon = false},
            {item = "twerks_candy", isWeapon = false},
            {item = "lockpick", isWeapon = false},
            {item = "advancedlockpick", isWeapon = false},
            {item = "weapon_dagger", isWeapon = true},
        },
        HasRare = true,
        RareItemChance = 5, --in % out of 100
        RareItemAmount = 1, 
        RareItem = {item = "trojan_usb", isWeapon = false},
    },
    ['randomcase'] = {
        Model = `bkr_prop_biker_case_shut`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            {item = "casinochips", isWeapon = false},
            {item = "lighter", isWeapon = false},
            {item = "empty_evidence_bag", isWeapon = false},
            {item = "handcuffs", isWeapon = false},
            {item = "rolex", isWeapon = false},
            {item = "goldchain", isWeapon = false},
            {item = "plastic", isWeapon = false},
        },
        HasRare = true,
        RareItemChance = 5, --in % out of 100
        RareItemAmount = 1, 
        RareItem = {item = "bandage", isWeapon = false},
    },
    ['randombag'] = {
        Model = `hei_prop_heist_binbag`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            {item = "pistol_ammo", isWeapon = false},
            {item = "rifle_ammo", isWeapon = false},
            {item = "smg_ammo", isWeapon = false},
            {item = "shotgun_ammo", isWeapon = false},
            {item = "security_card_01", isWeapon = false},
            {item = "water_bottle", isWeapon = false},
        },
        HasRare = true,
        RareItemChance = 5, --in % out of 100
        RareItemAmount = 1, 
        RareItem = {item = "lockpick", isWeapon = false},
    },
    ['randomammo'] = {
        Model = `prop_box_ammo01a`,
        OpeningEmote = "mechanic3",
        OpeningTime = 5, --in seconds
        NumberOfItems = 2, --amount of different items to receive
        ItemAmount = 1, --amount of specific items to get
        Items = {
            {item = "pistol_ammo", isWeapon = false},
            {item = "rifle_ammo", isWeapon = false},
            {item = "smg_ammo", isWeapon = false},
            {item = "shotgun_ammo", isWeapon = false},
            {item = "mg_ammo", isWeapon = false},
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
            {item = "firstaid", isWeapon = false},
            {item = "bandage", isWeapon = false},
            {item = "ifaks", isWeapon = false},
            {item = "painkillers", isWeapon = false},
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
            {item = "weapon_pistol", isWeapon = true},
            {item = "weapon_pistol50", isWeapon = true},
            {item = "weapon_pistol_mk2", isWeapon = true},
            {item = "weapon_smg", isWeapon = true},
            {item = "weapon_pumpshotgun", isWeapon = true},
            {item = "weapon_molotov", isWeapon = true},
            {item = "pistol_extendedclip", isWeapon = true},
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
            {item = "water_bottle", isWeapon = false},
            {item = "grapejuice", isWeapon = false},
            {item = "snikkel_candy", isWeapon = false},
        },
        HasRare = false,
    },
}