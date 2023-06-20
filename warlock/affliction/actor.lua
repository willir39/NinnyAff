local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
if proj.WarlockCheck() then return end

local warlock = proj.warlock
local affliction = proj.warlock.affliction
local buffs = proj.ID.buff
local debuffs = proj.ID.debuff
local talents = proj.ID.talent

specname:Init(function()
  -- Update Stuff
  warlock.tick()

  warlock.PVP_APL()
  warlock.PVE_APL()
end)

