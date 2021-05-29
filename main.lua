local A, NS = ...

local Quotes = NS.Quotes

-- shamelessly stolen from https://stackoverflow.com/a/33511182
local function has_value(tab, val)
    for index, value in pairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

onCooldown = false;
cooldownTime = 1

local function processQuote(filter)
    -- Create a temporary table with the quotes matching the filters
    -- Not sure of the performance cost of this operation, might be worth it to generate only once
    local tmp = {}
    for index, quote in pairs(Quotes) do
        for _, event in pairs(quote.events) do
            if has_value(filter, event) then
                table.insert(tmp, quote)
            end
        end
    end
    if (#tmp == 0) then
        return -- no quote matches filters. outta here!
    end

    local quote = tmp[math.random(#tmp)]
    if (math.random() > NS.Events[quote.events[1]]) then
        return
    end
    print(quote.str); -- print in chat for now, mostly debug purposes. maybe /say it in the future idk
    if (quote.sound) then
        PlaySoundFile(quote.sound[1], "Dialog");
    end
    onCooldown = true;
    C_Timer.After(cooldownTime, function()
        onCooldown = false
    end);
end

local frame = CreateFrame("FRAME", "FooAddonFrame");
frame:RegisterEvent("ENCOUNTER_END");
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
frame:RegisterEvent("CHAT_MSG_SYSTEM");

local playerGUID = UnitGUID("player")
local function eventHandler(self, event, ...)
    if (onCooldown) then
        return
    end
    if (event == "ENCOUNTER_END") then
        local encounterID, encounterName, difficultyID, groupSize, success = ...;
        if (success == 1) then
            processQuote({"BOSS_KILLED"});
            return
        else
            processQuote({"BOSS_FAILED"});
            return
        end
    end

    if (event == "COMBAT_LOG_EVENT_UNFILTERED") then
        local timestamp, subevent, _, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName,
            destFlags, destRaidFlags = CombatLogGetCurrentEventInfo();
        if (subevent == "UNIT_DIED" and strfind(destGUID, "Player") and not UnitIsFeignDeath(destName)) then
            if (UnitGroupRolesAssigned(destName) == "DAMAGER" or UnitGroupRolesAssigned(destName) == "HEALER" or
                UnitGroupRolesAssigned(destName) == "TANK") then
                processQuote({"PARTY_MEMBER_DIED"})
                return
            end
        end
        if (subevent == "SPELL_AURA_APPLIED" and destGUID == playerGUID) then
            local spellId, spellName = select(12, CombatLogGetCurrentEventInfo()) -- i hate lua
            if (spellName == "Well Fed") then
                processQuote({"FOOD_EATEN"})
                return
            end
            if (has_value(NS.Buffs, spellId)) then
                processQuote({"RECEIVED_BUFF"})
                return
            end
        end
        if (subevent == "SPELL_AURA_REMOVED" and destGUID == playerGUID) then
            local spellId, spellName = select(12, CombatLogGetCurrentEventInfo()) -- i hate lua
            if (spellName == "Well Fed") then
                processQuote({"FOOD_EXPIRED"})
                return
            end
        end
        if (string.find(subevent, "_DAMAGE") and sourceGUID == playerGUID and destGUID ~= playerGUID) then
            -- Player inflicts damage! to something else. Congratulations, player.
            if (subevent == "SWING_DAMAGE") then -- melee autoattack damage
                amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing, isOffHand =
                    select(12, CombatLogGetCurrentEventInfo())
            else -- this should cover all the other types because we already eleminated ENVIRONMENTAL
                spellId, spellName, spellSchool, amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing, isOffHand =
                    select(12, CombatLogGetCurrentEventInfo())
            end

            if (overkill >= 0) then -- player kills the guy
                if (destGUID ~= UnitGUID("target")) then
                    processQuote({"UNIT_KILLED_INDIRECT"})
                    return
                else
                    local Types = {
                        Aberration = "UNIT_KILLED_ABERRATION",
                        Beast = "UNIT_KILLED_BEAST",
                        Giant = "UNIT_KILLED_GIANT",
                        Humanoid = "UNIT_KILLED_HUMANOID",
                        Mechanical = "UNIT_KILLED_MECHANICAL",
                        Undead = "UNIT_KILLED_UNDEAD"
                    }
                    if (Types[UnitCreatureType("target")]) then
                        processQuote({Types[UnitCreatureType("target")], "UNIT_KILLED"})
                        return
                    end
                end
                processQuote({"UNIT_KILLED"})
                return
            end

        end
    end

    if (event == "CHAT_MSG_SYSTEM") then
        local msg = ...
        if (string.match(msg, string.gsub(ERR_GUILD_LEAVE_S, "%%s", "") or
            string.match(msg, string.gsub(ERR_GUILD_REMOVE_SS, "%%s", "")))) then -- i am so sorry
            processQuote({"PLAYER_LEFT_GUILD"})
            return
        end
    end
end

frame:SetScript("OnEvent", eventHandler);
