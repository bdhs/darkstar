-----------------------------------
-- Area: Castle_Zvahl_Keep
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.CASTLE_ZVAHL_KEEP] =
{
    text =
    {
        CONQUEST_BASE           = 0, -- Tallying conquest results...
        ITEM_CANNOT_BE_OBTAINED = 6540, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6546, -- Obtained: <item>.
        GIL_OBTAINED            = 6547, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6549, -- Obtained key item: <keyitem>.
        CHEST_UNLOCKED          = 7221, -- You unlock the chest!
        CHEST_FAIL              = 7222, -- <name> fails to open the chest.
        CHEST_TRAP              = 7223, -- The chest was trapped!
        CHEST_WEAK              = 7224, -- You cannot open the chest when you are in a weakened state.
        CHEST_MIMIC             = 7225, -- The chest was a mimic!
        CHEST_MOOGLE            = 7226, -- You cannot open the chest while participating in the moogle event.
        CHEST_ILLUSION          = 7227, -- The chest was but an illusion...
        CHEST_LOCKED            = 7228, -- The chest appears to be locked. If only you had <item>, perhaps you could open it...
        HOMEPOINT_SET           = 7279, -- Home point set!
    },
    mob =
    {
        BARON_VAPULA_PH   = 
        {
            [17440962] = 17440963, -- -254.000 -52.125 86.000
            [17440960] = 17440963, -- -227.007 -52.125 83.768
        },
        BARONET_ROMWE_PH  = 
        {
            [17440985] = 17440986, -- -335.444 -52.125 15.148
            [17440984] = 17440986, -- -317.070 -52.125 14.052
        },
        COUNT_BIFRONS_PH  = 
        {
            [17440968] = 17440969, -- -204.000 -52.125 -95.000
        },
        VISCOUNT_MORAX_PH = 
        {
            [17440973] = 17440975, -- -365.684 -52.125 -136.540
        },
    },
    npc =
    {
        ZVAHL_KEEP_TREASURE_CHEST = 17441088,
    },
}

return zones[dsp.zone.CASTLE_ZVAHL_KEEP]