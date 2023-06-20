local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
if proj.WarlockCheck() then return end

local classname = proj.warlock
local specname = proj.warlock.affliction
local talents = proj.ID.talent

local SpellStopCasting = awful.unlock("SpellStopCasting")
local CastInterruptDelay = awful.delay(0.374, 0.564)
local CastFinishDelay = awful.delay(0.21, 0.44)
local ChannelInterruptDelay = awful.delay(0.61, 0.84)
