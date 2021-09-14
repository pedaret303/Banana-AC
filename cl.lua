ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        if IsPedInAnyVehicle(GetPlayerPed(-1), 1) then
            if GetEntitySpeed(GetPlayerPed(-1)) > 111.42 then
                if not IsPedFalling(GetPlayerPed(-1)) then
                    TriggerServerEvent("AC:alam__" ,"Speed Hack His/Her Speed : " .. math.floor(GetEntitySpeed(GetPlayerPed(-1)) * 3.59))
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)
        local playerped = PlayerPedId()
        local playerhealth = GetEntityHealth(playerped)
        SetEntityHealth(playerped, playerhealth - 2)
        local TimeR = math.random(10,150)
        Citizen.Wait(TimeR)
        
        if not IsPlayerDead(PlayerId()) and not IsPlayerDead() then
            if GetEntityHealth(playerped) == playerhealth and GetEntityHealth(playerped) ~= 0 then
                TriggerServerEvent("AC:alam__" ,"God Mode Infinite Health")

            elseif GetEntityHealth(playerped) == playerhealth - 2 then
                SetEntityHealth(playerped, GetEntityHealth(playerped) + 2)
            end
        end

        

        if GetEntityHealth(PlayerPedId()) > 200 then
            TriggerServerEvent("AC:alam__" ,"God Mode max Health")
        end

        if GetPlayerInvincible(PlayerId()) then
            TriggerServerEvent("AC:alam__" ,"God Mode Is Active")
            SetPlayerInvincible(PlayerId(), false)
        end
    end
end)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1000)
    if NetworkIsInSpectatorMode() then

        TriggerServerEvent("AC:alam__" ," Specter Mode")
        
    end
   end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local IsBlip = 0
        local OnlinePlayers = GetActivePlayers()
        for i = 1, #OnlinePlayers do
            if i ~= PlayerId() then
                if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                    IsBlip = IsBlip + 1
                end
            end
        end
        if IsBlip == #OnlinePlayers then
            TriggerServerEvent("AC:alam__" ,"Blips Is Active")
        end
    end
end)
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(2000)
		local resources = {}
		for i = 1, GetNumResources() do
			resources[i] = GetResourceByFindIndex(i)
		end
		TriggerServerEvent('RadinPirouz:clientResources',resources)
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        local ped = GetPlayerPed(-1)
        if not IsPedSittingInAnyVehicle(ped) then
            local SpeedPed = GetEntitySpeed(ped)
            if math.floor(SpeedPed) > 12 then 
                TriggerServerEvent("AC:alam__" ,"Fast Run")
            end
        end
    
    end
end)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(4000)
    if GetUsingseethrough(true) then
        TriggerServerEvent("AC:alam__" ,"Therminal Vision")
    end
end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(4000)
        if GetUsingnightvision(true) then
            TriggerServerEvent("AC:alam__" ,"Night Vision")
        end
    end
end)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(3000)
    local weaponHash = GetSelectedPedWeapon(GetPlayerPed(-1))
    local wgroup = GetWeapontypeGroup(weaponHash)
    local dmgt = GetWeaponDamageType(weaponHash)
    if wgroup == -1609580060 or wgroup == -728555052 or weaponHash == -1569615261 then
        if dmgt ~= 2 then
            TriggerServerEvent("AC:alam__" ,"Explosive Melee")
        end
    elseif wgroup == 416676503 or wgroup == -957766203 or wgroup == 860033945 or wgroup == 970310034 or wgroup == -1212426201 then
        if dmgt ~= 3 then
            TriggerServerEvent("AC:alam__" ,"Explosive Weapon")
        end
    end
   end
end)