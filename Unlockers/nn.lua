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
	"IsWorldLootObject",
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
	"UnitXPMax",
	"WorldLootObjectExists"
}


--------------------------------------------------------------------------------------------------------------------------------
-- functions exported to BadRotations --
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
	-- API unlocking --
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
	-- API Wraping --
	--------------------------------

	------------------------- Missing/Broken API Functions -------------------------
	b.GetKeyState = GetKeyState
	b.GetCameraPosition = GetCameraPosition
	b.ScreenToWorld = function()
		return 0, 0
	end
	b.WorldToScreen = function(...)
		local multiplier = UIParent:GetScale()
		local sX, sY = WorldToScreen(...)
		return sX * multiplier, -sY * multiplier
	end
	b.IsQuestObject = function(obj)
		return false
	end
	
	------------------------- Should be NN API functions ------------------------- 
	b.UnitBoundingRadius = function(unit)
		return b.ObjectField(unit, 0x19AC, 4)
	end
	b.UnitCombatReach = function(unit)
		return b.ObjectField(unit, 0x19B0, 4)
	end
	
	------------------------- NN API Functions -------------------------
	--ObjectRotation
	--ObjectYaw
	--PlayerTarget  -- Same as ObjectPointer
	--UnitFlags1
	--UnitFlags2
	--UnitFlags3
	--Distance
	--DynamicFlags
	--ObjectLootable
	--ObjectSkinnable
	--PlayerObject
	--GameObjectType
	--GetMouseover
	--SetMouseover
	--LastHardwareAction
	--LastTerrainClick
	--UnitCreatureTypeId
	--GetCorpsePosition
	--GetSpecByDescriptor
	
	------ Navigation ------
	--ClickToMove
	--GenerateLocalPath
	--GeneratePath
	--Go
	
	------------------------- Player Control -------------------------
	--SetPlayerFacing
	b.FaceDirection = function(arg)
		if type(arg) == "number" then
			SetPlayerFacing(arg)
		else
			arg = b.GetAnglesBetweenObjects("player", arg)
			SetPlayerFacing(arg)
		end
	end

	------------------------- Math -------------------------
	b.GetAnglesBetweenPositions	= GetAnglesBetweenPositions
	b.GetPositionFromPosition = GetPositionFromPosition
	local math = math
	b.GetDistanceBetweenPositions = function(X1, Y1, Z1, X2, Y2, Z2)
		X2 = X2 - X1
		Y2 = Y2 - Y1
		Z2 = Z2 - Z1
		return math.sqrt(X2*X2 + Y2*Y2 + Z2*Z2)
	end
	b.GetAnglesBetweenObjects = function(Object1, Object2)
		if Object1 and Object2 then
			local X1, Y1, Z1 = b.ObjectPosition(Object1)
			local X2, Y2, Z2 = b.ObjectPosition(Object2)
			X2 = X2 - X1
			Y2 = Y2 - Y1
			Z2 = Z1 - Z2
			return math.atan2(Y2, X2) % (math.pi * 2),
				math.atan(Z2 / math.sqrt(X2*X2 + Y2*Y2)) % math.pi
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
		return b.GetDistanceBetweenPositions(X1, Y1, Z1, X2, Y2, Z2)
	end
	b.ObjectIsFacing = function(obj1, obj2, degrees)
		local Facing = b.UnitFacing(obj1)
		local AngleToUnit = b.GetAnglesBetweenObjects(obj1, obj2)
		local AngleDifference = Facing > AngleToUnit and Facing - AngleToUnit or AngleToUnit - Facing
		local ShortestAngle = AngleDifference < math.pi and AngleDifference or math.pi * 2 - AngleDifference
		degrees = degrees and b.rad(degrees) / 2 or math.pi / 2
		return ShortestAngle < degrees
	end

	------------------------- Objects -------------------------
	b.GetObjectWithIndex = ObjectByIndex
	b.ObjectFacing = ObjectFacing
	b.ObjectExists = ObjectExists
	b.ObjectID = ObjectID
	b.ObjectGUID = ObjectPointer
	b.ObjectPosition = ObjectPosition
	b.ObjectName = ObjectName
	b.ObjectType = ObjectType
	b.ObjectInteract = ObjectInteract
	b.ObjectPointer = ObjectPointer
	b.ObjectSummoner = ObjectSummoner
	local om = {}
	b.GetObjectCount = function()
		om = Objects()
		return #Objects()
	end
	b.GetObjectWithGUID = function(...)
		return ...
	end
	b.ObjectIsUnit = function(...)
		local ObjType = ObjectType(...)
		return ObjType == 5
	end
	b.ObjectIsGameObject = function(obj)
		local ObjType = b.ObjectType(obj)
		return ObjType == 8 or ObjType == 11
	end
	
	------------------------- Unit -------------------------
	b.UnitCreator =  ObjectCreator
	b.UnitFacing = ObjectFacing
	b.InteractUnit = ObjectInteract
	b.UnitMovementFlags = UnitMovementFlag
	b.UnitTarget = UnitTarget
	b.UnitCastID = function(...)
		local spellId1 = select(9, b.UnitCastingInfo(...)) or 0
		local spellId2 = select(9, b.UnitChannelInfo(...)) or 0
		local castGUID = b.UnitTarget(select(1, ...))
		return spellId1, spellId2, castGUID, castGUID
	end

	------------------------- World ---------------------------
	b.ClickPosition = ClickPosition
	b.TraceLine = TraceLine 

	
	------------------------- File System ----------------------------	
	--ReadFile
	--DirectoryExists
	--WriteFile
	--CreateDirectory
	--ListFiles
	--DeleteDirectory
	--DeleteFile
	--FileExists
	--Require
	--RequireFileEnc
	
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
	
	------------------------- Extra -------------------------
	--GetFocus
	--SetFocus
	b.AuraUtil = {}
	b.AuraUtil.FindAuraByName = function(aura,unit,filter)
		unit = b.ObjectPointer(unit)
		if not unit then return end
		local oldfocus = GetFocus()
		SetFocus(unit)
		local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal,
		spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod
		for i=1,100 do
			name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal,
			spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod = b.UnitAura('focus',i,filter)
			if name == nil then SetFocus(oldfocus)return end
			if name == aura then
				SetFocus(oldfocus)
				return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal,
				spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod
			end
		end
		SetFocus(oldfocus)
	end
	
	--------------------------------
	-- WoW API Reuse
	--------------------------------
	b.ObjectIsVisible = b.UnitIsVisible
	b.GetMousePosition = b.GetCursorPosition
	b.CancelPendingSpell = b.SpellStopTargeting
	b.IsAoEPending = b.SpellIsTargeting
	b.GetMapId = function()
		return select(8, b.GetInstanceInfo())
	end
	b.CastSpellByName = function(spellName, unit)
		if unit == nil then return CastSpellByName(spellName) end --b.print("No unit provided to CastSpellByName") end
		return BRCastSpellByName(spellName, unit)
	end
	
	--------------------------------
	-- Unlocker
	--------------------------------
	b.IsHackEnabled = function(...) return false end
	br.unlocker = "NN"
	return true
end
