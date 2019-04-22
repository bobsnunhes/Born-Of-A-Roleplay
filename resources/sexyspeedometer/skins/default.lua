

local skinData = {
	-- names
	skinName = "default",
	ytdName = "default",
	-- texture dictionary informations:
	-- night textures are supposed to look like this:
	-- "needle", "tachometer", "speedometer", "fuelgauge"
	-- daytime textures this:
	-- "needle_day", "tachometer_day", "speedometer_day", "fuelgauge_day"
	-- these names are hardcoded

	-- where the speedo gets centered, values below are OFFSETS from this.
	centerCoords = {0.8,0.8},


	-- icon locations
	-- these are xy,width,height
	--y = para cima e para baixo: Soma número, desce objeto. Subtrai número, sobre objeto.
	lightsLoc = {0.010,0.072,0.018,0.02},
	blinkerLoc = {0.105,0.014,0.022,0.03},
	fuelLoc = {0.105,0.070,0.012,0.025},
	oilLoc = {0.100,0.042,0.020,0.025},
	engineLoc = {0.130,0.072,0.020,0.025},

	-- gauge locations
	SpeedoBGLoc = {0.000,0.040,0.12,0.185},
	SpeedoNeedleLoc = {0.000,0.042,0.076,0.15},

	TachoBGloc = {0.120,0.040,0.12,0.185},
	TachoNeedleLoc = {0.120,0.042,0.076,0.15},

	FuelBGLoc = {0.060, -0.040,0.04, 0.04},
	FuelGaugeLoc = {0.060,-0.020,0.040,0.08},

	RotMult = 2.036936,
	RotStep = 2.32833,

	-- rpm scale, defines how "far" the rpm gauge goes before hitting redline
	rpmScale = 270,
	rpmScaleDecrease = 30, -- how much we want to decrease the rpm end result, this gives lower idle

}

addSkin(skinData)