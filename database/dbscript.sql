-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.20-community-nt

--
-- Create schema userdb
--

CREATE DATABASE  userdb;
USE userdb;

--
-- Table structure for table `userdb`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(20) NOT NULL default '',
  `password` varchar(30) NOT NULL default '',
  `realName` varchar(20) NOT NULL default '',
  `gender` tinyint(1) unsigned NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `tel` varchar(15) default NULL,
  `question` varchar(50) default NULL,
  `validateCode` varchar(20) NOT NULL default '',
  `answer` varchar(50) NOT NULL default '',
  `loginNum` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `Index_uid` USING BTREE (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

