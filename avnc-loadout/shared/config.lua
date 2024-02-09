Config = {}
Config.Menu = "qb-menu" -- qb-menu / ox_lib
Config.Menuicon = "fa-solid fa-infinity" -- if Config.Menu qb-menu then
Config.Language = "en" --tr / en
Config.progressbartime = 5000
Config.Timeout = {timeout = true, timeouttime =1}
Config.loadoutcoords = {
    {name = "loadout1", coords = vector3(482.53, -994.8, 30.22)},
    {name = "loadout2", coords = vector3(388.06, -1029.08, 29.42)}, 
    }
Config.queue = {"pack1", "pack2", "pack"}
Config.items = {
    ["pack1"] = {
        name = "Low Pack",
        txt = "Low Pack for Police",
        icon = 'fa-solid fa-shield-halved',
        iconanimation = 'fade', -- if Config.menu then ox_lib 
        accessgrade = {1, 2, 3, 4},
        items = {
            {name = "WEAPON_COMBATPISTOL", amount = 1},
            {name = "WEAPON_STUNGUN", amount = 1},
            {name = "bandage", amount = 5},
            {name = "armor", amount = 5},
            {name = "handcuffs", amount = 3},
            {name = "WEAPON_FLASHLIGHT", amount = 1},
            {name = "WEAPON_NIGHTSTICK", amount = 1},
            {name = "police_stormram", amount = 1},
            {name = "pistol_ammo", amount = 20},
            {name = "radio", amount = 1},
            {name = "cuffkeys", amount = 3}
        }
    },
    ["pack2"] = {
        name = "Medium Pack",
        txt = "Medium Pack for Police",
        icon = 'fa-solid fa-wand-sparkles',
        iconanimation = 'fade', -- if Config.menu then ox_lib 
        accessgrade = {1, 2, 3, 4},
        items = {
            {name = "WEAPON_SMG", amount = 1},
            {name = "WEAPON_COMBATPISTOL", amount = 1},
            {name = "WEAPON_STUNGUN", amount = 1},
            {name = "medikit", amount = 7},
            {name = "heavyarmor", amount = 5},
            {name = "handcuffs", amount = 3},
            {name = "WEAPON_FLASHLIGHT", amount = 1},
            {name = "WEAPON_NIGHTSTICK", amount = 1},
            {name = "police_stormram", amount = 1},
            {name = "smg_ammo", amount = 20},
            {name = "pistol_ammo", amount = 20},
            {name = "radio", amount = 1},
            {name = "cuffkeys", amount = 3}

        }
    },
    ["pack"] = {
        name = "High Pack",
        txt = "High Pack for Police",
        icon = 'fa-solid fa-wand-sparkles',
        iconanimation = 'fade', -- if Config.menu then ox_lib 
        accessgrade = {1, 2, 3, 4},
        items = {
            {name = "WEAPON_CARBINERIFLE", amount = 1},
            {name = "WEAPON_COMBATPISTOL", amount = 1},
            {name = "WEAPON_STUNGUN", amount = 1},
            {name = "medikit", amount = 10},
            {name = "heavyarmor", amount = 10},
            {name = "handcuffs", amount = 3},
            {name = "WEAPON_FLASHLIGHT", amount = 1},
            {name = "WEAPON_NIGHTSTICK", amount = 1},
            {name = "police_stormram", amount = 1},
            {name = "rifle_ammo", amount = 20},
            {name = "pistol_ammo", amount = 20},
            {name = "radio", amount = 1},
            {name = "cuffkeys", amount = 3}
        }
    }
}
