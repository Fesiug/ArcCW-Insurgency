
-- Welcome.
-- Written by Fesiug.

ArcCW_Insurgency = {}
ArcCW_Insurgency.SoundTable = {}

local DebugSound = CreateConVar("arccw_insurgency_debug_sound", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED + FCVAR_NOTIFY, "Print debug text in console for when sounds get added to the soundtable. 0-off 1-both 2-server 3-client")
local DebugSoundVerbose = CreateConVar("arccw_insurgency_debug_sound_verbose", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED + FCVAR_NOTIFY, "Verbose readings.")
--[[
		0 - none
		1 - both
		2 - server
		3 - client
]]

local sickfuck = SERVER and Color( 187, 232, 255 ) or CLIENT and Color( 255, 252, 202 )
local quikfuck = SERVER and Color( 87, 172, 255 ) or CLIENT and Color( 255, 172, 52 )

function ArcCW_Insurgency:Debug()
    local hm = DebugSound:GetInt()
	if hm == 1 or SERVER and hm == 2 or CLIENT and hm == 3 then
        return true
    end

    return false
end

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

    if ArcCW_Insurgency:Debug() then
	    MsgN( "ARCCW INSURGENCY: Yeah, here's your request, '" .. request .. "'" )
    end
	return yr
end

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

	local hmv = DebugSoundVerbose:GetBool()
	if ArcCW_Insurgency:Debug() then
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

    if ArcCW_Insurgency:Debug() then
	    MsgN("ARCCW INSURGENCY: That worked pretty well, did '" .. hey.n .. "' at " .. time .. ".")
        if DebugSoundVerbose then
            MsgC(sickfuck, "{ SND.s = " )
            MsgC(quikfuck, istable(hey.s) and ( "(Table with " .. #hey.s .. " sounds)" ) or hey.s )
            MsgC(sickfuck, ", SND.t = ", quikfuck, time, sickfuck, ", SND.c = ", quikfuck, hey.c, sickfuck, ", SND.p = ", quikfuck, hey.p, sickfuck, ", SND.v = ", quikfuck, hey.v, sickfuck, ", SND.l = ", quikfuck, hey.l, sickfuck, " }" )
        end
    end

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
		ArcCW_Insurgency:AddSound( "Universal.PistolDraw",		{"weapons/arccw_ins2/universal/uni_pistol_draw_01.wav", "weapons/arccw_ins2/universal/uni_pistol_draw_02.wav", "weapons/arccw_ins2/universal/uni_pistol_draw_03.wav"}, CHAN_STATIC, 0.35, 75, 100 )
		ArcCW_Insurgency:AddSound( "Universal.PistolHolster",	"weapons/arccw_ins2/universal/uni_weapon_holster.wav", CHAN_STATIC, 0.3, 65, 95 )
		ArcCW_Insurgency:AddSound( "Universal.Draw",			{"weapons/arccw_ins2/universal/uni_weapon_draw_01.wav", "weapons/arccw_ins2/universal/uni_weapon_draw_02.wav", "weapons/arccw_ins2/universal/uni_weapon_draw_03.wav"}, CHAN_STATIC, 0.35, 75, 100 )
		ArcCW_Insurgency:AddSound( "Universal.Holster",			"weapons/arccw_ins2/universal/uni_weapon_holster.wav", CHAN_STATIC, 0.3, 65, 95 )
		ArcCW_Insurgency:AddSound( "Universal.LeanIn",			{"weapons/arccw_ins2/universal/uni_lean_out_01.wav", "weapons/arccw_ins2/universal/uni_lean_out_02.wav", "weapons/arccw_ins2/universal/uni_lean_out_03.wav", "weapons/arccw_ins2/universal/uni_lean_out_04.wav"}, CHAN_STATIC, 0.35, 75, 100 )

	-- M9 Beretta
		ArcCW_Insurgency:AddSound( "Weapon_M9.Magrelease",		"weapons/arccw_ins2/m9/handling/M9_safety.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Magout",			"weapons/arccw_ins2/m9/handling/M9_magout.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Magin",			"weapons/arccw_ins2/m9/handling/M9_magin.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.MagHit",			"weapons/arccw_ins2/m9/handling/M9_maghit.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Boltback",		"weapons/arccw_ins2/m9/handling/M9_boltback.wav", CHAN_ITEM, 0.4, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M9.Boltrelease",		"weapons/arccw_ins2/m9/handling/M9_boltrelease.wav", CHAN_ITEM, 0.4, 65, 100 )

	-- M4A1
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Magrelease",	"weapons/arccw_ins2/m4a1/handling/m4a1_magrelease.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Magout",		"weapons/arccw_ins2/m4a1/handling/m4a1_magout.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Magin",			"weapons/arccw_ins2/m4a1/handling/m4a1_magin.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Hit",		    "weapons/arccw_ins2/m4a1/handling/m4a1_hit.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Boltback",		"weapons/arccw_ins2/m4a1/handling/m4a1_boltback.wav", CHAN_ITEM, 0.3, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.Boltrelease",	"weapons/arccw_ins2/m4a1/handling/m4a1_boltrelease.wav", CHAN_ITEM, 0.3, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_M4A1.ROF",	        "weapons/arccw_ins2/m4a1/handling/m4a1_fireselect.wav", CHAN_ITEM, 0.2, 65, 100 )

	-- MP5K
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.MagRelease",	"weapons/arccw_ins2/mp5k/handling/mp5k_magrelease.wav", CHAN_ITEM, 0.2, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.Magout",		"weapons/arccw_ins2/mp5k/handling/mp5k_magout.wav", CHAN_ITEM, 0.4, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.Magin",			"weapons/arccw_ins2/mp5k/handling/mp5k_magin.wav", CHAN_ITEM, 0.4, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.Boltback",		"weapons/arccw_ins2/mp5k/handling/mp5k_boltback.wav", CHAN_ITEM, 0.3, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.Boltlock",		"weapons/arccw_ins2/mp5k/handling/mp5k_boltlock.wav", CHAN_ITEM, 0.3, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.Boltrelease",	"weapons/arccw_ins2/mp5k/handling/mp5k_boltrelease.wav", CHAN_ITEM, 0.3, 65, 100 )
		ArcCW_Insurgency:AddSound( "Weapon_mp5k.ROF",	        "weapons/arccw_ins2/mp5k/handling/mp5k_fireselect.wav", CHAN_ITEM, 0.2, 65, 100 )
