local rotationName = "UnknownRalphShadow" -- Change to name of profile listed in options drop down

---------------
--- Toggles ---
---------------
local function createToggles() -- Define custom toggles
    local CreateButton = br["CreateButton"]
    -- Rotation Button
    br.RotationModes = {
        [1] = {
            mode = "Auto",
            value = 1,
            overlay = "Automatic Rotation",
            tip = "Swaps between Single and Multiple based on number of #enemies.yards8 in range",
            highlight = 1,
            icon = br.player.spell.swipeBear
        },
        [2] = {
            mode = "Multi",
            value = 2,
            overlay = "Multi Target",
            tip = "Multi Target Rotation",
            highlight = 1,
            icon = br.player.spell.regrowth
        },
		[3] = {
            mode = "Sing",
            value = 3,
            overlay = "Single Target",
            tip = "Single Target Only",
            highlight = 1,
            icon = br.player.spell.swipeBear
        },
        [4] = {
            mode = "Off",
            value = 4,
            overlay = "DPS Rotation Disabled",
            tip = "Disable DPS Rotation",
            highlight = 0,
            icon = br.player.spell.regrowth
        }
    }
     CreateButton("Rotation", 1, 0)
    -- Cooldown Button
    br.CooldownModes = {
        [1] = {mode = "Auto", value = 1, overlay = "Cooldowns Automated", tip = "Automatic Cooldowns - Boss Detection.", highlight = 1, icon = br.player.spell.ascendance},
        [2] = {mode = "On", value = 2, overlay = "Cooldowns Enabled", tip = "Cooldowns used regardless of target.", highlight = 1, icon = br.player.spell.fireElemental},
        [3] = {mode = "Off", value = 3, overlay = "Cooldowns Disabled", tip = "No Cooldowns will be used.", highlight = 0, icon = br.player.spell.earthElemental}
    }
    CreateButton("Cooldown", 2, 0)
    -- Defensive Button
    br.DefensiveModes = {
        [1] = {mode = "On", value = 1, overlay = "Defensive Enabled", tip = "Includes Defensive Cooldowns.", highlight = 1, icon = br.player.spell.astralShift},
        [2] = {mode = "Off", value = 2, overlay = "Defensive Disabled", tip = "No Defensives will be used.", highlight = 0, icon = br.player.spell.earthShield}
    }
    CreateButton("Defensive", 3, 0)
    -- Interrupt Button
    br.InterruptModes = {
        [1] = {mode = "On", value = 1, overlay = "Interrupts Enabled", tip = "Includes Basic Interrupts.", highlight = 1, icon = br.player.spell.windShear},
        [2] = {mode = "Off", value = 2, overlay = "Interrupts Disabled", tip = "No Interrupts will be used.", highlight = 0, icon = br.player.spell.hex}
    }
    CreateButton("Interrupt", 4, 0)
    -- Healing Button
    br.HealingModes = {
        [1] = {mode = "On", value = 1, overlay = "Healing Enabled", tip = "Includes Basic Healing.", highlight = 1, icon = br.player.spell.flashHeal},
        [2] = {mode = "Off", value = 2, overlay = "Healing Disabled", tip = "No Healing will be used.", highlight = 0, icon = br.player.spell.hex}
    }
    CreateButton("Healing", 5, 0)
end

---------------
--- OPTIONS ---
---------------
local function createOptions()
    local optionTable

    local function rotationOptions()
        -----------------------
        --- PRE-COMBAT OPTIONS --- -- Define PRE-COMBAT Options
        -----------------------
        local section = br.ui:createSection(br.ui.window.profile,  "Pre-Combat")
            -- Dummy DPS Test
            br.ui:createSpinner(section, "DPS Testing",  1,  1,  60,  1,  "Set to desired time for test in minuts. Min: 5 / Max: 60 / Interval: 5")
            -- Pre-Pull Timer
            br.ui:createSpinner(section, "Pre-Pull Timer",  5,  1,  10,  1,  "Set to desired time to start Pre-Pull (DBM Required). Min: 1 / Max: 10 / Interval: 1")
            -- Vampiric Touch OoC
            br.ui:createCheckbox(section,"Vampiric Touch OoC")
            -- Arcane Torrent OoC
            br.ui:createCheckbox(section,"Arcane Torrent")
        br.ui:checkSectionState(section)
        ----------------------
        --- GENERAL OPTIONS --- -- Define GENERAL Options
        ----------------------
		section = br.ui:createSection(br.ui.window.profile, "General")
			-- Angelic Feather
			br.ui:createSpinner(section,"Angelic Feather", 3, 0, 100, 1, "Use Angelic Feather after past seconds of moving.")
            -- Body and Soul
            br.ui:createCheckbox(section,"Power Word: Shield (Body and Soul)")
            -- Auto Buff Fortitude
            br.ui:createCheckbox(section,"Power Word: Fortitude", "Check to auto buff Fortitude on party.")			
            -- Shadow Mend
            br.ui:createSpinner(section, "Shadow Mend OoC", 80, 0, 100, 5, "Health Percentage to cast at Out of Combat.")
			-- Flash Heal Out of Combat
			br.ui:createSpinner(section, "Flash Heal OoC", 90, 1, 100, 1, "Health Percentage to heal Out of Combat.")
		br.ui:checkSectionState(section)
        -----------------
        ---AOE OPTIONS---
        -----------------
        section = br.ui:createSection(br.ui.window.profile,  "AOE Options")
            -- Shadow Crash
            br.ui:createCheckbox(section,"Shadow Crash")
            -- Shadow Word: Pain Max Targets
            br.ui:createSpinnerWithout(section, "Shadow Word: Pain Max Targets",  4,  1,  7,  1, "Unit Count Limit that Shadow Word: Pain will be cast on.")
            -- Vampiric Touch Max Targets
            br.ui:createSpinnerWithout(section, "Vampiric Touch Max Targets",  4,  1,  7,  1, "Unit Count Limit that Vampiric Touch will be cast on.")
            -- Mind Sear Targets
            --br.ui:createSpinnerWithout(section, "Mind Sear Targets",  2,  2,  10,  1, "Unit Count Limit before Mind Sear is being used.")
        br.ui:checkSectionState(section)
        ------------------------
        --- COOLDOWN OPTIONS --- -- Define Cooldown Options
        ------------------------
        section = br.ui:createSection(br.ui.window.profile,  "Cooldowns")
            -- Power Infusion
            br.ui:createCheckbox(section,"Power Infusion")
            -- Surrender to Madness
            br.ui:createCheckbox(section,"Surrender to Madness")
            -- Pots
            br.ui:createDropdown(section, "Auto use Pots", { "Always", "Groups", "Raids", "solo", "never" }, 5, "", "when to use pots")
            -- Trinkets
            br.ui:createCheckbox(section,"Use Trinkets")
        br.ui:checkSectionState(section)
        -------------------------
        --- DEFENSIVE OPTIONS --- -- Define Defensive Options
        -------------------------
        section = br.ui:createSection(br.ui.window.profile, "Defensive")
            -- Healthstone
            br.ui:createSpinner(section, "Healthstone",  60,  0,  100,  5,  "Health Percentage to use at.")
            -- Dispel Magic
            br.ui:createCheckbox(section,"Dispel Magic")
            -- Dispersion
            br.ui:createSpinner(section, "Dispersion",  10,  0,  100,  5,  "Health Percentage to use at.")
            -- -- Fade
            br.ui:createCheckbox(section, "Fade")
            -- Vampiric Embrace
            --br.ui:createSpinner(section, "Vampiric Embrace",  25,  0,  100,  5,  "Health Percentage to use at.")
            -- Power Word: Shield
            br.ui:createSpinner(section, "Power Word: Shield",  60,  0,  100,  5,  "Health Percentage to use at.")
            -- Shadow Mend
--            br.ui:createSpinner(section, "Shadow Mend",  40,  0,  100,  5,  "Health Percentage to cast at.")
			-- Flash Heal
--			br.ui:createSpinner(section, "Flash Heal", 60, 0, 100, 5, "Health Percentage to use at.")
			-- Halo
			br.ui:createSpinner(section, "Halo",  70,  0,  100,  5,  "Health Percent to use at")
			br.ui:createSpinnerWithout(section, "Halo Targets",  3,  0,  40,  1,  "Minimum Halo Targets")
            -- Psychic Scream / Mind Bomb
            -- br.ui:createSpinner(section, "Psychic Scream / Mind Bomb",  40,  0,  100,  5,  "Health Percentage to use at.")
        br.ui:checkSectionState(section)
        -------------------------
        --- INTERRUPT OPTIONS --- -- Define Interrupt Options
        -------------------------
        section = br.ui:createSection(br.ui.window.profile, "Interrupts")
            -- Silence
            br.ui:createCheckbox(section, "Silence")
            -- Psychic Horror
            br.ui:createCheckbox(section, "Psychic Horror")
            -- Psychic Scream
            br.ui:createCheckbox(section, "Psychic Scream")
            -- Interrupt Target
            --br.ui:createDropdownWithout(section,"Interrupt Unit", {"1. All in Range", "2. Target", "3. Focus"}, 1, "Interrupt your focus, your target, or all enemies in range.")
            -- Interrupt Percentage
            br.ui:createSpinner(section, "Interrupt At",  45,  0,  95,  5,  "Cast Percent to Cast At")    
        br.ui:checkSectionState(section)
        -------------------------
        --- HEAL OPTIONS --- -- Define Healing Options
        -------------------------
        section = br.ui:createSection(br.ui.window.profile, "Health")
			-- Flash Heal
			br.ui:createSpinner(section, "Flash Heal", 60, 0, 100, 5, "Health Percentage to use at.")  
            -- Shadow Mend
            br.ui:createSpinner(section, "Shadow Mend",  40,  0,  100,  5,  "Health Percentage to cast at.")
        br.ui:checkSectionState(section)
        ----------------------
        --- TOGGLE OPTIONS --- -- Define Toggle Options
        ----------------------
        section = br.ui:createSection(br.ui.window.profile,  "Toggle Keys")
            -- Single/Multi Toggle
            br.ui:createDropdown(section,  "Rotation Mode", br.dropOptions.Toggle,  4)
            --Cooldown Key Toggle
            br.ui:createDropdown(section,  "Cooldown Mode", br.dropOptions.Toggle,  3)
            --Defensive Key Toggle
            br.ui:createDropdown(section,  "Defensive Mode", br.dropOptions.Toggle,  6)
            -- Interrupts Key Toggle
            br.ui:createDropdown(section,  "Interrupt Mode", br.dropOptions.Toggle,  6)
            -- Pause Toggle
            br.ui:createDropdown(section,  "Pause Mode", br.dropOptions.Toggle,  6)   
        br.ui:checkSectionState(section)
    end
    optionTable = {{
        [1] = "Rotation Options",
        [2] = rotationOptions,
    }}
    return optionTable
end

--------------
--- Locals ---
--------------
-- BR API Locals - Many of these are located from System/API, this is a sample of commonly used ones but no all inclusive
local buff
local cast
local cd
local conduit
local covenant
local debuff
local enemies
local equiped
local gcd
local gcdMax
local has
local inCombat
local item
local inInstance
local inRaid
local level
local mode
local moving
local mrdm
local php
local power
local solo
local spell
local talent
local tankMoving
local thp
local ui
local unit
local units
local use
local voidform
-- General Locals - Common Non-BR API Locals used in profiles
local haltProfile
local hastar
local healPot
local profileStop
local ttd
-- Profile Specific Locals - Any custom to profile locals
local allDotsUp
local biggestGroup
local bestUnit
local dotsUp
local mfTicks
local msTicks
local novaEnemies
local pool
local pot_use
local searCutoff
local searEnemies
local snmCutoff
local targetGroup
local thisGroup
local thisUnit
local trinket13
local trinket14
local SWPmaxTargets
local VTmaxTargets

local actionList = {}

-----------------
--- Functions --- -- List all profile specific custom functions here
-----------------

local function dotsCheck()
    for i = 1, #enemies.yards40 do
        local thisUnit = enemies.yards40[i]
        if (debuff.shadowWordPain.refresh(thisUnit) and ttd(thisUnit) > 4) or (debuff.vampiricTouch.refresh(thisUnit) and ttd(thisUnit) > 6) then
            return true
        else
            return false
        end
    end
end

function noDotCheck(unit)
    if br.GetObjectID(unit) == 171557 or br._G.UnitIsCharmed(unit) then
        return true
    else
        return false
    end
end

local function swpCheck()
    for i = 1, #enemies.yards40 do
        local thisUnit = enemies.yards40[i]
        if debuff.shadowWordPain.refresh(thisUnit) and ttd(thisUnit) > 4 then
            return false
        else
            return true
        end
    end
end

local function ToF()
    if talent.twistOfFate then
        return 1
    else 
        return 0
    end
end

function vtCheck()
    for i = 1, #enemies.yards40 do
        local thisUnit = enemies.yards40[i]
        if debuff.vampiricTouch.refresh(thisUnit) and ttd(thisUnit) > 6 then
            return true
        end
    end
end

local function dEchoesCheck()
    if conduit.dissonantEchoes.enabled then
        return 1
    else
        return 0
    end
end

--------------------
--- Action Lists ---
--------------------

-- Action List - Cast while Cooldown
local function CwC()
    -- if ui.checked("Silence") then
    --     for i=1, #enemies.yards30 do
    --         thisUnit = enemies.yards30[i]
    --         if unit.interruptable(thisUnit,ui.value("Interrupt At")) then
    --             if cast.silence(thisUnit) then return end
    --         end
    --     end
    -- end
    if not pool and cast.current.mindFlay() and mfTicks >= 1 and (not debuff.devouringPlague.exists() or power > 90) then
        if cast.devouringPlague("target") then ui.debug("Cancel Mindflay to DP target [CwC]") return end
    end
    if (cast.current.mindFlay() and mfTicks >= 1 or (power < 30 or msTicks >= 5)) and cd.shadowWordDeath.ready() then
        if cd.shadowWordDeath.ready() then
            for i = 1, #enemies.yards40 do
                local thisUnit = enemies.yards40[i]
                if not talent.deathAndMadness and br.getHP(thisUnit) < 20 or talent.deathAndMadness and br.getHP(thisUnit) and ttd(thisUnit) < 7 then
                    if not noDotCheck(thisUnit) then
                        if cast.shadowWordDeath(thisUnit) then ui.debug("Casting SW:D on low enemies [CwC]") return end
                    end
                end
            end
        end
    end
    -- Consume dark thoughts proc while channeling mindflay or mind sear
    if cast.current.mindFlay() and cd.mindBlast.ready() and (voidform and cd.voidBolt.exists() or not voidform) then
        if buff.darkThoughts.exists() and power < 30 or #searEnemies < searCutoff then
            if cast.mindBlast("target") then ui.debug("Casting Mind Blast [CwC]") return end
        end
    end
    if (voidform or buff.dissonantEchoes.exists()) and mfTicks >= 1 and cast.current.mindFlay() and cd.voidBolt.ready() then
        if cast.cancel.mindFlay() then ui.debug("Stop Mindflay for Void Bolt [CwC]") return end
    end
    if cast.current.mindFlay() and buff.boonOfTheAscended.exists() and cd.ascendedBlast.ready() then
        if cast.cancel.mindFlay() then ui.debug("Stop Mindflay for Ascended Blast [CwC]") return end
    end
    if cast.current.mindFlay() and mfTicks >=1 and vtCheck() then
        if cast.cancel.mindFlay() then ui.debug("Stop Mindflay to refresh Vampiric Touch [CwC]") return end
    end
end -- End Action List - Cast while Cooldown

-- Action List - Extra
actionList.Extra = function()
    -- Shadowform
    if not buff.shadowform.exists() then
        if not voidform then
            if cast.shadowform() then return end
        end
    end
    -- PowerWord: Fort
    if ui.checked("Power Word: Fortitude") then
        for i = 1, #br.friend do
            if not buff.powerWordFortitude.exists(br.friend[i].unit,"any") and br.getDistance("player", br.friend[i].unit) < 40 and not br._G.UnitIsDeadOrGhost(br.friend[i].unit) and br._G.UnitIsPlayer(br.friend[i].unit) and br.isValidUnit("target") then
                if cast.powerWordFortitude() then return end
            end
        end
    end
	-- Angelic Feather
    if ui.checked("Angelic Feather") then
        if br.IsMovingTime(ui.value("Angelic Feather")) and talent.angelicFeather and not buff.angelicFeather.exists("player") and not buff.soulshape.exists() then
            if cast.angelicFeather("player") then ui.debug("Casting Angelic Feather [Extra]") return end
        end
    end
	-- Flash Heal
    if ui.checked("Flash Heal OoC") and not inCombat and php <= ui.value("Flash Heal OoC") then
        if cast.flashHeal("player") then ui.debug("Casting Flash Heal OoC [Extra]") return true end
    end
    -- Dummy Test
    if ui.checked("DPS Testing") then
        if br.GetObjectExists("target") then
            if br.getCombatTime() >= (tonumber(ui.value("DPS Testing"))*60) and br.isDummy() then
                br._G.StopAttack()
                br._G.ClearTarget()
                br._G.print(tonumber(ui.value("DPS Testing")) .." Minute Dummy Test Concluded - Profile Stopped")
                profileStop = true
            end
        end
    end -- End Dummy Test
end -- End Action List - Extra

-- Action List - Defensive
actionList.Defensive = function()
    -- Fade
    if br.isChecked("Fade") then
        if not solo and br._G.UnitThreatSituation("player") ~= nil and br._G.UnitThreatSituation("player") > 1 then
            if cast.fade("player") then ui.debug("Defensive - Casting fade") return end
        end
    end
    -- Healthstone
    if ui.checked("Healthstone") and php <= ui.value("Healthstone") and inCombat and (br.hasHealthPot() or br.hasItem(5512) or br.hasItem(171267)) then
        if br.canUseItem(5512) then
            br.useItem(5512)
        elseif br.canUseItem(healPot) then
            br.useItem(healPot)
        elseif br.hasItem(171267) and br.canUseItem(171267) then
            br.useItem(171267)
        end
    end
    -- Dispersion
    if ui.checked("Dispersion") and inCombat and php <= ui.value("Dispersion") then
        if cast.dispersion() then ui.debug("Casting dispersion [Defensive]") return end
    end
    -- Dispel Magic
    if br.isChecked("Dispel Magic") then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
            if br.canDispel(enemies.yards40[i],spell.dispelMagic) then
                if cast.dispelMagic() then br.addonDebug("Casting Dispel Magic") return end
            end
        end
    end
    -- PowerWord: Shield
    if not debuff.weakenedSoul.exists('player') and (ui.checked("Power Word: Shield (Body and Soul)") and talent.bodyAndSoul and moving and not br._G.IsFalling() or inCombat and php <= ui.value('Power Word: Shield')) then
        if cast.powerWordShield("player") then ui.debug("BnS or low health PW:S [Defensive]") return end
    end
	-- Halo
	if ui.checked("Halo") and talent.halo and not moving then
		if br.getLowAllies(ui.value("Halo")) >= ui.value("Halo Targets") then
			if cast.halo() then ui.debug("Casting Halo") return end
		end
	end
end -- End Action List - Defensive

-- Action List - Interrupt
actionList.Interrupt = function()
    if br.useInterrupts() then
        -- Silence
        unit.interruptable(thisUnit,ui.value("Interrupt At"))
        if ui.checked("Silence") then
            for i=1, #enemies.yards30 do
                thisUnit = enemies.yards30[i]
                if unit.interruptable(thisUnit,ui.value("Interrupt At")) then
                    if cast.silence(thisUnit) then return end
                end
            end
        end
        -- Psychic Horror
            if talent.psychicHorror and ui.checked("Psychic Horror") and (cd.silence.exists() or not ui.checked("Silence")) then
                for i=1, #enemies.yards30 do
                    thisUnit = enemies.yards30[i]
                    if unit.interruptable(thisUnit,ui.value("Interrupt At")) then
                        if cast.psychicHorror(thisUnit) then return end --Print("pH on any") return end
                    end
                end
            end
        -- Psychic Scream
            if ui.checked("Psychic Scream") then
                for i=1, #enemies.yards8 do
                    thisUnit = enemies.yards8[i]
                    if unit.interruptable(thisUnit,ui.value("Interrupt At")) then
                        if cast.psychicScream("player") then return end
                    end
                end
            end
        end
end -- End Action List - Interrupt

-- Action List - Cooldowns
actionList.Cooldown = function()
    -- # Use Power Infusion with Voidform. Hold for Voidform comes off cooldown in the next 10 seconds otherwise use on cd unless the Pelagos Trait Combat Meditation is talented, or if there will not be another Void Eruption this fight.
    if br.useCDs() and ui.checked("Power Infusion") then
        if voidform or cd.voidEruption.remain() >= 10 or ttd('target') < cd.voidEruption.remain() then
            if cast.powerInfusion() then return end
        end
    -- # Use Silence on CD to proc Sephuz's Proclamation.
    -- actions.cds+=/silence,target_if=runeforge.sephuzs_proclamation.equipped&(target.is_add|target.debuff.casting.react)
    
    -- # Use on CD but prioritise using Void Eruption first, if used inside of VF on ST use after a voidbolt for cooldown efficiency and for hungering void uptime if talented.
        if covenant.kyrian.active then
            if not voidform and cd.voidEruption.exists() and #searEnemies > 1 and voidform then
                if cast.boonOfTheAscended() then return end
            end
        end
    -- # Use Unholy Nova on CD, holding briefly to wait for power infusion or add spawns.
        if covenant.necrolord.active then
            if (buff.powerInfusion.exists() or cd.powerInfusion.remain() >= 10) and not voidform then
                if cast.unholyNova() then return end
            end
        end
    -- # Pot is good
        if br.isChecked("Auto use Pots") then
            if br.getValue("Auto use Pots") == 1
                or br.getValue("Auto use Pots") == 2 and inInstance
                or br.getValue("Auto use Pots") == 3 and inRaid
                or br.getValue("Auto use Pots") == 4 and solo
            then
                pot_use = true
            end

            if pot_use then
                if buff.voidForm.exists() then
                    if br.canUseItem(171349) then
                        if br.useItem(171349) then ui.debug("Pot is good [Cooldown]") return end
                    end
                end
            end
        end
    -- # Use Trinkits
        if ui.checked("Use Trinkets") then
        -- # Use on CD ASAP to get DoT ticking and expire to line up better with Voidform
            if trinket13 == 180117 or trinket14 == 180117 then
                if br.canUseItem(180117) and (cd.voidEruption.remain() <= 14 or cd.voidEruption.remain() > 27) then
                    br.useItem(180117)
                end
            end
        -- # Sync IQD with Voidform
            if trinket13 == 179350 or trinket14 == 179350 then
                if br.canUseItem(179350) and cd.voidEruption.remain() > 10 then
                    br.useItem(179350)
                end
            end
        -- # Sync Sheet Music with Voidform
            if trinket13 == 184024 or trinket14 == 184024 then
                if br.canUseItem(184024) and cd.voidEruption.remain() > 10 then
                    br.useItem(184024)
                end
            end
        -- # Sync Ruby with Power Infusion usage, make sure to snipe the lowest HP target
            -- if trinket13 ==  or trinket14 ==  then
            --     if br.canUseItem() and (buff.powerInfusion.exists()  then
            --         br.useItem()
            --     end
            -- end
        -- # Use Badge inside of VF for the first use or on CD after the first use. Short circuit if void eruption cooldown is 10s or more away.
            if trinket13 == 175921 or trinket14 == 175921 then
                if br.canUseItem(175921) and cd.voidEruption.remain() >= 10 then
                    br.useItem(175921)
                end
            end
        -- # Use list of on-use damage trinkets only if Hungering Void Debuff is active, or you are not talented into it.
            if trinket13 == 173069 or trinket13 == 178826 or trinket13 ==  184021 or trinket13 == 184030 then
                if br.canUseItem(13) and (buff.voidForm.exists() or cd.voidEruption.remain() > 10) then
                    br.useItem(13)
                end
            end
            if trinket14 == 173069 or trinket14 == 178826 or trinket14 ==  184021 or trinket14 == 184030 then
                if br.canUseItem(14)  and (buff.voidForm.exists() or cd.voidEruption.remain() > 10) then
                    br.useItem(14)
                end
            end
        -- # Default fallback for usable items: Use on cooldown in order by trinket slot.
            if trinket13 ~= 180117 and trinket13 ~= 179350 and trinket13 ~= 184024 and trinket13 == 178809 and trinket13 ~= 175921 and trinket13 ~= 173069 and trinket13 ~= 178826 and trinket13 ~= 184021 and trinket13 ~= 184030 then
                if br.canUseItem(13) and (buff.voidForm.exists() or buff.powerInfusion.exists() or cd.voidEruption.remain() > 10) then
                    br.useItem(13)
                end
            end
            if trinket14 ~= 180117 and trinket14 ~= 179350 and trinket14 ~= 184024 and trinket14 == 178809 and trinket14 ~= 175921 and trinket14 ~= 173069 and trinket14 ~= 178826 and trinket14 ~= 184021 and trinket14 ~= 184030 then
                if br.canUseItem(14) and (buff.voidForm.exists() or buff.powerInfusion.exists() or cd.voidEruption.remain() > 10) then
                    br.useItem(14)
                end
            end
        end
    end
end -- End Action List - Cooldowns

-- Action List - Pre-Combat
actionList.PreCombat = function()
    if not unit.inCombat() and not (unit.flying() or unit.mounted() or unit.taxi()) then
        -- # Executed before combat begins. Accepts non-harmful actions only.
        -- actions.precombat=flask
        -- actions.precombat+=/food
        -- actions.precombat+=/augmentation
        -- # Snapshot raid buffed stats before combat begins and pre-potting is done.
        -- actions.precombat+=/snapshot_stats
        -- actions.precombat+=/shadowform,if=!buff.shadowform.up
        -- actions.precombat+=/arcane_torrent
        if ui.checked("Arcane Torrent") and br.isValidUnit("target") and not moving then
            if cast.arcaneTorrent("target") then ui.debug("Pulling with Arcane Torrent [Pre-Combat]") return end
        end
        -- actions.precombat+=/use_item,name=azsharas_font_of_power
        -- actions.precombat+=/variable,name=mind_sear_cutoff,op=set,value=2
        -- actions.precombat+=/vampiric_touch
        if ui.checked("Vampiric Touch OoC") and br.isValidUnit("target") and not debuff.vampiricTouch.exists("target") and not moving then
            if cast.vampiricTouch("target") then ui.debug("Pulling with Vampiric Touch [Pre-Combat]") return end
        end
        -- Pre-Pull
		if ui.checked("Pre-Pull Timer") then
			if ui.checked("Vampiric Touch OoC") and ui.pullTimer() <= cast.time.vampiricTouch() then
				if cast.vampiricTouch("target") then ui.debug("Casting Vampiric Touch [Pre-Combat]") return end 
			end
			if ui.checked("Arcane Torrent") and ui.pullTimer() <= cast.time.arcaneTorrent() then
				if cast.arcaneTorrent("target") then ui.debug("Pulling with Arcane Torrent [Pre-Combat]") return end
			end
		end
    end
end -- End Action List - PreCombat

-- Action List - Main
actionList.Main = function()
	-- # Boon Buff
    if buff.boonOfTheAscended.exists() then
        if #searEnemies <= 3 then
            if br.createCastFunction("target",nil,1,nil,325283) then ui.debug("Casting Ascended Blast [Main]") return end
        end
        if #novaEnemies > 1 and #searEnemies > 1 then
            if br.createCastFunction("target",nil,1,nil,325020) then ui.debug("Casting Ascended Nova [Main]") return end
        end
    end

    -- # Use Void Bolt at up to 4 targets, or other talents on ST.
    if voidform and (power <= 85 and #searEnemies <= 6 or #searEnemies == 1) then
        if cast.voidBolt('target') then ui.debug("Casting Void Bolt [Main]") return end
    end

    -- # Use VB on CD if you don't need to cast Devouring Plague, and there are less than 4 targets out (5 with conduit).
    if (voidform or buff.dissonantEchoes.exists()) and #searEnemies < (4 + dEchoesCheck()) and power <= 85 then
        if buff.dissonantEchoes.exists() then
            if cast.devoidBolt('target') then ui.debug("Casting Void Bolt to consume Dissonant Echoes proc [Main]") return end
        else
            if cast.voidBolt('target') then ui.debug("Casting Void Bolt on target [Main]") return end
        end
    end

    -- # Use SW:D as last resort if on the move
    if cd.shadowWordDeath.ready() then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
            if not talent.deathAndMadness and br.getHP(thisUnit) < 20 or talent.deathAndMadness and ttd(thisUnit) < 7 then
                if not noDotCheck(thisUnit) then
                    if cast.shadowWordDeath(thisUnit) then ui.debug("SW:D on low enemies [Main]") return end
                end
            end
        end
    end
--[[
    if not debuff.vampiricTouch.exists() and not moving and #searEnemies < searCutoff and not cast.last.vampiricTouch() then
        if cast.vampiricTouch("target") then ui.debug("Casting Vampiric Touch on target [Main]") return end
    end
--]]
    -- # Use Void Eruption on cooldown pooling at least 40 insanity but not if you will overcap insanity in VF. Make sure shadowfiend/mindbender is on cooldown before VE.
    if br.useCDs() and not voidform and not moving and cd.shadowfiend.exists() and power >= 40 then
        if cast.voidEruption('target') then ui.debug("Casting Void Eruption [Main]") return end
    end
    
    -- # Make sure you put up SW:P ASAP on the target if Wrathful Faerie isn't active.
    if buff.faeGuardians.exists() and not debuff.wrathfulFaerie.exists('target') then
        if cast.shadowWordPain('target') then ui.debug("Casting SW:P on target [Main]") return end
    end

    -- # Use Shadow Crash on CD unless there are adds incoming.
-- in cast "best",nil,1,8
    if talent.shadowCrash and cd.shadowCrash.ready() and ui.checked('Shadow Crash') and ttd("target") > 3 and ((not tankMoving and (inRaid or inInstance)) or (not inInstance and not inRaid and not br.isMoving("target"))) then
        if cast.shadowCrash('target') then ui.debug("Casting Shadow Crash [Main]") br._G.SpellStopTargeting() return end
    end

    -- # Spread SW:P
    if debuff.shadowWordPain.remain() < SWPmaxTargets then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
            if debuff.shadowWordPain.refresh(thisUnit) and not talent.misery and not #searEnemies > searCutoff and (not talent.psychicLink or (talent.psychicLink and #searEnemies <= 2)) then
                if not noDotCheck(thisUnit) then
                    if cast.shadowWordPain(thisUnit) then ui.debug("Spreading SW:P [Main]") return end
                end
            end
        end
    end
    
    -- actions.main+=/call_action_list,name=cds
    -- if actionList.Cooldown() then return true end
    
    -- # Don't use Devouring Plague if you can get into Voidform instead.
    if (debuff.devouringPlague.refresh('target') or power > 75) and (not pool or power >= 85) then
        if cast.devouringPlague('target') then ui.debug("Casting DP on target [Main]") return end
    end
    
    -- # Use Shadow Word: Death if the target is about to die or you have Shadowflame Prism equipped with Mindbender or Shadowfiend active.
    if not talent.deathAndMadness and thp < 20 and #searEnemies < 4 or talent.deathAndMadness and ttd('target') < 7 then
        if cast.shadowWordDeath('target') then ui.debug("Casting SW:D on low target [Main]") return end
    end
    for i = 1, #enemies.yards40 do
        local thisUnit = enemies.yards40[i]
        if not talent.deathAndMadness and br.getHP(thisUnit) < 20 and #searEnemies < 4 or talent.deathAndMadness and ttd(thisUnit) < 7 then
            if not noDotCheck(thisUnit) then
                if cast.shadowWordDeath(thisUnit) then ui.debug("Casting SW:D on low enemies [Main]") return end
            end
        end
    end


    -- # Use Void Torrent only if SW:P and VT are active and the target won't die during the channel.
	-- and not vtCheck() and #searEnemies < (5 + (6 * ToF()))
    if not buff.boonOfTheAscended.exists() and dotsUp and ttd('target') > 5 and not voidform and not cast.last.voidEruption() and power <= 60 and not moving then
        if cast.voidTorrent('target') then ui.debug("Casting Void Torrent on target [Main]") return end
    end
    
    -- # Mindbender & Shadowfiend
    if debuff.vampiricTouch.exists('target') and debuff.shadowWordPain.exists('target') then
        if talent.mindBender and ttd("target") >= 6 then
            if cast.mindBender('target') then ui.debug("Casting Mindbender [Main]") return end
        else
            if cast.shadowfiend('target') then ui.debug("Casting Shadowfiend [Main]") return end
        end
    end
    
    -- Venthyr Cov Mindgames
    if covenant.venthyr.active and not cast.last.voidEruption() and not moving then
        if cast.mindgames('target') then ui.debug("Casting Mindgames [Main]") return end
    end
    
	-- Use Mind Spike if you don't need to refresh DoTs + spam prevention
    if not moving and dotsUp and not cast.last.mindSpike() then
        if cast.mindSpike('target') then ui.debug("Casting Mind Spike on target [Main]") return end
    end
      
    -- # Use Mind Blast if you don't need to refresh DoTs.
    if not moving and dotsUp then
        if cast.mindBlast('target') then ui.debug("Casting Mind Blast on target [Main]") return end
    end
    
    -- # Special condition to stop casting SW:P on off-targets when fighting 3 or more stacked mobs and using Psychic Link and NOT Misery.
    if debuff.shadowWordPain.refresh("target") and ttd("target") > 4 and not talent.misery and talent.psychicLink and #searEnemies > 2 then
        if cast.shadowWordPain("target") then ui.debug("Casting SW:P on target [Main]") return end
    end

    if debuff.shadowWordPain.count() < SWPmaxTargets then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
            if debuff.shadowWordPain.refresh(thisUnit) and ttd(thisUnit) > 4 and not talent.misery and talent.psychicLink and #searEnemies > 2 then
                if not noDotCheck(thisUnit) then
                    if cast.shadowWordPain(thisUnit) then ui.debug("Spreading SW:P [Main]") return end
                end
            end
        end
    end
    
    -- # Keep SW:P up on as many targets as possible, except when fighting 3 or more stacked mobs with Psychic Link.
    if debuff.shadowWordPain.refresh("target") and ttd("target") > 4 and not talent.misery and (not talent.psychicLink or (talent.psychicLink and #searEnemies <= 2)) then
        if cast.shadowWordPain("target") then ui.debug("Casting SW:P on target [Main]") return end
    end

    if debuff.shadowWordPain.count() < SWPmaxTargets then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
            if debuff.shadowWordPain.refresh(thisUnit) and ttd(thisUnit) > 4 and not talent.misery and (not talent.psychicLink or (talent.psychicLink and #searEnemies <= 2)) then
                if not noDotCheck(thisUnit) then
                    if cast.shadowWordPain(thisUnit) then ui.debug("Spreading SW:P [Main]") return end
                end
            end
        end
    end
    
    -- # Mindflay
    if #searEnemies <= searCutoff and dotsUp and not moving then
        if cast.mindFlay('target') then ui.debug("Casting Mindflay on target [Main]") return end
    end

    -- # Use SW:D as last resort if on the move
    if moving and cd.shadowWordDeath.ready() then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
            if not talent.deathAndMadness and br.getHP(thisUnit) < 20 or talent.deathAndMadness and ttd(thisUnit) < 7 then
                if not noDotCheck(thisUnit) then
                    if cast.shadowWordDeath(thisUnit) then ui.debug("Casting SW:D on low enemies [Main]") return end
                end
            end
        end
    end

    -- # Consume dark thoughts proc while moving
    if moving and buff.darkThoughts.exists() then
        if cast.mindBlast("target") then ui.debug("Consuming dark thoughts while moving [Main]") return end
    end
    
    -- # Use SW:P as last resort if on the move and SW:D is on CD
    if moving then
        if cast.shadowWordPain("target") then ui.debug("Spamming SW:P on target while moving [Main]") return end
    end
	
	-- # Vamp themm then Vamp them more.
    if not moving and not cast.last.vampiricTouch() and not debuff.vampiricTouch.exists() then
        if not cast.last.vampiricTouch() then
            if cast.vampiricTouch('target') then ui.debug("Casting Vampiric Touch on target [Main]") return end
        end
    end
    if debuff.vampiricTouch.count() < VTmaxTargets then
        for i = 1, #enemies.yards40 do
            local thisUnit = enemies.yards40[i]
			-- and (debuff.vampiricTouch.refresh(thisUnit) and ttd(thisUnit) > 6 or (talent.misery and debuff.shadowWordPain.refresh() or buff.unfurlingDarkness.exists()))
            if not moving and not cast.last.vampiricTouch() and not debuff.vampiricTouch.exists(thisUnit) then
                if not noDotCheck(thisUnit) then
                    if cast.vampiricTouch(thisUnit) then ui.debug("Refreshing Vampiric Touch on enemies [Main]") return end
                end
            end
        end
    end

end -- End Action List - ST

-- Action List - Void
actionList.Void = function()

end -- End Action List - Void

-- Action List - Healing
actionList.Healing = function()
	-- Flash Heal Self
    if cast.able.flashHeal() and ui.checked("Flash Heal") and not moving and php <= ui.value("Flash Heal") then
        if cast.flashHeal("player") then ui.debug("Casting Flash Heal [Healing]") return true end
    end
    -- Shadow Mend
    if cast.able.shadowMend() and not moving and (ui.checked("Shadow Mend OoC") and php <= ui.value("Shadow Mend OoC") and not inCombat or ui.checked("Shadow Mend") and php <= ui.value("Shadow Mend") and inCombat) then
        if cast.shadowMend('player') then return end
    end
end -- End Action List - Healing

----------------
--- ROTATION ---
----------------
local function runRotation()
    ---------------------
    --- Define Locals ---
    ---------------------
    -- BR API Locals
    buff                                            = br.player.buff
    cast                                            = br.player.cast
    cd                                              = br.player.cd
    conduit                                         = br.player.conduit
    covenant                                        = br.player.covenant
    debuff                                          = br.player.debuff
    enemies                                         = br.player.enemies
    equiped                                         = br.player.equiped
    gcd                                             = br.player.gcd
    gcdMax                                          = br.player.gcdMax
    has                                             = br.player.has
    inCombat                                        = br.player.inCombat
    item                                            = br.player.items
    inInstance = br.player.instance == "party" or br.player.instance == "scenario"
    inRaid = br.player.instance == "raid"
    level                                           = br.player.level
    mode                                            = br.player.ui.mode
    moving                                          = br.isMoving('player')
    mrdm                                            = math.random
    power                                           = br.player.power.insanity.amount()
    php                                             = br.player.health
    solo                                            = #br.friend < 2
    spell                                           = br.player.spell
    talent                                          = br.player.talent
    thp                                             = br.getHP("target")
    unit                                            = br.player.unit
    units                                           = br.player.units
    ui                                              = br.player.ui
    use                                             = br.player.use
    voidform                                        = buff.voidForm.exists()
    -- General Locals   
    hastar                                          = br.GetObjectExists("target")
    healPot                                         = br.getHealthPot()
    profileStop                                     = br.profileStop or false
    ttd                                             = br.getTTD
    haltProfile = (inCombat and profileStop) or (br._G.IsMounted() or br._G.IsFlying()) or br.pause() or mode.rotation==4
    -- Units
    units.get(5) -- Makes a variable called, units.dyn5
    units.get(40) -- Makes a variable called, units.dyn40
    -- Enemies
    enemies.get(5) -- Makes a varaible called, enemies.yards5
    enemies.get(8) -- Makes a varaible called, enemies.yards8
    enemies.get(8,"target")
    enemies.get(20) -- Makes a variable called, enemies.yards20
    enemies.get(30) -- Makes a varaible called, enemies.yards30
    enemies.get(40) -- Makes a varaible called, enemies.yards40

    -- Profile Specific Locals
    allDotsUp                                       = debuff.shadowWordPain.exists() and debuff.vampiricTouch.exists() and debuff.devouringPlague.exists()
    dotsUp                                          = debuff.shadowWordPain.exists() and debuff.vampiricTouch.exists()
    mfTicks                                         = br.mfTicks
    msTicks                                         = br.msTicks
    novaEnemies                                     = br.getEnemies('player', 8, true)
    pool                                            = cd.voidEruption.remain() < 5
    searCutoff                                      = 2
    searEnemies                                     = enemies.yards8t
    snmCutoff                                       = #searEnemies > 2 + buff.voidForm.count()
    SWPmaxTargets                                   = ui.value("Shadow Word: Pain Max Targets")
    trinket13 = _G.GetInventoryItemID("player", 13)
    trinket14 = _G.GetInventoryItemID("player", 14)
    VTmaxTargets                                    = ui.value("Vampiric Touch Max Targets")

    --Tank move check for aoe
    tankMoving = false
    if inInstance then
        for i = 1, #br.friend do
            if (br.friend[i].role == "TANK" or br._G.UnitGroupRolesAssigned(br.friend[i].unit) == "TANK") and br.isMoving(br.friend[i].unit) then
                tankMoving = true
            end
        end
    end

    -- SimC specific variables
    

    --Clear last cast table ooc to avoid strange casts
    if not inCombat and #br.lastCastTable.tracker > 0 then
        br._G.wipe(br.lastCastTable.tracker)
    end
    ---------------------
    --- Begin Profile ---
    ---------------------
    if CwC() then return end
    -- Profile Stop | Pause
    if not inCombat and not hastar and profileStop then
        profileStop = false
    elseif haltProfile then
        return true
    else
        ---------------------------------
        --- Out Of Combat - Rotations ---
        ---------------------------------

        -----------------
        --- Extras  ---
        -----------------
        if actionList.Extra() then return true end
        -----------------
        --- Defensive ---
        -----------------
        if actionList.Defensive() then return true end
        -----------------
        --- Healing ---
        -----------------
		if actionList.Healing() then return true end
        ------------------
        --- Pre-Combat ---
        ------------------
        if actionList.PreCombat() then return true end
        -----------------------------
        --- In Combat - Rotations ---
        -----------------------------
        if inCombat and br.isValidUnit("target") then
            ------------------------------
            --- In Combat - Interrupts ---
            ------------------------------
            if actionList.Interrupt() then return true end
            -- Cooldowns
            if actionList.Cooldown() then return true end
            -- Main
            if actionList.Main() then return true end
			-- Void
            --if actionList.Void() then return true end
        end -- End In Combat Rotation
    end -- Pause
    return true
end -- End runRotation

local id = 258 -- Change to the spec id profile is for.
if br.rotations[id] == nil then br.rotations[id] = {} end
br._G.tinsert(br.rotations[id],{
    name = rotationName,
    toggles = createToggles,
    options = createOptions,
    run = runRotation,
})

