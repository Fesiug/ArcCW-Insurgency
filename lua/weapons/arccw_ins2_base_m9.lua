SWEP.Base			= "arccw_base"
SWEP.Spawnable		= true -- this obviously has to be set to true
SWEP.Category		= "ArcCW - Insurgency, Base" -- edit this if you like
SWEP.AdminOnly		= false

SWEP.PrintName				= "M9"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= ""
SWEP.Trivia_Manufacturer	= nil
SWEP.Trivia_Calibre			= nil
SWEP.Trivia_Mechanism		= nil
SWEP.Trivia_Country			= nil
SWEP.Trivia_Year			= nil

SWEP.Slot			= 1

SWEP.UseHands		= true

SWEP.ViewModel		= "models/weapons/arccw_ins2/c_beretta.mdl"
SWEP.WorldModel		= "models/weapons/arccw_ins2/c_beretta.mdl"
SWEP.ViewModelFOV	= 74

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage				= 39
SWEP.DamageMin			= 20

SWEP.Range				= 50
SWEP.Penetration		= 6
SWEP.DamageType			= DMG_BULLET
SWEP.ShootEntity		= nil

SWEP.Primary.ClipSize	= 15
SWEP.ChamberSize		= 1

SWEP.PhysBulletMuzzleVelocity	= 275

SWEP.Recoil			= 1.500
SWEP.RecoilSide		= 0.425
SWEP.RecoilRise		= 2
SWEP.RecoilPunch    = 1
SWEP.VisualRecoilMult = 4
SWEP.MaxRecoilBlowback = 3

SWEP.Delay			= 60 / 600
SWEP.Num			= 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

SWEP.AccuracyMOA		= 9
SWEP.HipDispersion		= 125
SWEP.MoveDispersion		= 25

SWEP.Primary.Ammo		= "pistol"

SWEP.ShootSound				= "weapons/arccw_ins2/m9/m9_fp.wav"
SWEP.ShootSoundSilenced		= "weapons/arccw_ins2/m9/m9_suppressed_fp.wav"
SWEP.DistantShootSound		= nil

SWEP.ShootVol		= 140
SWEP.ShootPitch		= (100+105)/2
SWEP.ShootPitchVariation = (((100+105)/2)/100)-1

SWEP.MuzzleEffect		= "muzzleflash_pistol"
SWEP.ShellModel			= "models/shells/shell_9mm.mdl"
SWEP.ShellPitch			= 100
SWEP.ShellScale			= 1.25
SWEP.ShellRotateAngle	= Angle(0, 270, 0)

SWEP.MuzzleEffectAttachment		= 1
SWEP.CaseEffectAttachment		= 3

SWEP.SpeedMult = 0.98
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.250

SWEP.IronSightStruct = {
    Pos = Vector(-1.855, 0, 0.504),
    Ang = Angle(0.2, 0, 0),
    Magnification = 1.125,
    SwitchToSound = "",
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

local active_pos = Vector(-0.25, -0.15, -0.75 )
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

SWEP.CustomizePos = Vector(6, -1, 0)
SWEP.CustomizeAng = Angle(0, 30, 20)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {}

SWEP.ExtraSightDist = 5
SWEP.GuaranteeLaser = true

SWEP.WorldModelOffset = {
    pos = Vector(-12.5, 4, -2.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

local noatt = Material("materials/entities/acwatt_ins2_noatt.png", "mips smooth")
SWEP.Attachments = {
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
        VMScale = Vector(.6, .6, .6)
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Nil",
        DefaultAttIcon = noatt,
        Slot = "tac",
        Bone = "A_Underbarrel",
        Offset = {
            vpos = Vector(-2, 0, 0.75),
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(1.5, 0, -0.5),
        ExtraSightDist = 7,
        DefaultEles = {"standard2"}
    },
    {
        PrintName = "Firegroup",
        DefaultAttName = "Nil",
        DefaultAttIcon = noatt,
        Slot = "fcg",
    },
}

local snds = {
    ArcCW_Insurgency:GetSound("Universal.PistolDraw"),
    ArcCW_Insurgency:GetSound("Universal.PistolHolster"),
	ArcCW_Insurgency:GetSound("Weapon_M9.Magrelease"),
	ArcCW_Insurgency:GetSound("Weapon_M9.Magout"),
	ArcCW_Insurgency:GetSound("Weapon_M9.Magin"),
	ArcCW_Insurgency:GetSound("Weapon_M9.MagHit"),
	ArcCW_Insurgency:GetSound("Weapon_M9.Boltback"),
	ArcCW_Insurgency:GetSound("Weapon_M9.Boltrelease"),
}

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_sights"] = { Source = "iron_idle" },
    ["enter_sprint"] = { Source = "base_sprint" },
    ["exit_sprint"] = { Source = "base_idle" },
    ["idle_sprint"] = {
        Source = "base_sprint"
    },
    ["enter_sprint_empty"] = { Source = "empty_sprint" },
    ["exit_sprint_empty"] = { Source = "empty_idle" },
    ["idle_empty"] = {
        Source = "empty_idle"
    },
    ["idle_sprint_empty"] = {
        Source = "empty_sprint"
    },
    ["draw"] = {
        Source = "base_draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.PistolDraw", 0 ),
        },
    },
    ["draw_empty"] = {
        Source = "empty_draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.PistolDraw", 0 ),
        },
    },
    ["holster"] = {
        Source = "base_holster",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.PistolHolster", 0 ),
        },
    },
    ["holster_empty"] = {
        Source = "empty_holster",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.PistolHolster", 0 ),
        },
    },
    ["ready"] = {
        Source = "base_ready",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Universal.PistolDraw", 0 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Boltback",       9/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Boltrelease",    19/30 ),
        },
    },
    ["fire"] = {
        Source = {"base_fire", "base_fire2", "base_fire3"},
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = {"iron_fire_1", "iron_fire_2", "iron_fire_3"},
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "base_firelast",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "iron_firelast",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.4,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Magrelease", 0/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Magout",     7/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Magin",      35/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.MagHit",        58/30 ),
        },
    },
    ["reload_empty"] = {
        Source = "base_reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.4,
        SoundTable = {
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Magrelease", 0/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Magout",     7/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Magin",      35/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.MagHit",        58/30 ),
			ArcCW_Insurgency:InsertSound( "Weapon_M9.Boltrelease",    71/30 ),
        },
    },
}