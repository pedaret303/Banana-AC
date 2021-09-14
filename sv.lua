ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent("AC:alam__")
AddEventHandler(
	"AC:alam__",
	function(reason)
		local pedid = ESX.GetPlayerFromId(source)
		local name = GetPlayerName(source)
		local xPlayers = ESX.GetPlayers()
		for i = 1, #xPlayers, 1 do
			local xP = ESX.GetPlayerFromId(xPlayers[i])
			if xP.permission_level > 0 then
				if xP.chatoff ~= true then
					TriggerClientEvent(
						"chat:addMessage",
						xPlayers[i],
						{
							color = {255, 0, 0},
							args = {
								"[Anti Cheat]",
								"^2"..name .. " ^0Mashkok Be " .. reason
							}
						}
					)
				end
			end
		end
	end
)
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent("AC:kick")
AddEventHandler(
	"AC:kick",
	function(reason)
		DropPlayer(source,"Shoma Be Dalil " .. reason .. " Kick Shodid")
	end
)
