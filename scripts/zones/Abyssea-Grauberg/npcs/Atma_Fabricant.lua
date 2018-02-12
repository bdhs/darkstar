-----------------------------------
-- Area: Abyssea - Grauberg
--  NPC: Atma Fabricant
--
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Grauberg/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(2182);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;