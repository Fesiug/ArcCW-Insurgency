SWEP.Base			= "arccw_base"
SWEP.Spawnable		= true -- this obviously has to be set to true
SWEP.Category		= "ArcCW - Insurgency, Base" -- edit this if you like
SWEP.AdminOnly		= false

SWEP.PrintName				= "AKS-74U"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= ""
SWEP.Trivia_Manufacturer	= nil
SWEP.Trivia_Calibre			= nil
SWEP.Trivia_Mechanism		= nil
SWEP.Trivia_Country			= nil
SWEP.Trivia_Year			= nil

SWEP.Slot			= 1

SWEP.UseHands		= true

SWEP.ViewModel		= "models/weapons/arccw_ins2/c_aks74u.mdl"
SWEP.WorldModel		= "models/weapons/arccw_ins2/c_aks74u.mdl"
SWEP.ViewModelFOV	= 65

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage				= 42
SWEP.DamageMin			= 33

SWEP.RangeMin			= 20
SWEP.Range				= 75
SWEP.Penetration		= 9
SWEP.DamageType			= DMG_BULLET
SWEP.ShootEntity		= nil

SWEP.Primary.ClipSize	= 30
SWEP.ChamberSize		= 1

SWEP.PhysBulletMuzzleVelocity	= 275

SWEP.Recoil			= 0.900
SWEP.RecoilSide		= 0.425
SWEP.RecoilRise		= .5
SWEP.RecoilPunch    = 2
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 3

SWEP.Delay			= 60 / 700
SWEP.Num			= 1
SWEP.Firemodes = {
    {
        Mode = 2,
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

SWEP.ShootSound				= "weapons/arccw_ins2/aks74u/aks_fp.wav"
SWEP.ShootSoundSilenced		= "weapons/arccw_ins2/aks74u/aks_suppressed_fp.wav"
SWEP.DistantShootSound		= nil

SWEP.ShootVol		= 140
SWEP.ShootPitch		= (100+105)/2
SWEP.ShootPitchVariation = (((100+105)/2)/100)-1

SWEP.FiremodeSound      = ""
SWEP.EnterBipodSound    = ""
SWEP.ExitBipodSound     = ""
SWEP.SelectUBGLSound    = ""
SWEP.ExitUBGLSound      = ""

SWEP.MuzzleEffect		= "muzzleflash_4"
SWEP.ShellModel			= "models/shells/shell_556.mdl"
SWEP.ShellPitch			= 100
SWEP.ShellScale			= 1.25
SWEP.ShellRotateAngle	= Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment		= 1
SWEP.CaseEffectAttachment		= 3

SWEP.SpeedMult = 0.74
SWEP.SightedSpeedMult = 0.67
SWEP.SightTime = 0.450

SWEP.IronSightStruct = {
    Pos = Vector(-2.5, -2, 0.67),
    Ang = Angle(-0.25, 0, 0),
    Magnification = 1.25,
    ViewModelFOV = 65-25,
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

SWEP.CustomizePos = Vector(6, -1, 1.5)
SWEP.CustomizeAng = Angle(0, 30, 20)

SWEP.BarrelLength = 24

SWEP.DefaultElements = {"standard"}
SWEP.AttachmentElements = {
    ["modkit"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw_ins2/upgrades/a_modkit_07.mdl",
                Bone = "A_ModKit",
                Offset = {
                    pos = Vector(-2.3126, 1.0551, -8.8160),
                    ang = Angle(90, 0, 90),
                },
            }
        },
    },
    ["standard"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw_ins2/upgrades/a_standard_aks74u.mdl",
                Bone = "A_Foregrip",
                Offset = {
                    pos = Vector(0, 0, 0),
                    ang = Angle(0, 90, 0),
                },
            }
        },
    },
}

SWEP.ExtraSightDist = 7.5
SWEP.GuaranteeLaser = true

SWEP.ReferencePosCache = {
    [99] = {
        Pos = Vector(-2.2427, -1.0011, -7.5362),
        Ang = Angle(270, 0, 90),
    },
    [108] = {
        Pos = Vector(-3.4737, -3.1923, -19.9009),
        Ang = Angle(270, 0, 90),
    }
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
            vpos = Vector(0, -0.1, 0),
            vang = Angle(90, 0, 90),
        },
        InstalledEles = {"modkit"}
    },
    {
        PrintName = "Underbarrel",
        DefaultAttName = "Handguard",
        DefaultAttIcon = noatt,
        Slot = {"foregrip", "bipod", "ubgl"},
        Bone = "A_Foregrip",
        Offset = {
            vpos = Vector(0, 1, 0),
            vang = Angle(0, 90, 0),
        },   
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
            vpos = Vector(0, 2*0.9512, 0),
            vang = Angle(0, 0, 270),
        },
        CorrectivePos = Vector(2, -1, 0.5),
        ExtraSightDist = 10,
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
        CorrectivePos = Vector(2, -1, 0.5),
        ExtraSightDist = 10,
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
    ["changefiremode"] = { Source = "base_fireselect", SoundTable = { ArcCW_Insurgency:InsertSound("Weapon_AKS74U.ROF", 8/30 ) } },
    ["changefiremode_iron"] = { Source = "iron_fireselect", SoundTable = { ArcCW_Insurgency:InsertSound("Weapon_AKS74U.ROF", 8/30 ) } },
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
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.Draw", 0 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Boltback",       23/32 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Boltrelease",    36/32 ),
			ArcCW_Insurgency:InsertSound( "Universal.LeanIn",           55/32 ),
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
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Magrelease", 16/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Magout",     19/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.MagoutRattle", 21/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Magin",      60/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Rattle",     89/30 ),
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
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Magrelease",   16/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Magout",       19/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.MagoutRattle", 21/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Magin",        60/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Boltback",     97/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Boltrelease",  104/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_AKS74U.Rattle",       121/30 ),
        },
    },
}