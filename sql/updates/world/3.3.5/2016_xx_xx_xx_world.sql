DELETE FROM `command` WHERE `name`='reload spell_proc_event';
DELETE FROM `spell_proc` WHERE `SpellId` IN (-11185, -48539, 24658, 28716, 28744, 32409, 37447, 61062);
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(-11185, 0, 3, 0x00000080, 0x00000000, 0x00000000,  65536, 0x1, 0x2, 0, 0, 0, 0, 0 ,0), -- Improved Blizzard
(-48539, 0, 7, 0x00000010, 0x04000000, 0x00000000, 262144, 0x2, 0x2, 0, 0, 0, 0, 0, 0), -- Revitalize
(24658,  0, 0, 0x00000000, 0x00000000, 0x00000000,  87376, 0x7, 0x2, 0, 0, 0, 0, 0, 0), -- Unstable Power
(28716,  0, 7, 0x00000010, 0x00000000, 0x00000000, 262144, 0x2, 0x2, 0, 0, 0, 0, 0, 0), -- Rejuvenation - Dreamwalker Raiment 2pc
(28744,  0, 7, 0x00000040, 0x00000000, 0x00000000, 278528, 0x2, 0x2, 0, 0, 0, 0, 0, 0), -- Regrowth - Dreamwalker Raiment 6pc
(32409,  0, 0, 0x00000000, 0x00002000, 0x00000000,      0, 0x1, 0x4, 0, 0, 0, 0, 0, 0), -- Shadow Word: Death - do not require honor target
(37447,  0, 3, 0x00000000, 0x00000100, 0x00000000,  16384, 0x4, 0x2, 0, 0, 0, 0, 0, 0), -- Improved Mana Gems
(61062,  0, 3, 0x00000000, 0x00000100, 0x00000000,  16384, 0x4, 0x2, 0, 0, 0, 0, 0, 0); -- Improved Mana Gems
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_mage_imp_blizzard','spell_item_unstable_power','spell_item_restless_strength','spell_dru_revitalize','spell_dru_t3_2p_bonus','spell_dru_t3_6p_bonus','spell_mage_imp_mana_gems');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-11185, 'spell_mage_imp_blizzard'),
(-48539, 'spell_dru_revitalize'),
(24658,  'spell_item_unstable_power'),
(24661,  'spell_item_restless_strength'),
(28716,  'spell_dru_t3_2p_bonus'),
(28744,  'spell_dru_t3_6p_bonus'),
(37447,  'spell_mage_imp_mana_gems'),
(61062,  'spell_mage_imp_mana_gems'),
