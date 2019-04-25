Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21 -- other MarkerType:'https://wiki.gt-mp.net/index.php?title=Marker'
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 24, g = 201, b = 137 } -- other colors:'https://www.w3schools.com/colors/colors_rgb.asp'
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.TheLostMCStations = {

  TheLostMC = {

    Blip = { --More Blips:'https://marekkraus.sk/gtav/blips/list.html'
      Pos     = { x = 1990.8732910156, y = 3054.0100097656, z = 47.214942932129 },
      Sprite  = 418,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = { --for another Weapons or Vehicle:'http://gta.wikia.com/wiki/The_Lost_MC'
      { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      { name = 'WEAPON_ASSAULTSMG',       price = 50000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 80000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 18000 },
      { name = 'WEAPON_STUNGUN',          price = 250 },
      { name = 'WEAPON_FLASHLIGHT',       price = 50 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
      { name = 'WEAPON_CARBINERIFLE',     price = 50000 },
      { name = 'WEAPON_ADVANCEDRIFLE',    price = 50000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 150000 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
      { name = 'WEAPON_APPISTOL',         price = 12000 },
      { name = 'WEAPON_FLARE',            price = 8000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  { name = 'WEAPON_POOLCUE',          price = 100 },
	  
    },

	AuthorizedVehicles = {
	  { name = 'hexer',          label = 'Hexer' },
	  { name = 'innovation',     label = 'Innovation' },
	  { name = 'daemon',         label = 'Daemon' },
	  { name = 'Zombieb',        label = 'Zombie Chopper' },
	  { name = 'slamvan',        label = 'Slamvan' },
	  { name = 'GBurrito',       label = 'Gang Burrito' },
	  { name = 'maverick',       label = 'Helicopter' },
	  { name = 'sovereign',      label = 'Sovereign' },
	  { name = 'benson',         label = 'Benson' },		  
	  },

    Cloakrooms = {
      { x = 1989.8961181641, y = 3052.2416992188, z = 47.215282440186 },
    },

    Armories = {
      { x = 1995.8137207031, y = 3048.9653320313, z = 47.215297698975 },
    },

    Vehicles = {
      {
        Spawner    = { x = 2007.3416748047, y = 3056.0642089844, z = 47.049812316895 },
        SpawnPoint = { x = 1998.0042724609, y = 3059.728515625, z = 47.049201965332 },
        Heading    = 90.0,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 1985.8848876953, y = 3035.8532714844, z = 47.056331634521 },
        SpawnPoint = { x = 1988.7224121094, y = 3033.6520996094, z = 47.056331634521 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 2012.9382324219, y = 3068.4226074219, z = 47.065311431885 },
    },

    BossActions = {
      { x = 1985.5799560547, y = 3048.6713867188, z = 47.21505355835 }
    },

  },

}
