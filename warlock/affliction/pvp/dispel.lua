local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
if proj.WarlockCheck() then return end

local classname = proj.warlock
local specname = proj.warlock.affliction
local talents = proj.ID.talent
