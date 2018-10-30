---------------------------------------------------------------------------------------------------
-- func: ahexpiredaysmax
-- desc: Gets or sets the maximum auction house expire time.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!ahexpiredaysmax {days}");
end;

function onTrigger(player, days)
    if (days == nil) then
        player:PrintToPlayer( string.format( "Your maximum auction expire time is %i days.", player:getAHExpireDaysMax()));
    elseif (days >= 1 and days <= 365) then
        local mini = player:getAHExpireDaysMin();
        if (days >= mini) then
            player:setAHExpireDaysMax(days);
            player:PrintToPlayer( string.format( "Set maximum auction expire time to %i days.", days));
        else
            error(player, string.format( "Number of days must be from %i to 365.", mini ) );
        end
    else
        error(player, string.format( "Number of days must be from 1 to 365." ) );
    end
end
