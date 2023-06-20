local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
local pet = awful.pet
if proj.WarlockCheck() then return end

local classname = proj.warlock
local specname = proj.warlock.affliction
local talents = proj.ID.talent

local PetAttack = awful.unlock("PetAttack")

function specname.PvPPetAttack()
  if pet.exists and not pet.dead then
    if not awful.pet.target.exists or not awful.pet.target.isUnit(target) then
      PetAttack()
    end
  end
end