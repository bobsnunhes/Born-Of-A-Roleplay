Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false }

Config.ReviveReward               = 700  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'br'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 2 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 10 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(306.87, -589.92, 43.29), heading = 48.5 } --Alterado para Pillbox --{ coords = vector3(341.0, -1397.3, 32.5), heading = 48.5 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(306.87, -589.92, 43.29),--Alterado para Pillbox --vector3(307.7, -1433.4, 28.9),
			sprite = 61,
			scale  = 1.2,
			color  = 1
		},

		AmbulanceActions = {
			vector3(270.5, -1363.0, 23.5)
		},

		Pharmacies = {
			vector3(230.1, -1366.1, 38.5)
		},

		Vehicles = {
			{
				Spawner = vector3( 324.12, -556.04, 28.74), --vector3(307.7, -1433.4, 30.0),
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(329.16, -555.34, 28.7), heading = 339.5, radius = 1.0 },--{ coords = vector3(297.2, -1429.5, 29.8), heading = 227.6, radius = 4.0 }
					{ coords = vector3(341.16, -561.54, 28.74), heading = 336.5, radius = 1.0 },--{ coords = vector3(294.0, -1433.1, 29.8), heading = 227.6, radius = 4.0 },
					--{ coords = vector3(309.4, -1442.5, 29.8), heading = 227.6, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(346.31, -581.4, 74.16), --vector3(317.5, -1449.5, 46.5), -- Marker que abre menu dos helicópteros
				InsideShop = vector3( 351.4, -587.49, 74.16),--vector3(305.6, -1419.7, 41.5), --Lugar que helicóptero aparece durante a selecao no menu
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3( 351.4, -587.49, 74.16), heading = 142.7, radius = 10.0 }
					--{ coords = vector3(313.5, -1465.1, 46.5), heading = 142.7, radius = 10.0 }, -- Local dos heliportos (H) no hospital
					--{ coords = vector3(299.5, -1453.2, 46.5), heading = 142.7, radius = 10.0 } 	-- Local dos heliportos (H) no hospital
				}
			}
		},

		FastTravels = {
			{
				From = vector3(340.55, -592.89, 42.19), --vector3(294.7, -1448.1, 29.0), -- Transporta para dentro do andar do hospital onde tem os uniformes
				To = { coords = vector3(272.8, -1358.8, 23.5), heading = 0.0 }, -- é a saida do andar do hospital onde tem uniformes
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(275.3, -1361, 23.5), -- Transporta para a entrada do andar de uniformes
				To = { coords = vector3(337.99, -591.94, 43.28), heading = 0.0}, --{ coords = vector3(340.55, -592.89, 43.19), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(325.49, -598.74, 44.31), --vector3(247.3, -1371.5, 23.5), -- Transporta para o heliporto
				To = { coords = vector3(342.99, -585.89, 73.98), heading = 267.5 }, --{ coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 255, g = 0, b = 0, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(338.64, -583.74, 73.11), --vector3(335.5, -1432.0, 45.50), -- Transporta do heliporto para entrada do mesmo 
				To = { coords = vector3(324.7, -596.35, 43.29), heading = 0.0 }, --{ coords = vector3(306.87, -589.92, 43.29), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			 },

			{
				From = vector3(328.05, -594.82, 42.29), --vector3(234.5, -1373.7, 20.9), -- Transporta de dentro do prédio para garagem
				To = { coords = vector3(319.53, -560.23, 28.74), heading = 0.0}, --{ coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(319.53, -560.23, 27.74), -- Da garagem para dentro do hospital
				To = { coords = vector3(325.42, -593.86, 43.29), heading = 66.5 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0), -- Segunda leva da escada que transporta para o ultimo andar dos medkits
				To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0), -- Ultimo andar da escada (medkits) transporta para a primeira leva de escadas
				To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 0}
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 0}
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 0}
	},

	boss = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 0}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 0 }
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 0 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 0 }
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 0 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 0 }
	}

}
