-----------------------------------
-- Area: South Gustaberg
--  MOB: Huge Hornet
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 76, 1, dsp.regime.type.FIELDS)
end;
