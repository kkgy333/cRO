CREATE TABLE IF NOT EXISTS `cp_woe_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `char_id` int(10) unsigned NOT NULL,
  `kills` int(11) NOT NULL default '0',
  `deaths` int(11) NOT NULL default '0',
  `best` bigint(20) unsigned NOT NULL default '0',
  `done` bigint(20) NOT NULL default '0',
  `received` bigint(20) NOT NULL default '0',
  `emperium1` bigint(20) unsigned NOT NULL default '0',
  `barricade1` bigint(20) unsigned NOT NULL default '0',
  `gstone1` bigint(20) unsigned NOT NULL default '0',
  `emperium2` int(10) unsigned NOT NULL default '0',
  `barricade2` int(10) unsigned NOT NULL default '0',
  `gstone2` int(10) unsigned NOT NULL default '0',
  `guardian1` bigint(20) unsigned NOT NULL default '0',
  `guardian2` int(10) unsigned NOT NULL default '0',
  `support1` int(10) unsigned NOT NULL default '0',
  `support2` int(10) unsigned NOT NULL default '0',
  `heal1` int(10) unsigned NOT NULL default '0',
  `heal2` int(10) unsigned NOT NULL default '0',
  `hp_potion` int(10) unsigned NOT NULL default '0',
  `sp_potion` int(10) unsigned NOT NULL default '0',
  `zeny` int(10) unsigned NOT NULL default '0',
  `yellow` int(10) unsigned NOT NULL default '0',
  `blue` int(10) unsigned NOT NULL default '0',
  `red` int(10) unsigned NOT NULL default '0',
  `arrow` int(10) unsigned NOT NULL default '0',
  `bottle` int(10) unsigned NOT NULL default '0',
  `edp` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  USING BTREE (`id`,`char_id`),
  KEY `FK_cp_woe_log_1` (`char_id`),
  CONSTRAINT `FK_cp_woe_log_1` FOREIGN KEY (`char_id`) REFERENCES `char` (`char_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;