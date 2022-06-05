---------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------- Client File (This is code that is run on the players side) -------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------

---------------- NUI Example ----------------
RegisterCommand('testNUI', function(source, args, rawCommand)
    -- NUI SendNUIMessage lets you talk from Lua to HTML/JS
    SendNUIMessage({
        type = 'open',
        message = _U('HelloWorld')
    })
    SetNuiFocus(true, true) -- Sets the focus of the player view to NUI
end)

-- NUI Callback lets you talk from HTML/JS to Lua
RegisterNUICallback('close', function(args, cb)
    SetNuiFocus(false, false) -- Sets the focus of the player view away from NUI
    cb('ok')
end)

---------------- Server Call Examples ----------------
-- "boilerplate:giveMeat" is the name of the RegisterServerEvent in server.lua
RegisterCommand("giveMeat", function(args, rawCommand) --  COMMAND
    TriggerServerEvent('boilerplate:giveMeat')	
end)

---------------- Notification Examples ----------------
RegisterCommand("clientnotify", function(args, rawCommand) --  COMMAND
    TriggerEvent('vorp:NotifyLeft', "first text", "second text", "generic_textures", "tick", 4000)
    Wait(4000)
    TriggerEvent('vorp:Tip', "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:NotifyTop', "your text", "TOWN_ARMADILLO", 4000)
    Wait(4000)
    TriggerEvent('vorp:TipRight', "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:TipBottom', "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:ShowTopNotification', "your text", "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:ShowAdvancedRightNotification', "your text", "generic_textures", "tick", "COLOR_PURE_WHITE", 4000)
    Wait(4000)
    TriggerEvent('vorp:ShowBasicTopNotification', "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:ShowSimpleCenterText', "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:ShowBottomRight', "your text", 4000)
    Wait(4000)
    TriggerEvent('vorp:deadplayerNotifY', "tittle", "Ledger_Sounds", "INFO_HIDE", 4000)
    Wait(4000)
    TriggerEvent('vorp:updatemissioNotify', "tittleid", "tittle", "message", 4000)
    Wait(4000)
    TriggerEvent('vorp:warningNotify', "tittle", "message", "Ledger_Sounds", "INFO_HIDE", 4000)
end)

---------------- GetEventData Export Example ----------------
---------------- This example is directly from ----------------
---------------- https://github.com/ShortWlf/RDRRPG/blob/312d354f2797bcc7d7792fdbc1e4892243874e06/resources/events/researched_events.lua ----------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local size = GetNumberOfEvents(0)
        if size > 0 then
            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
                --[[
                    Triggered when a ped whistles hearing range
                ]]
                if event == 1327216456 then
                    local view = exports["boilerplate"]:DataViewNativeGetEventData(0, index, 2)
                    local pedWhistling = view[0]
                    local whistleType = view[2] -- Short or Long, haven't looked which one is which
                end
                --[[
                    Triggered when a ped is using a animal interaction task
                ]]
                if event == -1246119244 then
                    local view = exports["boilerplate"]:DataViewNativeGetEventData(0, index, 3)
                    local pedInteracting = view[0] -- Mostly of the time it is the one interacting
                    local animalInteracting = view[2] -- Mostly of the time it is the animal
                    local interactionType = view[4] -- INTERACTION_FEED, INTERACTION_POSITIVELONG, INTERACTION_BRUSH, etc
                end
                --[[
                    Triggered when a ped interacts(opening, closing) with a ransack scenario (chests, cabinets, etc)
                ]]
                if event == 1352063587 then
                    local view = exports["boilerplate"]:DataViewNativeGetEventData(0, index, 4)
                    local pedInteracting = view[0]
                    local containerEntity = view[2] -- Containers are chests/cabinets/etcs
                    local containerScenario = view[4] -- Ransack scenario attached to containerEntity
                    local justClosed = view[6] -- Whether the ped just closed or opened the conainer
                end
                --[[
                    Triggered when a ped starts carrying
                ]]
                if event == -687266558 then
                    local view = exports["boilerplate"]:DataViewNativeGetEventData(0, index, 4)
                    local pedCarrier = view[0]
                    local pedCarried = view[2]
                end
                --[[
                    Triggered when a ped finishs gathering a ped (Skinning or Looting)
                ]]
                if event == 1376140891 then
                    local view = exports["boilerplate"]:DataViewNativeGetEventData(0, index, 3)
                    local ped = view[0]
                    local pedGathered = view[2]
                    local bool_unk = view[4]
                end
            end
        end
    end
end)
