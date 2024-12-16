local secureResources = { 
    'ip2c',
    'securewatch',
} --Zasoby ktore beda zabezpieczone przed wylaczeniem

addEventHandler( "onClientResourceStop", getRootElement( ),
    function ( stoppedRes )
        for k,v in ipairs(secureResources) do
            if getResourceName( stoppedRes ) == v then
                outputChatBox( "secured resource stopped: " .. getResourceName( stoppedRes ) )
                triggerServerEvent("securewatch:kickStopper", localPlayer)
            end
        end
    end
);