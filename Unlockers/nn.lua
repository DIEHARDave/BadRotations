--------------------------------------------------------------------------------------------------------------------------------
-- unlockList
--------------------------------------------------------------------------------------------------------------------------------
local unlockList =
{
	-- Protected --
	"AscendStop",
	"AcceptBattlefieldPort",
	"AssistUnit",
	"AttackTarget",
	"CameraOrSelectOrMoveStart",
	"CameraOrSelectOrMoveStop",
	"CancelItemTempEnchantment",
	"CancelLogout",
	"CancelShapeshiftForm",
	"CastPetAction",
	"CastShapeshiftForm",
	"CastSpell",
	"CastSpellByID",
	"CastSpellByName",
	"ClearTarget",
	"CopyToClipboard",
	"DescendStop",
	"DestroyTotem",
	"FocusUnit",
	"ForceQuit",
	"GuildControlSetRank",
	"GuildControlSetRankFlag",
	"GuildDemote",
	"GuildPromote",
	"GuildUninvite",
	"InteractUnit",
	"JoinBattlefield",
	"JumpOrAscendStart",
	"Logout",
	"MoveAndSteerStart",
	"MoveAndSteerStop",
	"MoveBackwardStart",
	"MoveBackwardStop",
	"MoveForwardStart",
	"MoveForwardStop",
	"PetAssistMode",
	"PetAttack",
	"PetDefensiveAssistMode",
	"PetDefensiveMode",
	"PetFollow",
	"PetPassiveMode",
	"PetWait",
	"PitchDownStart",
	"PitchDownStop",
	"PitchUpStart",
	"PitchUpStop",
	"Quit",
	"ReplaceEnchant",
	"ReplaceTradeEnchant",
	"RunMacro",
	"RunMacroText",
	"SetMoveEnabled",
	"SetTurnEnabled",
	"SitStandOrDescendStart",
	"SpellStopCasting",
	"SpellStopTargeting",
	"SpellTargetItem",
	"SpellTargetUnit",
	"StartAttack",
	"StartAutoRun",
	"StopAutoRun",
	"StrafeLeftStart",
	"StrafeLeftStop",
	"StrafeRightStart",
	"StrafeRightStop",
	"Stuck",
	"SummonFriend",
	"TargetLastEnemy",
	"TargetLastTarget",
	"TargetNearestEnemy",
	"TargetNearestFriend",
	"TargetUnit",
	"ToggleAutoRun",
	"TogglePetAutocast",
	"ToggleRun",
	"ToggleSpellAutocast",
	"TurnLeftStart",
	"TurnLeftStop",
	"TurnOrActionStart",
	"TurnOrActionStop",
	"TurnRightStart",
	"TurnRightStop",
	"UseAction",
	"UseContainerItem",
	"UseInventoryItem",
	"UseItemByName",
	"UseToy",
	"UseToyByName",
	-- NonCombat Restricted --
	"CancelUnitBuff",
	"ChangeActionBarPage",
	"ClearOverrideBindings",
	"CreateMacro",
	"DeleteMacro",
	"PetStopAttack",
	"PickupAction",
	"PickupCompanion",
	"PickupMacro",
	"PickupPetAction",
	"PickupSpell",
	"PickupSpellBookItem",
	"SetBinding",
	"SetBindingClick",
	"SetBindingItem",
	"SetBindingMacro",
	"SetBindingSpell",
	"SetOverrideBinding",
	"SetOverrideBindingClick",
	"SetOverrideBindingItem",
	"SetOverrideBindingMacro",
	"SetOverrideBindingSpell",
	"SwapRaidSubgroup",
	-- Hardware Restricted --
	"AcceptProposal",
	"AcceptTrade",
	"DeleteCursorItem",
	"SendChatMessage",
	"SetCurrentTitle",
	"UninviteUnit"
}

local globalCacheList =
{
	"CanLootUnit",
	"CanSummonFriend",
	"CombatTextSetActiveUnit",
	"DemoteAssistant",
	"DropItemOnUnit",
	"FollowUnit",
	"GetCursorPosition",
	"GetDefaultLanguage",
	"GetPartyAssignment",
	"GetPlayerInfoByGUID",
	"GetRaidTargetIndex",
	"GetReadyCheckStatus",
	"GetUnitName",
	"GetUnitSpeed",
	"InitiateTrade",
	"IsItemInRange",
	"IsSpellInRange",
	"PromoteToAssistant",
	"SetPortraitTexture",
	"SetRaidTarget",
	"SpellCanTargetUnit",
	"SpellIsTargeting",
	"UnitAffectingCombat",
	"UnitArmor",
	"UnitAttackPower",
	"UnitAttackSpeed",
	"UnitAura",
	"UnitAuraSlots",
	"UnitBuff",
	"UnitCanAssist",
	"UnitCanAttack",
	"UnitCanCooperate",
	"UnitCanPetBattle",
	"UnitCastingInfo",
	"UnitChannelInfo",
	"UnitClass",
	"UnitClassification",
	"UnitCreatureFamily",
	"UnitCreatureType",
	"UnitDamage",
	"UnitDebuff",
	"UnitDetailedThreatSituation",
	"UnitExists",
	"UnitGetIncomingHeals",
	"UnitGetTotalHealAbsorbs",
	"UnitGroupRolesAssigned",
	"UnitGUID",
	"UnitHealth",
	"UnitHealthMax",
	"UnitInBattleground",
	"UnitInParty",
	"UnitInRaid",
	"UnitInRange",
	"UnitIsAFK",
	"UnitIsCharmed",
	"UnitIsConnected",
	"UnitIsCorpse",
	"UnitIsDead",
	"UnitIsDeadOrGhost",
	"UnitIsDND",
	"UnitIsEnemy",
	"UnitIsFeignDeath",
	"UnitIsFriend",
	"UnitIsGhost",
	"UnitIsInMyGuild",
	"UnitIsPlayer",
	"UnitIsPossessed",
	"UnitIsPVP",
	"UnitIsPVPFreeForAll",
	"UnitIsPVPSanctuary",
	"UnitIsSameServer",
	"UnitIsTrivial",
	"UnitIsUnit",
	"UnitIsVisible",
	"UnitLevel",
	"UnitName",
	"UnitOnTaxi",
	"UnitPhaseReason",
	"UnitPlayerControlled",
	"UnitPlayerOrPetInParty",
	"UnitPlayerOrPetInRaid",
	"UnitPower",
	"UnitPowerMax",
	"UnitPowerType",
	"UnitPVPName",
	"UnitRace",
	"UnitRangedAttackPower",
	"UnitRangedDamage",
	"UnitReaction",
	"UnitSelectionColor",
	"UnitSex",
	"UnitStat",
	"UnitThreatSituation",
	"UnitUsingVehicle",
	"UnitXP",
	"UnitXPMax"
}


--------------------------------------------------------------------------------------------------------------------------------
-- functions exported to BadRotations
--------------------------------------------------------------------------------------------------------------------------------
local _, br = ...
local b = br._G
local unlock = br.unlock
local funcCopies = {}
local globalFuncCopies = {}

-- local NoName = ...
-- local read   = NoName.Utils.Storage.read
-- local write  = NoName.Utils.Storage.write
-- local JSON   = NoName.Utils.JSON
-- local AceGUI = NoName.Utils.AceGUI

-- print "Loading Files. "
-- NoName:Require('/scripts/BadRotations/System/Lists/FileList', br)
-- for file, load in (br.files) do
-- 	if load then
-- 		NoName:Require('/scripts/'..file, br)
-- 	end
-- end

-- helper function
local function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
		-- b.print(str)
		table.insert(t, str)
	end
	return t
end

local function fixPath(...)
	local str = ...
	if str == nil then return "" end

	if str:match("\\Interface\\AddOns\\") ~= nil then
		str = str:gsub(str:match("\\Interface\\AddOns\\"), "..\\")
	end
	local path = str:gsub(str:match("..\\BadRotations"), "\\scripts\\BadRotations")

	-- local filter = str:gsub(str:match("*.lua"),"*")
	-- local path = filter:gsub(filter:match("..\\BadRotations"),"\\scripts\\BadRotations")
	return path
end

-- make a backup copy of all APIs before AddOns hook them
for i = 1, #unlockList do
	local func = unlockList[i]
	funcCopies[func] = _G[func]
end

for i = 1, #globalCacheList do
	local func = globalCacheList[i]
	globalFuncCopies[func] = _G[func]
end
-- print("NN File Called")
function br.unlock:NNUnlock()
	if not C_Timer.Nn then return false end
	setfenv(1, C_Timer.Nn)
	-- print("NN Api Loaded")

	--------------------------------
	-- API unlocking
	--------------------------------
	for k, v in pairs(funcCopies) do
		b[k] = function(...) return Unlock(k, ...) end
	end
	for _, v in pairs(globalCacheList) do
		b[v] = C_Timer.Nn[v]
	end
	for k, v in pairs(globalFuncCopies) do
		if not b[k] then
			b[k] = function(...) return v(...) end
		end
	end

	--------------------------------
	-- API Wrapping
	--------------------------------
-- Testing
	b.GetCameraPosition = C_Commentator.GetCameraPosition


	------------------------- Missing API Functions -------------------------
	b.GetKeyState = GetKeyState
	b.ScreenToWorld = function()
		return 0, 0
	end
	b.IsQuestObject = function(obj)
		return false
	end

	------------------------- Should be NN API functions ------------------------- 
	b.UnitBoundingRadius = function(unit)
		return b.ObjectField(unit, 0x19AC, 4) --b.ObjectField(unit, 0x17DC, 10)
	end

	b.UnitCombatReach = function(unit)
		return b.ObjectField(unit, 0x19B0, 4) --b.ObjectField(unit, 0x17E0, 10)
	end
	
	------------------------- NN Unused API Functions -------------------------
	--ObjectRotation
	--ObjectYaw
	--PlayerTarget
	--UnitFlags1
	--UnitFlags2
	--UnitFlags3
	--DynamicFlags
	--ObjectLootable --Broken Anyway?
	--ObjectSkinnable --Broken Anyway?
	--PlayerObject
	--GameObjectType
	--GetFocus
	--SetFocus
	--GetMouseover
	--SetMouseover
	--LastHardwareAction
	--LastTerrainClick
	--UnitCreatureTypeId
	--GetCorpsePosition
	--GetSpecByDescriptor
	
	------------------------- NN Direct API Functions -------------------------
	b.ClickPosition = ClickPosition
	b.GetObjectWithIndex = ObjectByIndex
	b.GetAnglesBetweenPositions	= GetAnglesBetweenPositions
	b.GetPositionFromPosition = GetPositionFromPosition
	b.ObjectFacing = ObjectFacing
	b.ObjectExists = ObjectExists
	b.ObjectID = ObjectID
	b.ObjectPosition = ObjectPosition
	b.ObjectName = ObjectName
	b.ObjectType = ObjectType
	b.ObjectRawType = ObjectType
	b.ObjectInteract = ObjectInteract
	b.ObjectPointer = ObjectPointer
	b.ObjectSummoner = ObjectSummoner
	b.TraceLine = TraceLine 
	b.UnitCreator =  ObjectCreator
	b.UnitFacing = ObjectFacing
	b.UnitMovementFlags = UnitMovementFlag
	b.UnitTarget = UnitTarget

	------------------------- Player Control -------------------
	
	b.FaceDirection = function(arg)
		if type(arg) == "number" then
			SetPlayerFacing(arg)
		else
			arg = b.GetAnglesBetweenObjects("player", arg)
			SetPlayerFacing(arg)
		end
	end

	------------------------- Object --------------------------
	b.ObjectGUID = function(unit)
		return type(unit) == "number" and unit or ObjectPointer(unit)
	end
	b.ObjectIsUnit = function(...)
		local ObjType = ObjectType(...)
		return ObjType == 5
	end
--[[
	b.ObjectID = function(unit)
		if unit == nil then return nil end
		if (type(unit) == "string") then
			local guid = UnitGUID(unit)
			if guid == nil then return nil end
			local _, _, _, _, _, npc_id = strsplit('-', guid)
			return tonumber(npc_id)
		end
		return ObjectID(unit)
	end
]]--
	b.ObjectIsGameObject = function(...)
		local ObjType = ObjectType(...)
		return ObjType == 8 or ObjType == 11
	end
	
	------------------------- Object Math ------------------
	b.GetDistanceBetweenPositions = function(X1, Y1, Z1, X2, Y2, Z2)
		return math.sqrt(math.pow(X2 - X1, 2) + math.pow(Y2 - Y1, 2) + math.pow(Z2 - Z1, 2))
	end
	b.GetAnglesBetweenObjects = function(Object1, Object2)
		if Object1 and Object2 then
			local X1, Y1, Z1 = b.ObjectPosition(Object1)
			local X2, Y2, Z2 = b.ObjectPosition(Object2)
			return math.atan2(Y2 - Y1, X2 - X1) % (math.pi * 2),
				math.atan((Z1 - Z2) / math.sqrt(math.pow(X1 - X2, 2) + math.pow(Y1 - Y2, 2))) % math.pi
		else
			return 0, 0
		end
	end
	b.GetPositionBetweenPositions = function(X1, Y1, Z1, X2, Y2, Z2, DistanceFromPosition1)
		local AngleXY, AngleXYZ = b.GetAnglesBetweenPositions(X1, Y1, Z1, X2, Y2, Z2)
		return b.GetPositionFromPosition(X1, Y1, Z1, DistanceFromPosition1, AngleXY, AngleXYZ)
	end
	b.GetPositionBetweenObjects = function(unit1, unit2, DistanceFromPosition1)
		local X1, Y1, Z1 = b.ObjectPosition(unit1)
		local X2, Y2, Z2 = b.ObjectPosition(unit2)
		if not X1 or not X2 then return end
		local AngleXY, AngleXYZ = b.GetAnglesBetweenPositions(X1, Y1, Z1, X2, Y2, Z2)
		return b.GetPositionFromPosition(X1, Y1, Z1, DistanceFromPosition1, AngleXY, AngleXYZ)
	end
	b.GetDistanceBetweenObjects = function(unit1, unit2)
		local X1, Y1, Z1 = b.ObjectPosition(unit1)
		local X2, Y2, Z2 = b.ObjectPosition(unit2)
		return math.sqrt((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2 + (Z2 - Z1) ^ 2)
	end
	b.ObjectIsFacing = function(obj1, obj2, degrees)
		local Facing = b.UnitFacing(obj1)
		local AngleToUnit = b.GetAnglesBetweenObjects(obj1, obj2)
		local AngleDifference = Facing > AngleToUnit and Facing - AngleToUnit or AngleToUnit - Facing
		local ShortestAngle = AngleDifference < math.pi and AngleDifference or math.pi * 2 - AngleDifference
		degrees = degrees and b.rad(degrees) / 2 or math.pi / 2
		return ShortestAngle < degrees
	end

	------------------------- Object Manager ------------------
	local om = {}
	b.GetObjectCount = function()
		om = Objects()
		return #Objects()
	end
	b.GetObjectWithIndex = function(index)
		return om[index]--ObjectByIndex(index)
	end
	b.GetObjectWithGUID = function(...)
		return ...
	end
	------------------------- Unit ------------------
	b.UnitCastID = function(...)
		local spellId1 = select(9, b.UnitCastingInfo(...)) or 0
		local spellId2 = select(9, b.UnitChannelInfo(...)) or 0
		local castGUID = b.UnitTarget(select(1, ...))
		return spellId1, spellId2, castGUID, castGUID
	end
	------------------------- World ---------------------------
	b.WorldToScreen = function(...)
		local multiplier = UIParent:GetScale()
		local sX, sY = WorldToScreen(...)
		return sX * multiplier, -sY * multiplier
	end
	------------------------- File ----------------------------	
	b.GetDirectoryFiles = function(...)
		local str = ...
		if str == nil then return "" end
		local filter = str:gsub(str:match("*.lua"), "*")
		-- print("Filter: "..filter)
		local files = ListFiles(filter)
		local returnFiles = ""
		for i = 1, #files do
			-- print("File: "..files[i])
			if files[i]:match(".lua") then
				if returnFiles == "" then
					returnFiles = files[i]
				else
					returnFiles = returnFiles .. "|" .. files[i]
				end
			end
		end
		return stringsplit(returnFiles, "|")
	end
	b.ReadFile = function(...)
		local path = ...--fixPath(...)
		return ReadFile(path)
	end
	b.WriteFile = function(...)
		local file, data, append = ...
		local path = file --fixPath(file)
		return WriteFile(path, data, append)
	end
	b.CreateDirectory = function(...)
		local path = ... --fixPath(...)
		return CreateDirectory(path)
	end
	b.DirectoryExists = function(...)
		local path = ... --fixPath(...)
		return DirectoryExists(path)
	end
	b.GetWoWDirectory = function()
		return "\\scripts"
	end
	------------------------------------------
	--- WoW API CastSpellByName Fix
	------------------------------------------
	b.CastSpellByName = function(spellName, unit)
		if unit == nil then return CastSpellByName(spellName) end --b.print("No unit provided to CastSpellByName") end
		return BRCastSpellByName(spellName, unit)
	end

	--------------------------------
	-- WoW API Reuse
	--------------------------------
	b.ObjectIsVisible = b.UnitIsVisible
	b.GetMousePosition = b.GetCursorPosition
	b.CancelPendingSpell = b.SpellStopTargeting
	b.IsAoEPending = b.SpellIsTargeting
	b.InteractUnit = b.ObjectInteract
	b.GetMapId = function()
		return select(8, b.GetInstanceInfo())
	end
	
	--------------------------------
	-- extra APIs
	--------------------------------
	b.AuraUtil = {}
	b.AuraUtil.FindAuraByName = _G.AuraUtil["FindAuraByName"]

	b.IsHackEnabled = function(...) return false end


	-- Unlocker --
	br.unlocker = "NN"
	return true
end
