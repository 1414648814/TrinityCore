DELETE FROM `command` WHERE `name`='reload spell_proc_event';
DELETE FROM `spell_proc` WHERE `SpellId` IN (-11185, -31871, -48539, 24658, 28716, 28744, 32409, 58642, 37447, 61062, 63320, 65032, 69755, 69739, 71519, 71562);
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(-11185, 0, 3, 0x00000080, 0x00000000, 0x00000000,  65536, 0x1, 0x2, 0, 0, 0, 0,   0 ,0), -- Improved Blizzard
(-31871, 0,10, 0x00000010, 0x00000000, 0x00000000,  16384, 0x4, 0x2, 0, 0, 0, 0,   0, 0), -- Divine Purpose
(-48539, 0, 7, 0x00000010, 0x04000000, 0x00000000, 262144, 0x2, 0x2, 0, 0, 0, 0,   0, 0), -- Revitalize
(24658,  0, 0, 0x00000000, 0x00000000, 0x00000000,  87376, 0x7, 0x2, 0, 0, 0, 0,   0, 0), -- Unstable Power
(28716,  0, 7, 0x00000010, 0x00000000, 0x00000000, 262144, 0x2, 0x2, 0, 0, 0, 0,   0, 0), -- Rejuvenation - Dreamwalker Raiment 2pc
(28744,  0, 7, 0x00000040, 0x00000000, 0x00000000, 278528, 0x2, 0x2, 0, 0, 0, 0,   0, 0), -- Regrowth - Dreamwalker Raiment 6pc
(32409,  0, 0, 0x00000000, 0x00002000, 0x00000000,      0, 0x1, 0x4, 0, 0, 0, 0,   0, 0), -- Shadow Word: Death - do not require honor target
(58642,  0,15, 0x00000000, 0x08000000, 0x00000000,     16, 0x1, 0x4, 0, 0, 0, 0,   0, 0), -- Glyph of Scourge Strike
(37447,  0, 3, 0x00000000, 0x00000100, 0x00000000,  16384, 0x4, 0x2, 0, 0, 0, 0,   0, 0), -- Improved Mana Gems
(61062,  0, 3, 0x00000000, 0x00000100, 0x00000000,  16384, 0x4, 0x2, 0, 0, 0, 0,   0, 0), -- Improved Mana Gems
(63320,  0, 5, 0x80040000, 0x00000000, 0x00008000,   1024, 0x7, 0x4, 0, 0, 0, 0,   0, 0), -- Glyph of Life Tap
(65032,  0, 0, 0x00000000, 0x00000000, 0x00000000,      0, 0x7, 0x4, 0, 0, 0, 0,   0, 0), -- 321-Boombot Aura - do not require experience target
(69755,  0, 0, 0x00000000, 0x00000000, 0x00000000,      0, 0x7, 0x4, 0, 0, 0, 0,  45, 0), -- Purified Shard of the Scale
(69739,  0, 0, 0x00000000, 0x00000000, 0x00000000,      0, 0x7, 0x4, 0, 0, 0, 0,  45, 0), -- Shiny Shard of the Scale
(71519,  0, 0, 0x00000000, 0x00000000, 0x00000000,      0, 0x1, 0x4, 0, 0, 0, 0, 105, 0), -- Deathbringer's Will
(71562,  0, 0, 0x00000000, 0x00000000, 0x00000000,      0, 0x1, 0x4, 0, 0, 0, 0, 105, 0); -- Deathbringer's Will (Heroic)
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_mage_imp_blizzard','spell_pal_divine_purpose','spell_item_unstable_power','spell_item_restless_strength','spell_dru_revitalize','spell_twisted_reflection','spell_dru_t3_2p_bonus','spell_dru_t3_6p_bonus','spell_mark_of_malice','spell_anetheron_vampiric_aura','spell_item_aura_of_madness','spell_item_dementia','spell_item_sunwell_exalted_caster_neck','spell_item_sunwell_exalted_melee_neck','spell_item_sunwell_exalted_tank_neck','spell_item_sunwell_exalted_healer_neck','spell_pri_shadowfiend_death','spell_dk_glyph_of_scourge_strike','spell_hun_kill_command_pet','spell_mage_imp_mana_gems','spell_gen_vampiric_touch','spell_warl_glyph_of_life_tap','spell_xt002_321_boombot_aura','spell_item_purified_shard_of_the_scale','spell_item_shiny_shard_of_the_scale','spell_item_deathbringers_will_normal','spell_item_deathbringers_will_heroic');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-11185, 'spell_mage_imp_blizzard'),
(-31871, 'spell_pal_divine_purpose'),
(-48539, 'spell_dru_revitalize'),
(21063.  'spell_twisted_reflection'),
(24658,  'spell_item_unstable_power'),
(24661,  'spell_item_restless_strength'),
(28716,  'spell_dru_t3_2p_bonus'),
(28744,  'spell_dru_t3_6p_bonus'),
(33494,  'spell_mark_of_malice'),
(38196,  'spell_anetheron_vampiric_aura'),
(39446,  'spell_item_aura_of_madness'),
(41404,  'spell_item_dementia'),
(45481,  'spell_item_sunwell_exalted_caster_neck'),
(45482,  'spell_item_sunwell_exalted_melee_neck'),
(45483,  'spell_item_sunwell_exalted_tank_neck'),
(45484,  'spell_item_sunwell_exalted_healer_neck'),
(57989,  'spell_pri_shadowfiend_death'),
(58642,  'spell_dk_glyph_of_scourge_strike'),
(58914,  'spell_hun_kill_command_pet'),
(37447,  'spell_mage_imp_mana_gems'),
(61062,  'spell_mage_imp_mana_gems'),
(52723,  'spell_gen_vampiric_touch'),
(60501,  'spell_gen_vampiric_touch'),
(63320,  'spell_warl_glyph_of_life_tap'),
(65032,  'spell_xt002_321_boombot_aura'),
(69755,  'spell_item_purified_shard_of_the_scale'),
(69739,  'spell_item_shiny_shard_of_the_scale'),
(71519,  'spell_item_deathbringers_will_normal'),
(71562,  'spell_item_deathbringers_will_heroic'),
