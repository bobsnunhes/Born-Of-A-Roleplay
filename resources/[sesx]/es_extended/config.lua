Config                      = {}
Config.Locale               = 'br'

Config.Accounts             = { 'bank', 'black_money' }
Config.AccountLabels        = { bank = _U('bank'), black_money = _U('black_money') }

Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.ShowDotAbovePlayer   = false
Config.DisableWantedLevel   = true
Config.EnableHud            = true -- Roberto - Alterado HUD de dinheiro e emprego

Config.PaycheckInterval     = 7 * 60000
Config.MaxPlayers           = GetConvarInt('sv_maxclients', 32)

Config.EnableDebug          = true
