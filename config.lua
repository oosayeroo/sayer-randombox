Config = {}
---Box and Case Can have completely different items within them. they do not inteferre with each other at all.

Config.NumberOfItemsBox = 2  --amount of different items to receive from 1 (box) 
Config.NumberOfItemsCase = 2  --amount of different items to receive from 1 (Case) 
Config.NumberOfItemsBag = 2
Config.NumberOfItemsAmmo = 1
Config.NumberOfItemsMedkit = 1
Config.NumberOfItemsGun = 1

Config.ItemAmountBox = 5  --quantity of each item received (1 coffee or 2 coffee etc) (Box)
Config.ItemAmountCase = 5  --quantity of each item received (1 coffee or 2 coffee etc) (Case)
Config.ItemAmountBag = 5
Config.ItemAmountAmmo = 1
Config.ItemAmountMedkit = 1
Config.ItemAmountGun = 1

Config.LuckItemBox = "trojan_usb"  --change to whatever you want (Box)
Config.LuckItemCase = "bandage"  --change to whatever you want (Case)
Config.LuckItemBag = "lockpick"

Config.LuckAmountBox = 1 --amount of luck item you receive if enabled (Box)
Config.LuckAmountCase = 1 --amount of luck item you receive if enabled (Case)
Config.LuckAmountBag = 1

Config.BoxItemList = {}  --dont touch

Config.BoxItems = {  --add as many items as you like. these are the random items you may get
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
}

Config.CaseItemList = {}  --dont touch

Config.CaseItems = {   --place whatever items you want in here. theres no limit
    "casinochips",
    "lighter",
    "empty_evidence_bag",
    "handcuffs",
    "rolex",
    "goldchain",
    "plastic",
    "weed_white-widow",
    "joint",
}

Config.BagItemList = {}

Config.BagItems = {   --place whatever items you want in here. theres no limit
    "pistol_ammo",
    "rifle_ammo",
    "smg_ammo",
    "shotgun_ammo",
    "security_card_01",
    "water_bottle",
    "cokebaggy",
    "weed_white-widow",
    "joint",
}

Config.AmmoItemList = {}

Config.AmmoItems = {
    "pistol_ammo",
    "rifle_ammo",
    "smg_ammo",
    "shotgun_ammo",
    "mg_ammo",
}

Config.MedkitItemList = {}

Config.MedkitItems = {
    "firstaid",
    "bandage",
    "ifaks",
    "painkillers",
}

Config.GunItemList = {}

Config.GunItems = {
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
}