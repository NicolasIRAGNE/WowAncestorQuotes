local addonName, NS = ...

NS.Quotes = {{
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
    events = {"BOSS_KILLED", "UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_02.ogg"}
}, {
    str = "Prodigious size alone does not dissuade the sharpened blade.",
    events = {"BOSS_KILLED", "UNIT_KILLED_GIANT"},
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
}, {
    str = "A wise general cuts losses, and regroups.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_retreat_success_02.ogg"}
}, {
    str = "This skirmish may be lost, but the battle may yet be won.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_retreat_success_01.ogg"}
}, {
    str = "The sin is not in being outmatched, but in failing to recognize it.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_retreat_success_03.ogg"}
}, {
    str = "A setback, but not the end of things!",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_expeditionfail1.ogg"}
}, {
    str = "Wounds to be tended; lessons to be learned.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_expeditionfail2.ogg"}
}, {
    str = "Regroup. Reassemble. Evil is timeless, after all.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_expeditionfail3.ogg"}
}, {
    str = "Failure tests the mettle of heart, brain, and body.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_expeditionfail4.ogg"}
}, {
    str = "You cannot learn a thing you think you know...",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_bad_questfail_11.ogg"}
}, {
    str = "Do not ruminate on this fleeting failure - the campaign is long, and victory will come.",
    events = {"BOSS_FAILED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_bad_questfail_07.ogg"}
}, {
    str = "More blood soaks the soil, feeding the evil therein.",
    events = {"PARTY_MEMBER_DIED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_death2.ogg"}
}, {
    str = "This is no place for the weak, or the foolhardy.",
    events = {"PARTY_MEMBER_DIED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_death4.ogg"}
}, {
    str = "Another life wasted in the pursuit of glory and gold.",
    events = {"PARTY_MEMBER_DIED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_death3.ogg"}
}, {
    str = "More dust, more ashes, more disappointment.",
    events = {"PARTY_MEMBER_DIED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_death6.ogg"}
}, {
    str = "Anger is power - unleash it!",
    events = {"RECEIVED_BUFF"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_virtue_powerful.ogg"}
}, {
    str = "The blood pumps, the limbs obey.",
    events = {"RECEIVED_BUFF"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_healcrit_03.ogg"}
}, {
    str = "A time to perform beyond one's limits!",
    events = {"RECEIVED_BUFF"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_buff_03.ogg"}
}, {
    str = "Inspiration and improvement!",
    events = {"RECEIVED_BUFF"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_buff_04.ogg"}
}, {
    str = "The blood quickens!",
    events = {"RECEIVED_BUFF"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_buff_01.ogg"}
}, {
    str = "A brilliant confluence of skill and purpose!",
    events = {"RECEIVED_BUFF"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_buff_02.ogg"}
}, {
    str = "Press this advantage, give them no quarter!",
    events = {"RECEIVED_BUFF", "UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_03.ogg"}
}, {
    str = "This one has become vestigial, useless.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_05.ogg"}
}, {
    str = "Suffer not the lame horse... nor the broken man.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_04.ogg"}
}, {
    str = "Another soul battered and broken, cast aside like a spent torch.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_01.ogg"}
}, {
    str = "Those without the stomach for this place must move on.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_02.ogg"}
}, {
    str = "Send this one to journey elsewhere, for we have need of sterner stock.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_03.ogg"}
}, {
    str = "Slumped shoulders, wild eyes, and a stumbling gait - this one is no more good to us.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_08.ogg"}
}, {
    str = "The task ahead is terrible, and weakness cannot be tolerated.",
    events = {"PLAYER_LEFT_GUILD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_town_dismiss_06.ogg"}
}, {
    str = "A moment of respite. A chance to steel oneself against the coming horrors.",
    events = {"FOOD_EATEN"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_camp_01.ogg"}
}, {
    str = "Gathered close in tenuous firelight, and uneasy companionship.",
    events = {"FOOD_EATEN"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_camp_04.ogg"}
}, {
    str = "Huddled together, furtive and vulnerable. Rats in a maze.",
    events = {"FOOD_EATEN"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_camp_05.ogg"}
}, {
    str = "The requirements of survival cannot be met on an empty stomach.",
    events = {"FOOD_EXPIRED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_starve5.ogg"}
}, {
    str = "No force of will can overcome a failing body.",
    events = {"FOOD_EXPIRED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_starve4.ogg"}
}, {
    str = "As the fiend falls, a faint hope blossoms.",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_01.ogg"}
}, {
    str = "Even reanimated bones can fall; even the dead can die again.",
    events = {"UNIT_KILLED_UNDEAD"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Narration_bosskillruins1.ogg"}
}, {
    str = "Their formation is broken - maintain the offensive.",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_04.ogg"}
}, {
    str = "Continue the onslaught! Destroy. Them. All.",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_05.ogg"}
}, {
    str = "Executed with impunity!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_weak_01.ogg"}
}, {
    str = "Another abomination cleansed from our lands.",
    events = {"UNIT_KILLED_ABERRATION", "UNIT_KILLED_UNDEAD", "BOSS_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_killfirst_04.ogg"}
}, {
    str = "Begone, fiend!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_weak_03.ogg"}
}, {
    str = "Another one falls!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_weak_05.ogg"}
}, {
    str = "Decimated!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_01.ogg"}
}, {
    str = "Obliterated!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_02.ogg"}
}, {
    str = "Destroyed!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_03.ogg"}
}, {
    str = "Eradicated!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_04_v1.ogg"}
}, {
    str = "Eradicated!", -- yes, there are two of them
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_04_v2.ogg"}
}, {
    str = "Annihilated!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_05.ogg"}
}, {
    str = "Eradicated!",
    events = {"UNIT_KILLED"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_strong_04_v1.ogg"}
}, {
    str = "Monstrous size has no intrinsic merit, unless inordinate exsanguination be considered a virtue!",
    events = {"UNIT_KILLED_GIANT"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_big_05.ogg"}
}, {
    str = "A death by inches...",
    events = {"UNIT_KILLED_INDIRECT"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_dot_03.ogg"}
}, {
    str = "Great is the weapon that cuts on its own!",
    events = {"UNIT_KILLED_INDIRECT"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_dot_01.ogg"}
}, {
    str = "Slowly, gently, this is how a life is taken...",
    events = {"UNIT_KILLED_INDIRECT"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_dot_04.ogg"}
}, {
    str = "The slow death - unforeseen, unforgiving.",
    events = {"UNIT_KILLED_INDIRECT"},
    sound = {"Interface/AddOns/AncestorQuotes/sounds/Vo_narr_good_kill_dot_02.ogg"}
}}
