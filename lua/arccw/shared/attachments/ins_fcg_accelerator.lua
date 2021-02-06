att.PrintName = "Accelerator"
att.Icon = Material("entities/acwatt_ins_fcg_accelerator.png", "mips smooth")
att.Description = "Firemode conversion that increases fire rate the longer you shoot, up to 10 shots."
att.Desc_Pros = {
    "Up to 25% faster fire rate"
}
att.Desc_Cons = {
    "Fire rate starts 50% slower"
}
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = 2,
		CustomBars = "-------",
    },
    {
        Mode = 0
    }
}

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(10, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 0.5, 1.25)

    return delay / mult
end

att.Hook_FiremodeName = function(wep, name)
    local max = math.min(10, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 0.5, 1.25)
	
	return "ACCEL-" .. math.Round(mult*100) .. "%"
end


att.Hook_FiremodeBars = function(wep, cbars)
	local types = {
		[0] = "----------",
		[1] = "!---------",
		[2] = "!!--------",
		[3] = "!!!-------",
		[4] = "!!!!------",
		[5] = "!!!!!-----",
		[6] = "!!!!!!----",
		[7] = "!!!!!!!---",
		[8] = "!!!!!!!!--",
		[9] = "!!!!!!!!!-",
		[10] = "!!!!!!!!!!",
	}
	
    local max = math.min(10, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 0.5, 1.25)
	
	local choice = math.Remap( mult, 0.5, 1.25, 0, 10 )
	
	return types[math.Round(choice)]
end