
-- Welcome.
-- Written by Fesiug.

ArcCW_Insurgency = {}
ArcCW_Insurgency.SoundTable = {}

local DebugSound = CreateConVar("arccw_insurgency_debug_sound", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED + FCVAR_NOTIFY, "Print debug text in console for when sounds get added to the soundtable.")
local DebugSoundVerbose = CreateConVar("arccw_insurgency_debug_sound_verbose", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED + FCVAR_NOTIFY, "Verbose readings.")
--[[
		0 - none
		1 - both
		2 - server
		3 - client
]]

function ArcCW_Insurgency:GetSound( request )
	if !request then ErrorNoHaltWithStack( "ARCCW INSURGENCY: No request!" ) return end

	local fella = ArcCW_Insurgency.SoundTable[request]
	if !fella then ErrorNoHaltWithStack("ARCCW INSURGENCY: Request '" .. request .. "' was nil! Could not be found!") return end
	local yr = {}
		yr.n = fella.nicename
		yr.s = fella.soundpath
		yr.c = fella.channel
		yr.v = fella.volume
		yr.l = fella.soundlevel
		yr.p = math.Rand(fella.pitchmin, fella.pitchmax)

	print( "ARCCW INSURGENCY: Yeah, here's your request, '" .. request .. "'" )
	return yr
end

local sickfuck = SERVER and Color( 187, 232, 255 ) or CLIENT and Color( 255, 252, 202 )
local quikfuck = SERVER and Color( 87, 172, 255 ) or CLIENT and Color( 255, 172, 52 )

function ArcCW_Insurgency:AddSound( nicename, soundpath, channel, volume, soundlevel, pitchmin, pitchmax )
	if !nicename then ErrorNoHaltWithStack( "ARCCW INSURGENCY: No nicename! Halting." ) return end
	if !soundpath then ErrorNoHaltWithStack( "ARCCW INSURGENCY: No soundpath! Halting." ) return end

	local todo = {}

	todo.nicename		= nicename
	todo.soundpath		= soundpath
	todo.channel		= channel or CHAN_AUTO
	todo.volume			= volume or 1
	todo.soundlevel		= soundlevel or 65
	todo.pitchmin		= pitchmin or 100
	todo.pitchmax		= pitchmax or pitchmin or 100

	local hm = DebugSound:GetInt()
	local hmv = DebugSoundVerbose:GetBool()
	if hm == 1 or SERVER and hm == 2 or CLIENT and hm == 3 then
		MsgC( sickfuck, "ARCCW INSURGENCY: ", quikfuck, (SERVER and "SERVER" or CLIENT and "CLIENT"), sickfuck, " Adding ", quikfuck, todo.nicename .. "\n" )
		if istable(todo.soundpath) and hmv then
			MsgC( sickfuck, "\tSoundpath being" .. "\n" )
			PrintTable(todo.soundpath)
		elseif hmv then
			MsgC( sickfuck, "\tSoundpath being ", quikfuck, todo.soundpath .. "\n" )
		end
		if hmv then
			MsgC( sickfuck, "\tOn channel ", quikfuck, todo.channel .. "\n" )
			MsgC( sickfuck, "\tAt volume ", quikfuck, todo.volume .. "\n" )
			MsgC( sickfuck, "\tSoundlevel at ", quikfuck, todo.soundlevel .. "\n" )
			MsgC( sickfuck, "\tPitch going through ", quikfuck, todo.pitchmin .. "-" .. todo.pitchmax .. "\n" )
			MsgC( sickfuck, "ARCCW INSURGENCY: Added ", quikfuck, todo.nicename, sickfuck, "!" .. "\n" )
		end
		--PrintTable( todo )
	end

	ArcCW_Insurgency.SoundTable[todo.nicename] = todo
end

function ArcCW_Insurgency:InsertSound( request, time )
	if !request then ErrorNoHaltWithStack( "ARCCW INSURGENCY: No request! Halting." ) return end
	if !time then ErrorNoHaltWithStack( "ARCCW INSURGENCY: No time! Halting." ) return end

	-- Get our request
	local hey = ArcCW_Insurgency:GetSound(request)

	MsgN("ARCCW INSURGENCY: yeah that worked pretty well, did '" .. hey.n .. "' at " .. time .. ".")

	return { s = hey.s, t = time, c = hey.c, p = hey.p, v = hey.v, l = hey.l }
end

--[[ Order!
	- nicename
	- soundpath
	- channel		(default CHAN_AUTO			)
	- volume		(default 1.00				)
	- soundlevel	(default 65					(db))
	- pitch/min		(default 100				(%))
	- pitchmax		(default pitchmin or 100	(%))
]]


	-- Universal
		ArcCW_Insurgency:AddSound( "Universal.PistolDraw",		{"weapons/universal/uni_pistol_draw_01.wav", "weapons/universal/uni_pistol_draw_02.wav", "weapons/universal/uni_pistol_draw_03.wav"}, CHAN_STATIC, 0.35, 75, 100 )
		ArcCW_Insurgency:AddSound( "Universal.PistolHolster",	"weapons/universal/uni_weapon_holster.wav", CHAN_STATIC, 0.3, 65, 95 )
		ArcCW_Insurgency:AddSound( "Universal.Draw",			{"weapons/universal/uni_weapon_draw_01.wav", "weapons/universal/uni_weapon_draw_02.wav", "weapons/universal/uni_weapon_draw_03.wav"}, CHAN_STATIC, 0.35, 75, 100 )
		ArcCW_Insurgency:AddSound( "Universal.Holster",			"weapons/universal/uni_weapon_holster.wav", CHAN_STATIC, 0.3, 65, 95 )
		ArcCW_Insurgency:AddSound( "Universal.LeanIn",			{"weapons/universal/uni_lean_out_01.wav", "weapons/universal/uni_lean_out_02.wav", "weapons/universal/uni_lean_out_03.wav", "weapons/universal/uni_lean_out_04.wav"}, CHAN_STATIC, 0.35, 75, 100 )

	-- M9 Beretta
		ArcCW_Insurgency:AddSound( "Weapon_M9.Magrelease",		"weapons/m9/handling/M9_safety.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Magout",			"weapons/m9/handling/M9_magout.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Magin",			"weapons/m9/handling/M9_magin.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.MagHit",			"weapons/m9/handling/M9_maghit.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Boltback",		"weapons/m9/handling/M9_boltback.wav", CHAN_ITEM, 0.4, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Boltrelease",		"weapons/m9/handling/M9_boltrelease.wav", CHAN_ITEM, 0.4, 65, 100 )

	-- M9 Beretta
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Magrelease",	"weapons/m4a1/handling/m4a1_magrelease.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Magout",		"weapons/m4a1/handling/m4a1_magout.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Magin",			"weapons/m4a1/handling/m4a1_magin.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Hit",		    "weapons/m4a1/handling/m4a1_hit.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Boltback",		"weapons/m4a1/handling/m4a1_boltback.wav", CHAN_ITEM, 0.3, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Boltrelease",	"weapons/m4a1/handling/m4a1_boltrelease.wav", CHAN_ITEM, 0.3, 65, 100 )
