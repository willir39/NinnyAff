local Unlocker, awful, proj = ...
local player, target = awful.player, awful.target
local pet = awful.pet
if proj.WarlockCheck() then return end

local classname = proj.warlock
local specname = proj.warlock.affliction
local talents = proj.ID.talent

local Spell = awful.Spell
awful.Populate({
  -- ## RACIALS ## --
  BloodFury = Spell({ 20572, 33697, 33702 }, { beneficial = true }),
  Berserking = Spell(26297, { beneficial = true }),
  WillOfTheForsaken = Spell(7744, { beneficial = true }),
  ArcaneTorrent = Spell({ 28730, 50613, 25046, 80483, 129597, 155145, 202719, 232633 }, { beneficial = true }),
  WarStomp = Spell(20549, { beneficial = true }),
  EveryManForHimself = Spell(59752, { beneficial = true }),
  GiftOfTheNaaru = Spell(28880, { heal = true }),
  Stoneform = Spell(20594, { beneficial = true }),
  EscapeArtist = Spell(20589, { beneficial = true }),
  Shadowmeld = Spell(58984, { beneficial = true }),
  QuakingPalm = Spell(107079, { beneficial = true }),
  RocketJump = Spell(69070, { beneficial = true }),
  RocketBarrage = Spell(69041, { beneficial = true }),
  Darkflight = Spell(68992, { beneficial = true }),
  WispSpirit = Spell(20585, { beneficial = true }),
  Regeneration = Spell(291944, { beneficial = true }),
  AncestralCall = Spell(274738, { beneficial = true }),
  Fireblood = Spell(265221, { beneficial = true }),

    -- ## AFFLICTION WARLOCK ## --
  Agony = Spell(980, { targeted = true, damage = "magic" }),
  Corruption = Spell(172, { targeted = true, damage = "magic" }),
  ShadowBolt = Spell(686, { targeted = true, damage = "magic" }),
  SummonImp = Spell(688, { beneficial = true }),
  SummonVoidwalker = Spell(697, { beneficial = true }),
  SummonSayaad = Spell(157900, { beneficial = true }),
  SummonFelhunter = Spell(691, { beneficial = true }),
  UnendingResolve = Spell(104773, { beneficial = true }),
  Fear = Spell(5782, { targeted = true }),
  CurseOfWeakness = Spell(702, { targeted = true, effect = "magic" }),
  Healthstone = Spell(6201, { beneficial = true }),
  HealthFunnel = Spell(755, { beneficial = true }),
  DrainLife = Spell(234153, { targeted = true, damage = "magic" }),
  EyeOfKilrogg = Spell(126, { beneficial = true }),
  UnendingBreath = Spell(5697, { beneficial = true }),
  SubjugateDemon = Spell(1098, { targeted = true }),
  SoulLeech = Spell(108370, { beneficial = true }),
  Soulstone = Spell(20707, { beneficial = true }),
  CommandDemon = Spell(119898, { beneficial = true }),
  RitualOfDoom = Spell(18540, { beneficial = true }),
  RitualOfSummoning = Spell(698, { beneficial = true }),
  FelDomination = Spell(333889, { beneficial = true }),
  DemonicCircle = Spell(48018, { beneficial = true }),
  BurningRush = Spell(111400, { beneficial = true }),
  CursesOfEnfeeblement = Spell(702, { targeted = true, effect = "magic" }),
  HowlOfTerror = Spell(5484, { targeted = true }),
  MortalCoil = Spell(6789, { targeted = true }),
  AmplifyCurse = Spell(182119, { beneficial = true }),
  Banish = Spell(710, { targeted = true }),
  DemonicGateway = Spell(111771, { beneficial = true }),
  DarkPact = Spell(108416, { beneficial = true }),
  Shadowfury = Spell(30283, { targeted = true }),
  Shadowflame = Spell(205181, { targeted = true, damage = "magic" }),
  SummonSoulkeeper = Spell(300693, { beneficial = true }),
  Soulburn = Spell(74434, { beneficial = true }),
  MaleficRapture = Spell(324536, { targeted = true, damage = "magic" }),
  UnstableAffliction = Spell(316099, { targeted = true, damage = "magic" }),
  SeedOfCorruption = Spell(27243, { targeted = true, damage = "magic" }),
  DrainSoul = Spell(198590, { targeted = true, damage = "magic" }),
  SiphonLife = Spell(63106, { targeted = true, damage = "magic" }),
  PhantomSingularity = Spell(205179, { targeted = true, damage = "magic" }),
  VileTaint = Spell(278350, { targeted = true, damage = "magic" }),
  SoulSwap = Spell(86121, { targeted = true }),
  GrimoireOfSacrifice =Spell(108503, { beneficial = true }),
  Haunt = Spell(48181, { targeted = true, damage = "magic" }),
  SummonDarkglare = Spell(205180, { beneficial = true }),
  SoulRot = Spell(325640, { targeted = true, damage = "magic" })
  Nightfall = Spell(108558, { beneficial = true }),
  WritheInAgony = Spell(196102, { beneficial = true }),
  SowTheSeeds = Spell(196226, { beneficial = true }),
  ShadowEmbrace = Spell(32388, { beneficial = true }),
  DarkVirtuosity = Spell(341385, { beneficial = true }),
  KindledMalice = Spell(341397, { beneficial = true }),
  AgonizingCorruption = Spell(341399, { beneficial = true }),
  AbsoluteCorruption = Spell(196103, { beneficial = true }),
  PandemicInvocation = Spell(341401, { beneficial = true }),
  InevitableDemise = Spell(334319, { beneficial = true }),
  SoulFlame = Spell(199471, { beneficial = true }),
  FocusedMalignancy = Spell(341412, { beneficial = true }),
  WitheringBolt = Spell(341413, { beneficial = true }),
  SacrolashsDarkStrike = Spell(341414, { beneficial = true }),
  CreepingDeath = Spell(264000, { beneficial = true }),
  MaleficAffliction = Spell(341415, { beneficial = true }),
  TormentedCrescendo = Spell(341417, { beneficial = true }),
  SeizedVitality = Spell(341418, { beneficial = true }),
  MalevolentVisionary = Spell(341420, { beneficial = true }),
  WrathOfConsumption = Spell(199472, { beneficial = true }),
  SoulEatersGluttony = Spell(341421, { beneficial = true }),
  DoomBlossom = Spell(341423, { beneficial = true }),
  DreadTouch = Spell(341424, { beneficial = true }),
  HauntedSoul = Spell(341425, { beneficial = true }),
  GrandWarlocksDesign = Spell(341427, { beneficial = true }),
  GrimReach = Spell(341428, { beneficial = true }),
  DarkHarvest = Spell(341429, { beneficial = true })
}, affliction, getfenv(1))