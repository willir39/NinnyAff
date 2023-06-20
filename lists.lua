local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
if proj.LoadCheck() then return end

proj.ID = {
  buff = {
    Preparation       = 44521,
    ArenaPreparation  = 32727,
    SpellReflection   = 23920,
    GroundingTotem    = 8178,
    IceBlock          = 45438,
    DivineShield      = 642,
    Deterrence        = 19263,
  },
  debuff = {
    Cyclone           = 33786,
    BloodPlague       = 55078,
    EbonPlague        = 51735,
  },
  buffGroup = {
    fullImmunity = {
      [45438]   = "Ice Block",
      [642]     = "Divine Shield",
      [19263]   = "Deterrence",
    },
  },
  debuffGroup = {
    ignoreFears = {
      [5782]    = "Fear(Rank 1)",
      [6213]    = "Fear(Rank 2)",
      [6215]    = "Fear(Rank 3)",
      [5484]    = "Howl of Terror(Rank 1)",
      [17928]   = "Howl of Terror(Rank 2)",
      [8122]    = "Psychic Scream(Rank 1)",
      [8124]    = "Psychic Scream(Rank 2)",
      [10888]   = "Psychic Scream(Rank 3)",
      [10890]   = "Psychic Scream(Rank 4)",
      [20511]   = "Intimidating Shout",
    },
    fullImmunity = {
      [33786]   = "Cyclone",
    },
  },
  pet = {

  },
  talent = {
    deathKnight = {
      ImprovedBloodPresence = { 1, 1 },
      BladedArmor = { 1, 2 },
      Butchery = { 1, 3 },
      RuneTap = { 1, 4 },
      ImprovedRuneTap = { 1, 5 },
      DarkConviction = { 1, 6 },
      BloodyVengeance = { 1, 7 },
      Subversion = { 1, 8 },
      ScentOfBlood = { 1, 9 },
      MarkOfBlood = { 1, 10 },
      VeteranOfTheThirdWar = { 1, 11 },
      Vendetta = { 1, 12 },
      UnholyFrenzy = { 1, 13 },
      SuddenDoom = { 1, 14 },
      HeartStrike = { 1, 15 },
      MightOfMograine = { 1, 16 },
      WillOfTheNecropolis = { 1, 17 },
      Bloodworms = { 1, 18 },
      DancingRuneWeapon = { 1, 19 },
      BloodyStrikes = { 1, 20 },
      BladeBarrier = { 1, 21 },
      SpellDeflection = { 1, 22 },
      VampiricBlood = { 1, 23 },
      BloodGorged = { 1, 24 },
      DeathRuneMastery = { 1, 25 },
      AbominationsMight = { 1, 26 },
      TwoHandedWeaponSpecialization = { 1, 27 },
      ImprovedDeathStrike = { 1, 28 },
      Toughness = { 2, 1 },
      EndlessWinter = { 2, 2 },
      BlackIce = { 2, 3 },
      FrostStrike = { 2, 4 },
      UnbreakableArmor = { 2, 5 },
      Deathchill = { 2, 6 },
      ChillOfTheGrave = { 2, 7 },
      HowlingBlast = { 2, 8 },
      FrigidDreadplate = { 2, 9 },
      Rime = { 2, 10 },
      MercilessCombat = { 2, 11 },
      Acclimation = { 2, 12 },
      TundraStalker = { 2, 13 },
      HungeringCold = { 2, 14 },
      RunicPowerMastery = { 2, 15 },
      NervesOfColdSteel = { 2, 16 },
      ImprovedFrostPresence = { 2, 17 },
      GlacierRot = { 2, 18 },
      ImprovedIcyTouch = { 2, 19 },
      IcyReach = { 2, 20 },
      GuileOfGorefiend = { 2, 21 },
      IcyTalons = { 2, 22 },
      KillingMachine = { 2, 23 },
      Annihilation = { 2, 24 },
      BloodOfTheNorth = { 2, 25 },
      Lichborne = { 2, 26 },
      ImprovedIcyTalons = { 2, 27 },
      Chilblains = { 2, 28 },
      ThreatOfThassarian = { 2, 29 },
      Virulence = { 3, 1 },
      Morbidity = { 3, 2 },
      RavenousDead = { 3, 3 },
      CryptFever = { 3, 4 },
      Epidemic = { 3, 5 },
      MasterOfGhouls = { 3, 6 },
      CorpseExplosion = { 3, 7 },
      UnholyBlight = { 3, 8 },
      SummonGargoyle = { 3, 9 },
      Reaping = { 3, 10 },
      WanderingPlague = { 3, 11 },
      BloodCakedBlade = { 3, 12 },
      Impurity = { 3, 13 },
      BoneShield = { 3, 14 },
      Outbreak = { 3, 15 },
      MagicSuppression = { 3, 16 },
      Dirge = { 3, 17 },
      ImprovedUnholyPresence = { 3, 18 },
      UnholyCommand = { 3, 19 },
      RageOfRivendare = { 3, 20 },
      OnAPaleHorse = { 3, 21 },
      EbonPlaguebringer = { 3, 22 },
      Necrosis = { 3, 23 },
      ViciousStrikes = { 3, 24 },
      GhoulFrenzy = { 3, 25 },
      ScourgeStrike = { 3, 26 },
      Anticipation = { 3, 27 },
      AntiMagicZone = { 3, 28 },
      NightOfTheDead = { 3, 29 },
      Desecration = { 3, 30 },
      Desolation = { 3, 31 },      
    },
    hunter = {
      ImprovedAspectOfTheMonkey = { 1, 1 },
      ImprovedAspectOfTheHawk = { 1, 2 },
      Pathfinding = { 1, 3 },
      ImprovedMendPet = { 1, 4 },
      BestialWrath = { 1, 5 },
      Intimidation = { 1, 6 },
      SpiritBond = { 1, 7 },
      EnduranceTraining = { 1, 8 },
      BestialDiscipline = { 1, 9 },
      Ferocity = { 1, 10 },
      ThickHide = { 1, 11 },
      UnleashedFury = { 1, 12 },
      Frenzy = { 1, 13 },
      FocusedFire = { 1, 14 },
      ImprovedRevivePet = { 1, 15 },
      AnimalHandler = { 1, 16 },
      FerociousInspiration = { 1, 17 },
      CatlikeReflexes = { 1, 18 },
      SerpentsSwiftness = { 1, 19 },
      TheBeastWithin = { 1, 20 },
      Invigoration = { 1, 21 },
      CobraStrikes = { 1, 22 },
      AspectMastery = { 1, 23 },
      BeastMastery = { 1, 24 },
      Longevity = { 1, 25 },
      KindredSpirits = { 1, 26 },
      ImprovedConcussiveShot = { 2, 1 },
      Efficiency = { 2, 2 },
      ImprovedHuntersMark = { 2, 3 },
      LethalShots = { 2, 4 },
      AimedShot = { 2, 5 },
      ImprovedArcaneShot = { 2, 6 },
      Barrage = { 2, 7 },
      ImprovedStings = { 2, 8 },
      MortalShots = { 2, 9 },
      ConcussiveBarrage = { 2, 10 },
      Readiness = { 2, 11 },
      TrueshotAura = { 2, 12 },
      RangedWeaponSpecialization = { 2, 13 },
      CombatExperience = { 2, 14 },
      CarefulAim = { 2, 15 },
      MasterMarksman = { 2, 16 },
      SilencingShot = { 2, 17 },
      GoForTheThroat = { 2, 18 },
      RapidKilling = { 2, 19 },
      ImprovedBarrage = { 2, 20 },
      PiercingShots = { 2, 21 },
      RapidRecuperation = { 2, 22 },
      WildQuiver = { 2, 23 },
      ImprovedSteadyShot = { 2, 24 },
      MarkedForDeath = { 2, 25 },
      ChimeraShot = { 2, 26 },
      FocusedAim = { 2, 27 },
      LightningReflexes = { 3, 1 },
      Entrapment = { 3, 2 },
      TrapMastery = { 3, 3 },
      LockAndLoad = { 3, 4 },
      SurvivalTactics = { 3, 5 },
      Surefooted = { 3, 6 },
      Deflection = { 3, 7 },
      Counterattack = { 3, 8 },
      KillerInstinct = { 3, 9 },
      BlackArrow = { 3, 10 },
      WyvernSting = { 3, 11 },
      SavageStrikes = { 3, 12 },
      Survivalist = { 3, 13 },
      ImprovedTracking = { 3, 14 },
      Resourcefulness = { 3, 15 },
      SurvivalInstincts = { 3, 16 },
      ThrillOfTheHunt = { 3, 17 },
      ExposeWeakness = { 3, 18 },
      MasterTactician = { 3, 19 },
      ScatterShot = { 3, 20 },
      HawkEye = { 3, 21 },
      NoxiousStings = { 3, 22 },
      PointOfNoEscape = { 3, 23 },
      SniperTraining = { 3, 24 },
      HuntingParty = { 3, 25 },
      ExplosiveShot = { 3, 26 },
      HunterVsWild = { 3, 27 },
      TNT = { 3, 28 },
    }
  },
  glyph = {
    deathknight = {
      DarkDeath       = 63333,
      Pestilence      = 59309,
      DeathsEmbrace   = 58677,
      AntiMagicShell  = 58623,
      RaiseDead       = 60200,
      TheGhoul        = 58686,
    }
  }
}

proj.TotemStompList = {

}

proj.InterruptCCList = {

}

proj.InterruptSpecialList = {

}

proj.InterruptChanneledHealsList = {

}