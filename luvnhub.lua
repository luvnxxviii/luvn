-- Get the current game's Place ID
local placeId = game.PlaceId

-- Map Place IDs to their respective raw GitHub script links
local scripts = {
    [130499340995198] = "https://raw.githubusercontent.com/luvnxxviii/luvn/refs/heads/main/Drive%20Life", -- Drive Life
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
