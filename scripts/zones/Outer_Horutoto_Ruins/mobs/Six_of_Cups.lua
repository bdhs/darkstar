-----------------------------------
-- Area: Outer Horutoto
--  MOB: Six of Cups
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,665,1);
end;