local display = false
ESX           = nil

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
  end)

--COMMANDS
RegisterCommand("visaon", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:on")
    end)
end)

RegisterCommand("visaoff", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:off")
    end)
end)
---- END COMMANDS

-- EVENTS
RegisterNetEvent("nui:on")
AddEventHandler("nui:on", function()
    display = true
    SendNUIMessage({
        action = "open"
    })
end)

RegisterNetEvent("nui:off")
AddEventHandler("nui:off", function()
    display = false
    SendNUIMessage({
        action = "close"
    })
end)
---- END EVENTS