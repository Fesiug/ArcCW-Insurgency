att.PrintName = "Tidal"
att.Icon = Material("entities/acwatt_ins_fcg_tidal.png", "smooth mips")
att.Description = "Fire system that harnesses the magnetic field to cycle bullets at a dramatic rate. Like its namesake, the actual rate of fire increases and decreases periodically."
att.Desc_Neutrals = {
    "250% maximum firerate",
    "40% minimum firerate",
}
att.Desc_Pros = {
    "Fully automatic fire",
    "Potential fire rate increase"
}
att.Desc_Cons = {
    "Inconsistent fire rate",
}
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "TIDAL",
    },
    {
        Mode = 0
    }
}

att.AutoStats = true

att.Mult_RPM = 1
att.Mult_AccuracyMOA = 1.4

att.Hook_ModifyRPM = function(wep, delay)
	--MsgN((0.4 + math.abs(math.sin(CurTime() * 0.6) * 1)))
	
    return delay * (0.4 + math.abs(math.sin(CurTime() * 0.6) * 1))
end

att.Hook_FiremodeBars = function(wep, cbars)
	local types = {
		[1] = "______!",
		[2] = "_____--",
		[3] = "____--_",
		[4] = "___--__",
		[5] = "__--___",
		[6] = "_--____",
		[7] = "--_____",
	}

	local eq = (0.4 + math.abs(math.sin(CurTime() * 0.6) * 1))
	local eq2 = math.Remap( eq, 0.4, 1.4, 1, 7 )
	
	return types[math.Round(eq2)]
end