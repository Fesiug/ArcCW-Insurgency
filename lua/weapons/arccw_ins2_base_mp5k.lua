SWEP.Base			= "arccw_base"
SWEP.Spawnable		= true -- this obviously has to be set to true
SWEP.Category		= "ArcCW - Insurgency, Base" -- edit this if you like
SWEP.AdminOnly		= false

SWEP.PrintName				= "MP5K"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= ""
SWEP.Trivia_Manufacturer	= nil
SWEP.Trivia_Calibre			= nil
SWEP.Trivia_Mechanism		= nil
SWEP.Trivia_Country			= nil
SWEP.Trivia_Year			= nil

SWEP.Slot			= 1

SWEP.UseHands		= true

SWEP.ViewModel		= "models/weapons/arccw_ins2/c_mp5kpdw.mdl"
SWEP.WorldModel		= "models/weapons/arccw_ins2/c_mp5kpdw.mdl"
SWEP.ViewModelFOV	= 62

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage				= 36
SWEP.DamageMin			= 22

SWEP.RangeMin			= 20
SWEP.Range				= 75
SWEP.Penetration		= 9
SWEP.DamageType			= DMG_BULLET
SWEP.ShootEntity		= nil

SWEP.Primary.ClipSize	= 30
SWEP.ChamberSize		= 1

SWEP.PhysBulletMuzzleVelocity	= 275

SWEP.Recoil			= 0.850
SWEP.RecoilSide		= 0.425
SWEP.RecoilRise		= -0.5
SWEP.RecoilPunch    = 0.5
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.5

SWEP.Delay			= 60 / 900
SWEP.Num			= 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType		= "weapon_smg1"
SWEP.NPCWeight			= 100

SWEP.AccuracyMOA		= 9
SWEP.HipDispersion		= 125
SWEP.MoveDispersion		= 25

SWEP.Primary.Ammo		= "smg1"

SWEP.ShootSound				= "weapons/arccw_ins2/mp5k/mp5k_fp.wav"
SWEP.ShootSoundSilenced		= "weapons/arccw_ins2/mp5k/mp5k_suppressed_fp.wav"
SWEP.DistantShootSound		= nil

SWEP.ShootVol		= 140
SWEP.ShootPitch		= (100+105)/2
SWEP.ShootPitchVariation = (((100+105)/2)/100)-1

SWEP.MeleeSwingSound	= "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound		= "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound		= "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound	= "physics/body/body_medium_break2.wav"

SWEP.FiremodeSound      = ""
SWEP.EnterBipodSound    = ""
SWEP.ExitBipodSound     = ""
SWEP.SelectUBGLSound    = ""
SWEP.ExitUBGLSound      = ""

SWEP.MuzzleEffect		= "muzzleflash_mp5"
SWEP.ShellModel			= "models/shells/shell_9mm.mdl"
SWEP.ShellPitch			= 100
SWEP.ShellScale			= 1.25
SWEP.ShellRotateAngle	= Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment		= 1
SWEP.CaseEffectAttachment		= 3

SWEP.SpeedMult = 0.86
SWEP.SightedSpeedMult = 0.80
SWEP.SightTime = 0.220

SWEP.IronSightStruct = {
    Pos = Vector(-2.31, -2, 0.567),
    Ang = Angle(0.5, 0, 0),
    Magnification = 1.2,
    SwitchToSound = "",
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

local active_pos = Vector(0.1, -1, -0.1)
local active_ang = Angle(0, 0, 0)

SWEP.ActivePos = active_pos + Vector(0, 0, 1)
SWEP.ActiveAng = active_ang

SWEP.CrouchPos = active_pos
SWEP.CrouchAng = active_ang

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(-2, 5, -6)

SWEP.SprintPos = active_pos + Vector(0, 0, 1)
SWEP.SprintAng = active_ang

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.BarrelOffsetCrouch = Vector(0, 0, -2)

SWEP.CustomizePos = Vector(4, -2.5, 0.5)
SWEP.CustomizeAng = Angle(0, 30, 20)

SWEP.BarrelLength = 24

SWEP.DefaultElements = {}
SWEP.AttachmentElements = {
    ["carryhandle"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw_ins2/upgrades/a_modkit_05.mdl",
                BoneMerge = false, -- ARCTIC PLS FIX
                Bone = "A_ModKit",
                Offset = {
                    pos = Vector(-0.0049, -0.8427, 1.9794),
                    ang = Angle(90, 0, 90),
                },
            }
        },
    },
}

SWEP.ExtraSightDist = 7.5
SWEP.GuaranteeLaser = true

SWEP.ReferencePosCache = {
    [101] = {
        Pos = Vector(-2.3139, -0.9715, -10.3961),
        Ang = Angle(270, 0, 90),
    },
    [106] = {
        Pos = Vector(-3.4054, -2.4561, -17.7317),
        Ang = Angle(270, 0, 90),
    },
}

SWEP.WorldModelOffset = {
    pos = Vector(-12.5, 4, -2.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

local noatt = Material("materials/entities/acwatt_ins2_noatt.png", "mips smooth")
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        DefaultAttIcon = noatt,
        Slot = {"optic","optic_lp"},
        Bone = "A_Optic",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, 90),
        },
        CorrectiveAng = Angle(1.4142, 0, 0),
        InstalledEles = {"carryhandle"}
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Nil",
        DefaultAttIcon = noatt,
        Slot = "muzzle",
        Bone = "A_Suppressor",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(270, 90, 270),
        },
    },
    {
        PrintName = "Tactical West",
        DefaultAttName = "Nil",
        DefaultAttIcon = noatt,
        Slot = "tac",
        Bone = "A_LaserFlashlight",
        Offset = {
            vpos = Vector(0, 1.1067/2, 0),
            vang = Angle(0, 0, 270),
        },
        DefaultEles = {"standard2"}
    },
    {
        PrintName = "Tactical East",
        DefaultAttName = "Nil",
        DefaultAttIcon = noatt,
        Slot = "tac",
        Bone = "A_LaserFlashlight",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 90),
        },
        DefaultEles = {"standard3"}
    },
    {
        PrintName = "Firegroup",
        DefaultAttName = "Nil",
        DefaultAttIcon = noatt,
        Slot = "fcg",
    },
}

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_sights"] = { Source = "iron_idle" },
    ["changefiremode"] = { Source = "base_fireselect", SoundTable = { ArcCW_Insurgency:InsertSound("Weapon_mp5k.ROF", 6/30 ) } },
    ["changefiremode_iron"] = { Source = "iron_fireselect", SoundTable = { ArcCW_Insurgency:InsertSound("Weapon_mp5k.ROF", 6/30 ) } },
    ["enter_sprint"] = { Source = "base_sprint" },
    ["exit_sprint"] = { Source = "base_idle" },
    ["idle_sprint"] = {
        Source = "base_sprint"
    },
    ["draw"] = {
        Source = "base_draw",
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.Draw", 0 ),
        },
    },
    ["holster"] = {
        Source = "base_holster",
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.Holster", 0 ),
        },
    },
    ["ready"] = {
        Source = "base_ready",
        LHIK = true,
        LHIKEaseIn = 0,
        LHIKIn = 0,
        LHIKOut = 1.2,
        LHIKEaseOut = 0.8,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.Draw", 0 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Boltback",       12/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Boltrelease",    13/30 ),
        },
    },
    ["fire"] = {
        Source = "base_fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = {"iron_fire", "iron_fire_a", "iron_fire_b", "iron_fire_c", "iron_fire_d", "iron_fire_e", "iron_fire_f"},
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKEaseIn = 0.2,
        LHIKIn = 0.3,
        LHIKOut = 1,
        LHIKEaseOut = 0.6,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.MagRelease", 19/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Magout",     24/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Magin",      70/30 ),
        },
    },
    ["reload_empty"] = {
        Source = "base_reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKEaseIn = 0.2,
        LHIKIn = 0.3,
        LHIKOut = 0.7,
        LHIKEaseOut = 0.3,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Boltback",   12/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Boltlock", 18/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.MagRelease", 40/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Magout",     47/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Magin",      96/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Boltlock", 113/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_mp5k.Boltrelease", 114/30 ),
        },
    },
}

SWEP.M_Hook_ReloadTime = function(wep, mult)
    return 0.8
end