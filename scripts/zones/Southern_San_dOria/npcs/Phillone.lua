-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Phillone
-- Involved in Quest: A Timely Visit
--  General Info NPC
-------------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs");
require("scripts/globals/settings");
require("scripts/globals/quests");

function onTrade(player,npc,trade)
    -- "Flyers for Regine" conditional script
    local FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

    if (FlyerForRegine == 1) then
        local count = trade:getItemCount();
        local MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(ID.text.FLYER_REFUSED);
        end
    end
end;

function onTrigger(player,npc) 

    local ATimelyVisit = player:getQuestStatus(SANDORIA, A_TIMELY_VISIT);
    local ATimelyVisitProgress = player:getVar("ATimelyVisitProgress");

    -- printf("ATV %d, ATVP %d\n", player:getQuestStatus(SANDORIA, A_TIMELY_VISIT), player:getVar("ATimelyVisitProgress"));

    if (ATimelyVisit == 1 and ATimelyVisitProgress == 4) then
        player:startEvent(0x001a);  -- sorry I was crazy
    elseif (ATimelyVisit == 1 and ATimelyVisitProgress == 7) then
        player:startEvent(0x004e);  -- my house!
    elseif (ATimelyVisit == 1 and ATimelyVisitProgress == 8) then
        player:startEvent(0x005b);  -- find knight to save my family
    elseif (ATimelyVisit == 1 and ATimelyVisitProgress == 9) then
        player:startEvent(0x0030);  -- go get scepter in forest
    elseif (ATimelyVisit == 1 and ATimelyVisitProgress == 11) then
        player:startEvent(0x0015);  -- figuring everything out
    elseif (ATimelyVisit == 1 and ATimelyVisitProgress == 12) then
        player:startEvent(0x0031);  -- save my family at ordelles
    elseif (ATimelyVisit == 1 and ATimelyVisitProgress == 13) then
        player:startEvent(0x000e);  -- quest completion
    elseif (ATimelyVisit == 2) then
        player:startEvent(0x001c);  -- after quest complete
    else
    -- default before quest
        player:startEvent(0x001D);
    end;
end; 

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 0x004e) then
        player:setVar("ATimelyVisitProgress",8);
    elseif (csid == 0x0015) then
        player:setVar("ATimelyVisitProgress",12);
    elseif (csid == 0x000e) then
        if (player:getFreeSlotsCount() == 0) then
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,13163);
        else
            player:addItem(13163);
            player:messageSpecial(ITEM_OBTAINED, 13163);
            player:addTitle(OBSIDIAN_STORM);
            player:setVar("ATimelyVisitProgress", 0);
            player:completeQuest(SANDORIA, A_TIMELY_VISIT);
        end;
    end;
end;
