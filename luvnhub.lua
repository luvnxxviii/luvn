-- Get the current game's Place ID
local placeId = game.PlaceId

-- Map Place IDs to their respective raw GitHub script links
local scripts = {
    [1537690962] = "https://githubusercontent.com", -- Bee Swarm Simulator
    [2788229976] = "https://githubusercontent.com",    -- Da Hood
    [606849621]  = "https://githubusercontent.com"  -- Jailbreak
}

-- Check if the current game is in your list
if scripts[placeId] then
    -- Execute the game-specific script
    loadstring(game:HttpGet(scripts[placeId]))()
else
    -- Optional: Fallback or universal script if the game isn't supported
    warn("No specific script found for this game (PlaceId: " .. tostring(placeId) .. ")")
end
