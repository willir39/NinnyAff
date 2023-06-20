local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
local pet = awful.pet
if proj.HunterCheck() then return end

local hunter = proj.hunter
local marksmanship = proj.hunter.marksmanship
local talents = proj.ID.talent
local cfg = proj.settings

function proj.PVE_APL()
  if not proj.PVE and not (cfg.dummyRotation == "PvE" and target.dummy)  then return end

  if not awful.hasControl then return end
  if player.mounted then return end

end