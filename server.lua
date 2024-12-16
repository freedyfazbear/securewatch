function kickDetectResourceStop()
    if (not client) then
        return false
    end
    local matchingSource = (source == client)
    if (not matchingSource) then
        return false
    end

    kickPlayer(client, "offnales skrypt")
end
addEvent("securewatch:kickStopper", true)
addEventHandler("securewatch:kickStopper", root, kickDetectResourceStop)