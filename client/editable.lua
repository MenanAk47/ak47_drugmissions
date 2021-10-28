function isPlayerDead()
    return IsEntityDead(GetPlayerPed(-1))
end

function showNotification(text, eType, time)
    local message = text
    if eType == 'error' then
        message = '~r~'..message
    elseif eType == 'inform' then
        message = '~y~'..message
    elseif eType == 'success' then
        message = '~g~'..message
    end
    ShowNotificationDefault(message)
end

function ShowNotificationDefault(msg)
    SetNotificationTextEntry('STRING')
    AddTextComponentSubstringPlayerName(msg)
    DrawNotification(false, true)
end

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function giveKeyToPlayer(vehicle)
    --Here set your give key event to avoid Hotwire prolem
    --TriggerServerEvent('garage:addKeys', GetVehicleNumberPlateText(vehicle)) --Example
end

function progressBar(time, text)
    --If you want to use any progress bar, use here
    --exports['progressBars']:startUI(time, text) --Example
end

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68)
end

function playAnim(animDict, animName, duration)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(0)
    end
    TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
    RemoveAnimDict(animDict)
end

function CreateBlipRd(coords, text, radius, color, sprite, rColor, size)
    local blipRd = AddBlipForRadius(coords, 100.0)
    SetBlipHighDetail(blipRd, true)
    SetBlipColour(blipRd, rColor)
    SetBlipAlpha (blipRd, 130)
    local blipM = AddBlipForCoord(coords)
    SetBlipHighDetail(blipM, true)
    SetBlipSprite (blipM, sprite)
    SetBlipScale  (blipM, size)
    SetBlipColour (blipM, color)
    SetBlipAsShortRange(blipM, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blipM)
end

function LoadPropDict(model)
    while not HasModelLoaded(GetHashKey(model)) do
        RequestModel(GetHashKey(model))
        Wait(10)
    end
end

function playAnimProcess(animDict, animName, duration)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do 
      Citizen.Wait(0) 
    end
    TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
    RemoveAnimDict(animDict)
end
