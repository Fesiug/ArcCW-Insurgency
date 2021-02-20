att.PrintName = "Triple Stuf"
att.Icon = Material("entities/acwatt_ins_fcg_triplestuf.png", "mips smooth")
att.Description = "Fire system that can fit two extra rounds in the chamber at a time through esoteric mechanical magic."
att.Desc_Pros = {
    "Three in the chamber",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "fcg"
att.SortOrder = -1

att.Override_ChamberSize = 3

att.Hook_Compatible = function(wep, compat)
    if wep.ChamberSize == 1 then
        return
    else
        return false
    end
end