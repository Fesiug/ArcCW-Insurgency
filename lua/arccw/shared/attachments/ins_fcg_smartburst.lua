att.PrintName = "Denominator"
att.Icon = Material("entities/acwatt_ins2_fcg_smartburst.png", "mips smooth")
att.Description = "A burst firemode conversion that varies its length to 1/6th of the magazine's capacity."
att.Desc_Cons = {
    "Brief burst delay"
}
att.Slot = "fcg"
att.SortOrder = 4

att.Ignore = false

att.Override_Firemodes = {
    {
        Mode = -1000,
        CustomBars = "---__",
        PrintName = "SBST",
        RunawayBurst = true,
        PostBurstDelay = 0.2
    },
    {
        Mode = 0
    }
}

att.Mult_RPM = 1.15
att.AutoStats = true

att.Hook_GetBurstLength = function(wep)

    local bstCnt = math.max(math.ceil(wep:Clip1() * 1/6), 2)

    if wep:GetNWInt("ArcCW_SmartBurst", -1) < 0 then
        wep:SetBurstCount(0)
        wep:SetNWInt("ArcCW_SmartBurst", bstCnt)
    end

    return wep:GetNWInt("ArcCW_SmartBurst", -1) < 0 and nil or wep:GetNWInt("ArcCW_SmartBurst")
end

-- Using this as a makeshift onReload hook right now
att.Hook_SelectReloadAnimation = function(wep, mult)
    wep:SetNWInt("ArcCW_SmartBurst", -1)
end

att.Hook_ShouldNotFire = function(wep)
    if wep:GetNWInt("ArcCW_SmartBurst", -1) > 1 and wep:GetNWInt("ArcCW_SmartBurst", -1) <= wep:GetBurstCount() then
        wep:SetNWInt("ArcCW_SmartBurst", -1)
        return true
    end
end

att.Hook_Think = function(wep)
    if wep:GetBurstCount() <= 0 then
        local bstCnt = math.max(math.ceil(wep:Clip1() * 1/6), 2)
        wep:SetNWInt("ArcCW_SmartBurst", bstCnt)
    end
end

att.Hook_FiremodeName = function(wep)
    local numba = "-"

    if wep:GetNWInt("ArcCW_SmartBurst", -1) > 0 then
        numba = wep:GetNWInt("ArcCW_SmartBurst", -1)
    end

    return numba .. "SBST"
end