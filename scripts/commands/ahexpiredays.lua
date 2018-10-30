---------------------------------------------------------------------------------------------------
-- func: ahexpiredays
-- desc: Gets or sets the auction house expire time.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!ahexpiredays {days}");
end;

function onTrigger(player, days)
    if (days == nil) then
        local mini = player:getAHExpireDaysMin();
        local maxi = player:getAHExpireDaysMax();
        if (mini == maxi) then
            player:PrintToPlayer( string.format( "Your auction expire time is %i days.", mini));
        else
            player:PrintToPlayer( string.format( "Your min and max auction expire times are %i and %i days.", mini, maxi));
        end
    elseif (days >= 1 and days <= 365) then
        player:setAHExpireDaysMin(days);
        player:setAHExpireDaysMax(days);
        player:PrintToPlayer( string.format( "Set auction expire time to %i days.", days));
    else
        error(player, string.format( "Number of days must be from 1 to 365." ) );
    end
end
