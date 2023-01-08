local _, br = ...
if br.lists == nil then
    br.lists = {}
end
-- burnUnits = List of UnitID/Names we should have highest prio on.
br.lists.burnUnits = {
    --Castle Narthia
    [175992] = { coef = 150, name = "Dutiful Attendant", id = 175992 }, -- gives immunity to boss
    [172858] = { coef = 200, name = "Stone Legion Goliath", id = 172858 },
    [174335] = { coef = 100, name = "Stone Legion Skirmisher", id = 174335 },
    [173162] = { coef = 200, name = "Lord Evershade", id = 173162 },
    [173163] = { coef = 200, name = "Baron Duskhollow", id = 173163 },
    --Dragonflight dungeons
    --The Nokhud Offensive
    [192800] = { coef = 100, name = "Nokhud Lancemaster", id = 192800 },
    [191847] = { coef = 100, name = "Nokhud Plainstomper", id = 191847 },
    [192796] = { coef = 100, name = "Nokhud Hornsounder", id = 192796 },
    [194317] = { coef = 100, name = "Stormcaller Boroo", id = 194317 },
    [194896] = { coef = 100, name = "Primal Stormshield", id = 194896 },
    [194315] = { coef = 100, name = "Stormcaller Solongo", id = 194315 },
    [194894] = { coef = 100, name = "Primalist Stormspeaker", id = 194894 },
    [194316] = { coef = 100, name = "Stormcaller Zarii", id = 194316 },
    [195929] = { coef = 100, name = "Soulharvester Tumen", id = 195929 },
    [195851] = { coef = 100, name = "Ukhel Deathspeaker", id = 195851 },
    [195877] = { coef = 100, name = "Risen Mystic", id = 195877 },
    [195842] = { coef = 100, name = "Ukhel Corruptor", id = 195842 },
    [195930] = { coef = 100, name = "Soulharvester Mandakh", id = 195930 },
    [195851] = { coef = 100, name = "Ukhel Deathspeaker", id = 195851 },
    [195927] = { coef = 100, name = "Soulharvester Galtmaa", id = 195927 },
    [195842] = { coef = 100, name = "Ukhel Corruptor", id = 195842 },
    [195723] = { coef = 100, name = "Teera", id = 195723 },
    [193462] = { coef = 100, name = "Batak", id = 193462 },
    [190294] = { coef = 100, name = "Nokhud Stormcaster", id = 190294 },
    --Shadowlands dungeons
    -- m+ stuff
    [343502] = { coef = 50, name = "Inspiring - M+ Affix", id = 343502 },
    [173729] = { coef = 150, name = "Manifestation of Pride", id = 173729 },
    --Plaguefall
    [164362] = { coef = 50, name = "Slimy Morsel", id = 164362 }, -- Plaguefall Dungeon - if they reach boss the heal him
    [169498] = { coef = 150, name = "Plague Bomb", id = 169498 }, -- kill before it explodes
    [164707] = { coef = 50, name = "Congealed Slime", buff = 333737, id = 164707 }, -- 75% damage reduction to boss
    [165430] = { coef = 50, name = "Malignant Spawn", id = 165430 }, -- kill add before it explodes
    --Necrotic Wake
    [164702] = { coef = 100, name = "Carrion Worm", id = 164702 }, --kill before it gets 3 mele hits to explode
    [164427] = { coef = 100, name = "Reanimated Warrior", id = 164427 },
    [164414] = { coef = 100, name = "Reanimated Mage", id = 164414 },
    [168246] = { coef = 100, name = "Reanimated Crossbowman", id = 168246 },
    -- Sanguine Depth
    [168882] = { coef = 100, name = "Fleeting Manifestation", id = 168882 }, --  168882/fleeting-manifestation - must kill fast

    -- old content stuff
    [30176] = { coef = 100, name = "Ahn'kahar Guardian", id = 30176 }, -- Gives boss and other add immune buff while alive.
    [71603] = { coef = 100, name = "Immerseus Oozes", id = 71603 }, -- kill on sight
    -- Shadowmoon Burial Grounds
    [75966] = { coef = 100, name = "Defiled Spirit", id = 75966 }, -- need to be cc and snared and is not allowed to reach boss.
    [75899] = { coef = 100, name = "Possessed Soul", id = 75899 },
    [76518] = { coef = 100, unitMarker = 8 }, -- Ritual of Bones, marked one will be prioritized
    -- Auchindon
    [77812] = { coef = 150, name = "Sargerei Souldbinder", id = 77812 }, -- casts a Mind Control
    -- Grimrail Depot
    [80937] = { coef = 100, id = 80937 },
    -- UBRS
    [76222] = { coef = 100, id = 76222 },
    [163061] = { coef = 100, id = 163061 }, -- Windfury Totem
    -- Proving Grounds
    [71070] = { coef = 150, name = "Illusion Banshee", id = 71070 }, -- proving ground (will explode if not burned)
    [71075] = { coef = 150, name = "Illusion Banshee", id = 71075 }, -- proving ground (will explode if not burned)
    [71076] = { coef = 25, id = 71076 }, -- Proving ground healer
    -- Legion
    [117264] = { coef = 200, name = "Maiden of Valor", buff = 241008, id = 117264 }, -- burn Maiden of Valor if buff is present
    [120651] = { coef = 150, name = "Explosives", id = 120651 }, -- M+ Affix
    -- [115642] = { coef = 100}, -- Umbral Imps - Challenge mode
    -- [115638] = { coef = 175, buff = 243113},
    -- [115641] = { coef = 150}, -- Smoldering Imps
    -- [115640] = { coef = 125}, -- Fuming Imps
    -- [115719] = { coef = 200}, -- Imp Servents
    -- BFA
    [141851] = { coef = 150, name = "Spawn of G'huun", id = 141851 },
    [131823] = { coef = 150, name = "Sister Malady", buff = 260805, id = 131823 }, -- Sister Malady (No Focusing Iris)
    [131824] = { coef = 150, name = "Sister Solena", buff = 260805, id = 131824 }, -- Sister Solena (No Focusing Iris)
    [131825] = { coef = 150, name = "Sister Briar", buff = -260805, id = 131825 }, -- Sister Briar (No Focusing Iris)
    -- Uldir
    [135016] = { coef = 200, name = "Plague Amalgam", id = 135016 },
}
