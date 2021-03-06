-----------------------------------
-- Area: La Theine Plateau
--  NPC: Narvecaint
-- Involved in Mission: The Rescue Drill
-- Involved in Quest: A Timely Visit
-- !pos -263 22 129 102
-----------------------------------
require("scripts/globals/missions");
require("scripts/globals/quests");
local ID = require("scripts/zones/La_Theine_Plateau/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local ATimelyVisit = player:getQuestStatus(SANDORIA, A_TIMELY_VISIT);
    local ATimelyVisitProgress = player:getVar("ATimelyVisitProgress");
    -- printf("ATV %d, ATVP %d\n", ATimelyVisit, ATimelyVisitProgress);

    if (player:getCurrentMission(SANDORIA) == THE_RESCUE_DRILL) then
        local MissionStatus = player:getVar("MissionStatus");

        if (MissionStatus == 6) then
            player:startEvent(107);
        elseif (MissionStatus == 7) then
            player:showText(npc, ID.text.RESCUE_DRILL + 14);
        elseif (MissionStatus == 8) then
            player:showText(npc, ID.text.RESCUE_DRILL + 21);
        elseif (MissionStatus >= 9) then
            player:showText(npc, ID.text.RESCUE_DRILL + 26);
        else
            player:showText(npc, ID.text.RESCUE_DRILL);
        end

    elseif ((ATimelyVisit == 1) and (ATimelyVisitProgress == 2)) then
        player:startEvent(0x0000);
    elseif ((ATimelyVisit == 1) and (ATimelyVisitProgress == 12)) then
        player:startEvent(0x0001);

    else
        player:showText(npc, ID.text.RESCUE_DRILL);
    end

end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 107) then
        player:setVar("MissionStatus",7);
    elseif (csid == 0x0000) then
        player:setVar("ATimelyVisitProgress",3);
    elseif (csid == 0x0001) then
        player:setVar("ATimelyVisitProgress",13);
    end

end;
