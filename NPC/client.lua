local npcModel = "s_m_y_cop_01"   -- Cop model
local npc = nil
local npcCoords = vector3(-267.0, -960.0, 31.2)  -- Spawn position any corrdinates can be used as per your convenience to spawn npc in your world.

Citizen.CreateThread(function()
    RequestModel(GetHashKey(npcModel))
    while not HasModelLoaded(GetHashKey(npcModel)) do
        Wait(10)
    end

    npc = CreatePed(4, GetHashKey(npcModel), npcCoords, 0.0, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    TaskStandStill(npc, -1)
end)

-- Interact with NPC
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if npc then
            local player = PlayerPedId()
            local playerCoords = GetEntityCoords(player)
            local dist = #(playerCoords - npcCoords)
            if dist < 2.0 then
                DrawText3D(npcCoords.x, npcCoords.y, npcCoords.z + 1.0, "[E] Talk to Officer Vedant")
                if IsControlJustReleased(0, 38) then -- 38 is E

                    -- === Play built-in Rockstar voice (cop says hi!) ===
                    PlayAmbientSpeech1(npc, "GENERIC_HI", "SPEECH_PARAMS_FORCE_NORMAL_CLEAR")

                    -- Notification too (optional)
                    BeginTextCommandThefeedPost("STRING")
                    AddTextComponentSubstringPlayerName("Officer Vedant: Hey! I am your custom NPC. What can I help you with?")
                    EndTextCommandThefeedPostMessagetext("CHAR_CALL911", "CHAR_CALL911", false, 1, "Officer Vedant", "")
                    EndTextCommandThefeedPostTicker(false, false)

                    -- You can add more interaction logic here!
                end
            end
        end
    end
end)

-- Helper function
function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

-- Teleport command
RegisterCommand("gotonpc", function()
    SetEntityCoords(PlayerPedId(), -267.0, -960.0, 31.2)
end, false)
RegisterKeyMapping("gotonpc", "Teleport to Officer Vedant", "keyboard", "F5")