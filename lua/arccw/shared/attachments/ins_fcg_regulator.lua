att.PrintName = "Regulator"
att.Icon = Material("entities/acwatt_ins_fcg_regulator.png", "mips smooth")
att.Description = "Fire control device that allows the selection of varying fire rates."
att.Desc_Pros = {
    "Automatic fire with adjustable rate"
}
att.Desc_Cons = {
    "Maximum 90% fire rate"
}
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "90%",
        Mult_RPM = 0.9,
		CustomBars = "--_",
    },
    {
        Mode = 2,
        PrintName = "75%",
        Mult_RPM = 0.75,
		CustomBars = "-_-",
    },
    {
        Mode = 2,
        PrintName = "50%",
        Mult_RPM = 0.5,
		CustomBars = "_--",
    },
}