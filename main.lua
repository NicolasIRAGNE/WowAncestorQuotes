local Quotes = {{
    str = "A trifling victory, but a victory nonetheless.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_03.ogg"}
}, {
    str = "These nightmarish creatures can be felled! They can be beaten!",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_01.ogg"}
}, {
    str = "Seize this momentum! Push on to the task's end!",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_02.ogg"}
}, {
    str = "This expedition, at least, promises success.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_04.ogg"}
}, {
    str = "As victories mount, so too will resistance.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_05.ogg"}
}, {
    str = "Success so clearly in view... or is it merely a trick of the light?",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_09.ogg"}
}, {
    str = "Remind yourself that overconfidence is a slow and insidious killer.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_02.ogg"}
}, {
    str = "Be wary - triumphant pride precipitates a dizzying fall...",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_victoryfirst_06.ogg"}
}, {
    str = "Confidence surges as the enemy crumbles!",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_02.ogg"}
}, {
    str = "Another abomination cleansed from our lands.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_weak_02.ogg"}
}, {
    str = "Prodigious size alone does not dissuade the sharpened blade.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_big_03.ogg"}
}, {
    str = "Their cursed champion falls!",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_big_04.ogg"}
}, {
    str = "The bigger the beast, the greater the glory.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_big_01.ogg"}
}, {
    str = "A victory - perhaps a turning point.",
    events = {"BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_big_02.ogg"}
}}

-- shamelessly stolen from https://stackoverflow.com/a/33511182
local function has_value(tab, val)
    for index, value in pairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

local frame = CreateFrame("FRAME", "FooAddonFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:RegisterEvent("ENCOUNTER_END");

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
        return
    end
    local quote = tmp[math.random(#tmp)]
    if (quote.sound) then
        PlaySoundFile(quote.sound[1], "Dialog");
    end
    -- print(quote.str)
end

local function eventHandler(self, event, ...)
    if (event == "ENCOUNTER_END") then
        if (success == 1) then
            processQuote({"BOSS_KILLED"});
        else
            processQuote({"BOSS_FAILED"});
        end
    end
end

frame:SetScript("OnEvent", eventHandler);
