QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 1024) -- Gets max players from config file, default 48
QBConfig.DefaultSpawn = vector4(4854.51, -4957.27, 3.03, 136.68)
QBConfig.UpdateInterval = 5 -- how often to update player data in minutes
QBConfig.StatusInterval = 5000 -- how often to check hunger/thirst status in ms

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = { ['cash'] = 500, ['bank'] = 5000, ['crypto'] = 0 } -- ['type']=startamount - Add or remove money types for your server (for ex. ['blackmoney']=0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto' } -- Money that is not allowed going in minus
QBConfig.Money.PayCheckTimeOut = 10 -- The time in minutes that it will give the paycheck
QBConfig.Money.PayCheckSociety = false -- If true paycheck will come from the society account that the player is employed at, requires qb-bossmenu

QBConfig.Player = {}
QBConfig.Player.MaxWeight = 45000 -- Max weight a player can carry (currently 120kg, written in grams)
QBConfig.Player.MaxInvSlots = 41 -- Max inventory slots for a player
QBConfig.Player.HungerRate = 3.2 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 2.8 -- Rate at which thirst goes down.
QBConfig.Player.Bloodtypes = {
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
}

QBConfig.Server = {} -- General server config
QBConfig.Server.closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.closedReason = "Server Closed" -- Reason message to display when people can't join the server
QBConfig.Server.uptime = 0 -- Time the server has been up.
QBConfig.Server.whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.pvp = true -- Enable or disable pvp on the server (Ability to shoot other players)
QBConfig.Server.discord = "" -- Discord invite link
QBConfig.Server.checkDuplicateLicense = true -- check for duplicate rockstar license on join
QBConfig.Server.PermissionList = {} -- permission list

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = false, -- Allow notifications to stack with a badge instead of repeating
    position = "right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
