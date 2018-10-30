---------------------------------------------------------------------------------------------------
-- func: ahexpiredaysmin
-- desc: Gets or sets the minimum auction house expire time.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!ahexpiredaysmin {days}");
end;

function onTrigger(player, days)
    if (days == nil) then
        player:PrintToPlayer( string.format( "Your minimum auction expire time is %i days.", player:getAHExpireDaysMin()));
    elseif (days >= 1 and days <= 365) then
        local maxi = player:getAHExpireDaysMax();
        if (days <= maxi) then
            player:setAHExpireDaysMin(days);
            player:PrintToPlayer( string.format( "Set minimum auction expire time to %i days.", days));
        else
            error(player, string.format( "Number of days must be from 1 to %i.", maxi ) );
        end
    else
        error(player, string.format( "Number of days must be from 1 to 365." ) );
    end

    -- targ:setVar(variable, value);
    -- player:PrintToPlayer( string.format( "Set %s's variable '%s' to %i.", targ:getName(), variable, value ) );
end
