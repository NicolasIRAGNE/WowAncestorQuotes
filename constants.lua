local A, NS = ...

-- the event BUFF_RECEIVED will trigger whenever the player receives one of these
NS.Buffs = 
{
    2825,       -- Bloodlust
    32182,      -- Heroism
    80353,      -- Time Warp
    90355,      -- Ancient Hysteria
    160452,     -- Netherwinds
    309658,     -- Drums
    10060,      -- Power Infusion
}

NS.Events =
{
    BOSS_KILLED = 1,
    BOSS_FAILED = 1,
    PARTY_MEMBER_DIED = 0.8,
    RECEIVED_BUFF = 1,
    PLAYER_LEFT_GUILD = 1,
    FOOD_EATEN = 0.8,
    FOOD_EXPIRED = 1,
    UNIT_KILLED = 0.06,
    UNIT_KILLED_ABERRATION = 0.06,
    UNIT_KILLED_BEAST = 0.06,
    UNIT_KILLED_GIANT = 0.06,
    UNIT_KILLED_HUMANOID = 0.06,
    UNIT_KILLED_MECHANICAL = 0.06,
    UNIT_KILLED_UNDEAD = 0.06,
    UNIT_KILLED_INDIRECT = 0.04,
}