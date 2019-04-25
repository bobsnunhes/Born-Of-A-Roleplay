--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
ESX                         = nil
inMenu                      = true
local showblips = true
local atbank = true
local bankMenu = true
local banks = {
  {name="Banco", id=374, x=-2962.582, y=482.627, z=15.703},  
  {name="Banco", id=374, x=-1212.980, y=-330.841, z=37.787},  
  {name="Banco", id=374, x=-351.534, y=-49.529, z=49.042},
  {name="Banco", id=374, x=-112.202, y=6469.295, z=31.626},
  --X = 0
  {name="Banco", id=374, x=150.266, y=-1040.203, z=29.374},
  {name="Banco", id=374, x=241.727, y=220.706, z=106.286},
  {name="Banco", id=374, x=314.187, y=-278.621, z=54.170},
  {name="Banco", id=374, x=1175.064, y=2706.643, z=38.094}
}	

local atms = {
  --X < 0
  {name="Caixa Eletrônico", id=500, x=-3241.10, y=996.6881, z=12.500},
  {name="Caixa Eletrônico", id=500, x=-3144.13, y=1127.415, z=20.868},
  {name="Caixa Eletrônico", id=500, x=-3044.22, y=595.2429, z=7.595},
  {name="Caixa Eletrônico", id=500, x=-2975.72, y=379.7737, z=14.992},
  {name="Caixa Eletrônico", id=500, x=-2962.60, y=482.1914, z=15.762},
  {name="Caixa Eletrônico", id=500, x=-2955.70, y=488.7218, z=15.486},
  {name="Caixa Eletrônico", id=500, x=-2072.41, y=-316.959, z=13.345},
  {name="Caixa Eletrônico", id=500, x=-1827.04, y=785.5159, z=138.020},
  {name="Caixa Eletrônico", id=500, x=-1570.197, y=-546.651, z=34.955},
  {name="Caixa Eletrônico", id=500, x=-1430.112, y=-211.014, z=46.500},
  {name="Caixa Eletrônico", id=500, x=-1415.909, y=-211.825, z=46.500},  
  {name="Caixa Eletrônico", id=500, x=-1409.39, y=-99.2603, z=52.473},
  {name="Caixa Eletrônico", id=500, x=-1305.40, y=-706.240, z=25.352},
  {name="Caixa Eletrônico", id=500, x=-1216.27, y=-331.461, z=37.773},
  {name="Caixa Eletrônico", id=500, x=-1215.64, y=-332.231, z=37.881},
  {name="Caixa Eletrônico", id=500, x=-1205.35, y=-325.579, z=37.870},  
  {name="Caixa Eletrônico", id=500, x=-1204.35, y=-324.391, z=37.877},
  {name="Caixa Eletrônico", id=500, x=-867.22, y=-186.97, z=37.84},
  {name="Caixa Eletrônico", id=500, x=-846.304, y=-340.402, z=38.687},
  {name="Caixa Eletrônico", id=500, x=-821.68, y=-1082.03, z=11.13},
  {name="Caixa Eletrônico", id=500, x=-717.614, y=-915.880, z=19.268},
  {name="Caixa Eletrônico", id=500, x=-711.156, y=-818.958, z=23.768},
  {name="Caixa Eletrônico", id=500, x=-538.225, y=-854.423, z=29.234},
  {name="Caixa Eletrônico", id=500, x=-526.566, y=-1222.90, z=18.434},
  {name="Caixa Eletrônico", id=500, x=-386.733, y=6045.953, z=31.501},
  {name="Caixa Eletrônico", id=500, x=-351.534, y=-49.529, z=49.042},
  {name="Caixa Eletrônico", id=500, x=-302.408, y=-829.945, z=32.417},
  {name="Caixa Eletrônico", id=500, x=-284.037, y=6224.385, z=31.187},
  {name="Caixa Eletrônico", id=500, x=-273.08,y=-2024.6, z= 30.14}, 
  {name="Caixa Eletrônico", id=500, x=-261.692, y=-2012.64, z=30.121},
  {name="Caixa Eletrônico", id=500, x=-256.831, y=-719.646, z=33.444},
  {name="Caixa Eletrônico", id=500, x=-254.112, y=-692.483, z=33.616},
  {name="Caixa Eletrônico", id=500, x=-203.548, y=-861.588, z=30.205},
  {name="Caixa Eletrônico", id=500, x=-164.568, y=233.5066, z=94.919},
  {name="Caixa Eletrônico", id=500, x=-135.165, y=6365.738, z=31.101},
  {name="Caixa Eletrônico", id=500, x=-110.753, y=6467.703, z=31.784},
  {name="Caixa Eletrônico", id=500, x=-94.9690, y=6455.301, z=31.784},   
  {name="Caixa Eletrônico", id=500, x=-56.1935, y=-1752.53, z=29.452},
  
  --X > 0 
  {name="Caixa Eletrônico", id=500, x=5.134, y=-919.949, z=29.557},
  {name="Caixa Eletrônico", id=500, x=24.589, y=-946.056, z=29.357},
  {name="Caixa Eletrônico", id=500, x=33.232, y=-1347.849, z=29.497},
  {name="Caixa Eletrônico", id=500, x=112.4102, y=-776.162, z=31.427},
  {name="Caixa Eletrônico", id=500, x=119.9000, y=-883.826, z=31.191},
  {name="Caixa Eletrônico", id=500, x=129.216, y=-1292.347, z=29.269},
  {name="Caixa Eletrônico", id=500, x=146.87, y=-1035.47, z=29.34}, 
  {name="Caixa Eletrônico", id=500, x=155.4300, y=6641.991, z=31.784},
  {name="Caixa Eletrônico", id=500, x=157.7698, y=233.5450, z=106.450},  
  {name="Caixa Eletrônico", id=500, x=174.6720, y=6637.218, z=31.784},
  {name="Caixa Eletrônico", id=500, x=236.4638, y=217.4718, z=106.840},
  {name="Caixa Eletrônico", id=500, x=265.0043, y=212.1717, z=106.780},
  {name="Caixa Eletrônico", id=500, x=285.2029, y=143.5690, z=104.970},
  {name="Caixa Eletrônico", id=500, x=288.75, y=-1282.37, z=29.64},
  {name="Caixa Eletrônico", id=500, x=289.01, y=-1256.79, z=29.44},
  {name="Caixa Eletrônico", id=500, x=295.839, y=-895.640, z=29.217},
  {name="Caixa Eletrônico", id=500, x=314.187, y=-278.621, z=54.170},
  {name="Caixa Eletrônico", id=500, x=381.2827, y=323.2518, z=103.270},
  {name="Caixa Eletrônico", id=500, x=540.0420, y=2671.007, z=42.177},
  {name="Caixa Eletrônico", id=500, x=1077.692, y=-775.796, z=58.218},
  {name="Caixa Eletrônico", id=500, x=1139.018, y=-469.886, z=66.789},
  {name="Caixa Eletrônico", id=500, x=1153.884, y=-326.540, z=69.245},
  {name="Caixa Eletrônico", id=500, x=1168.975, y=-457.241, z=66.641}, 
  {name="Caixa Eletrônico", id=500, x=1174.532, y=2705.278, z=38.027},
  {name="Caixa Eletrônico", id=500, x=1686.753, y=4815.809, z=42.008},
  {name="Caixa Eletrônico", id=500, x=1702.842, y=4933.593, z=42.051},
  {name="Caixa Eletrônico", id=500, x=1735.114, y=6411.035, z=35.164},
  {name="Caixa Eletrônico", id=500, x=1735.114,  y=6411.035,  z=35.164},
  {name="Caixa Eletrônico", id=500, x=1821.917, y=3683.483, z=34.244},
  {name="Caixa Eletrônico", id=500, x=1967.333, y=3744.293, z=32.272},    
  {name="Caixa Eletrônico", id=500, x=2564.399, y=2585.100, z=38.016},
  {name="Caixa Eletrônico", id=500, x=2558.683, y=349.6010, z=108.050},
  
}
--================================================================================================
--==                                THREADING - DO NOT EDIT                                     ==
--================================================================================================

--===============================================
--==           Base ESX Threading              ==
--===============================================
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

--===============================================
--==             Core Threading                ==
--===============================================
if bankMenu then
	Citizen.CreateThread(function()
  while true do
    Wait(0)
  if nearBank() or nearATM() then
			DisplayHelpText("Pressione ~INPUT_PICKUP~ para acessar o banco ~b~")
	
		if IsControlJustPressed(1, 38) then
			inMenu = true
			SetNuiFocus(true, true)
			SendNUIMessage({type = 'openGeneral'})
			TriggerServerEvent('bank:balance')
			local ped = GetPlayerPed(-1)
		end
	end
        
    if IsControlJustPressed(1, 322) then
	    inMenu = false
      SetNuiFocus(false, false)
      SendNUIMessage({type = 'close'})
    end
	end
  end)
end


--===============================================
--==             Map Blips	                   ==
--===============================================
Citizen.CreateThread(function()
  if showblips then
    for a, b in ipairs(atms)do
      local blip = AddBlipForCoord(b.x, b.y, b.z)
      SetBlipSprite(blip, b.id)
      SetBlipDisplay(blip, 4)
		  SetBlipScale  (blip, 0.5)
		  SetBlipColour (blip, 2)
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(tostring(b.name))
      EndTextCommandSetBlipName(blip)
    end 
	end
end)

Citizen.CreateThread(function()
  if showblips then
    --Icones do banco
	  for k,v in ipairs(banks)do
      local blip = AddBlipForCoord(v.x, v.y, v.z)
      SetBlipSprite(blip, v.id)
      SetBlipDisplay(blip, 4)
		  SetBlipScale  (blip, 1.0)
		  SetBlipColour (blip, 46)
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(tostring(v.name))
      EndTextCommandSetBlipName(blip)
    end
	end
end)




--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNetEvent('currentbalance1')
AddEventHandler('currentbalance1', function(balance)
	local id = PlayerId()
	local playerName = GetPlayerName(id)
	
	SendNUIMessage({
		type = "balanceHUD",
		balance = balance,
		player = playerName
		})
end)
--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('bank:deposit', tonumber(data.amount))
end)

--===============================================
--==          Withdraw Event                   ==
--===============================================
RegisterNUICallback('withdrawl', function(data)
	TriggerServerEvent('bank:withdraw', tonumber(data.amountw))
end)

--===============================================
--==         Balance Event                     ==
--===============================================
RegisterNUICallback('balance', function()
	TriggerServerEvent('bank:balance')
end)

RegisterNetEvent('balance:back')
AddEventHandler('balance:back', function(balance)

	SendNUIMessage({type = 'balanceReturn', bal = balance})

end)


--===============================================
--==         Transfer Event                    ==
--===============================================
RegisterNUICallback('transfer', function(data)
	TriggerServerEvent('bank:transfer', data.to, data.amountt)
	
end)




--===============================================
--==               NUIFocusoff                 ==
--===============================================
RegisterNUICallback('NUIFocusOff', function()
  inMenu = false
  SetNuiFocus(false, false)
  SendNUIMessage({type = 'closeAll'})
end)


--===============================================
--==            Capture Bank Distance          ==
--===============================================
function nearBank()
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)
	
	for _, search in pairs(banks) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
		
    if distance <= 1.5 then
      DrawMarker(1,                     --tipo 
                 search.x,     --posX
                 search.y,     --posY
                 search.z - 1,     --posZ
                 0.0,                   --dirX
                 0.0,                   --dirY
                 0.0,                   --dirZ
                 0,                     --rotX
                 0.0,                   --rotY
                 0.0,                   --rotZ
                 1.0,     --sacaleX
                 1.0,     --sacaleY
                 1.0,     --sacaleZ
                 0,  --RED
                 255,  --GREEN
                 255,  --BLUE
                 100,                   --ALPHA
                 false,                 --bobUpAndDown
                 true,                  --faceCamera                
                 2,                     --p19
                 false,                 --rotate
                 false,                 --textureDict
                 false,                 --textureName
                 false)                 --drawOnEnts
			return true
		end
	end
end

function nearATM()
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)
	
	for _, search in pairs(atms) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
		
    if distance <= 1.5 then
      DrawMarker(1,                     --tipo 
                 search.x,     --posX
                 search.y,     --posY
                 search.z - 1,     --posZ
                 0.0,                   --dirX
                 0.0,                   --dirY
                 0.0,                   --dirZ
                 0,                     --rotX
                 0.0,                   --rotY
                 0.0,                   --rotZ
                 1.0,     --sacaleX
                 1.0,     --sacaleY
                 1.0,     --sacaleZ
                 0,  --RED
                 255,  --GREEN
                 0,  --BLUE
                 100,                   --ALPHA
                 false,                 --bobUpAndDown
                 true,                  --faceCamera                
                 2,                     --p19
                 false,                 --rotate
                 false,                 --textureDict
                 false,                 --textureName
                 false)                 --drawOnEnts
			return true
		end
	end
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end