CREATE TABLE IF NOT EXISTS `login` (
  `IdUser` int(11) NOT NULL auto_increment,
  `username` varchar(45) character set utf8 collate utf8_bin NOT NULL,
  `pass` int(45) NOT NULL,
  PRIMARY KEY  (`IdUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `photos` (
  `IdPhoto` int(11) NOT NULL auto_increment,
  `title` varchar(45) character set utf8 collate utf8_bin NOT NULL,
  `pass` int(45) NOT NULL,
  `IdUser` int(11) NOT NULL,
  PRIMARY KEY  (`IdPhoto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
