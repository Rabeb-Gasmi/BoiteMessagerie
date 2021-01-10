
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `usersend` int(11) NOT NULL,
  `userreceive` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datesend` varchar(255) NOT NULL,
  `sendread` int(11) NOT NULL,
  `receiveread` int(11) NOT NULL,
  `senddel` int(11) NOT NULL,
  `receivedel` int(11) NOT NULL,
  PRIMARY KEY (`idmessage`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



INSERT INTO `message` (`idmessage`, `usersend`, `userreceive`, `title`, `message`, `datesend`, `sendread`, `receiveread`, `senddel`, `receivedel`) VALUES
(1, 1, 2, 'hello', '              test1             ', '27/02/2019 09:02:36', 0, 0, 0, 0),
(2, 1, 2, 'hello', '     hello Mlle                       ', '06/03/2019 09:03:09', 0, 0, 0, 0),
(3, 1, 2, 'hello', '     hello Mlle                       ', '06/03/2019 09:03:40', 0, 0, 0, 0);

-- --------------------------------------------------------



DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `nameuser` varchar(255) NOT NULL,
  `prenomuser` varchar(255) NOT NULL,
  `emailuser` varchar(255) NOT NULL,
  `passworduser` varchar(255) NOT NULL,
  `dateaccess` varchar(255) NOT NULL,
  `etatuser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iduser`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `user` (`iduser`, `nameuser`, `prenomuser`, `emailuser`, `passworduser`, `dateaccess`, `etatuser`) VALUES
(1, 'Ben Salah', 'Ali', 'ali@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '05/11/2019 10:11:22', 1),
(2, 'Ben Salah', 'Aya', 'aya@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '06/03/2019 09:03:48', 1),
(3, 'Ben Salah', 'Lotfi', 'lotfi@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '', 1);
COMMIT;


