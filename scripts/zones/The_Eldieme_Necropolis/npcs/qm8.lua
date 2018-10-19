-----------------------------------
-- Area: The Eldieme Necropolis
--  NPC: qm8 (??? - Ancient Papyrus Shreds)
-- Involved in Quest: In Defiant Challenge
-- !pos 105.275 -32 92.551 195
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
local ID = require("scripts/zones/The_Eldieme_Necropolis/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (OldSchoolG1 == false) then
        if (player:hasItem(1088) == false and player:hasKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED2) == false
        and player:getQuestStatus(JEUNO,IN_DEFIANT_CHALLENGE) == QUEST_ACCEPTED) then
            player:addKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED2);
            player:messageSpecial(ID.text.KEYITEM_OBTAINED,dsp.ki.ANCIENT_PAPYRUS_SHRED2);
        end

        if (player:hasKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED1) and player:hasKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED2) and player:hasKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED3)) then
            if (player:getFreeSlotsCount() >= 1) then
                player:addItem(1088, 1);
                player:messageSpecial(ID.text.ITEM_OBTAINED, 1088);
            else
                player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 1088);
            end
        end

        if (player:hasItem(1088)) then
            player:delKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED1);
            player:delKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED2);
            player:delKeyItem(dsp.ki.ANCIENT_PAPYRUS_SHRED3);
        end
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);
end;

function onEventFinish(player,csid,option)
end;