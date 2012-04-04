#---------------------------------------------------------------#
# Server OS: Darwin mr-mm.fritz.box 11.3.0 Darwin Kernel Version 11.3.0: Thu Jan 12 18:47:41 PST 2012; root:xnu-1699.24.23~1/RELEASE_X86_64 x86_64
#
# MySQL-Version: 5.1.42
#
# PHP-Version: 5.3.8
#
# Database: cms_new
#
# Time of backup: 2012-03-30 11:00
#---------------------------------------------------------------#

#---------------------------------------------------------------#
# Backup includes following tables:
#---------------------------------------------------------------#
# blogs
# calendars
# comments
# contents
# downloads
# gallery_albums
# gallery_files
# logs
# migrations
# newsletters
# sessions
# test_blogs
# test_calendars
# test_comments
# test_contents
# test_downloads
# test_gallery_albums
# test_gallery_files
# test_logs
# test_migrations
# test_projects
# test_sessions
# test_users
# users


#---------------------------------------------------------------#
# Table: blogs, Columns: 11
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
`id` smallint(5) NOT NULL,
`author_id` smallint(5) NOT NULL default '1',
`title` varchar(128) NOT NULL,
`teaser` varchar(256) default NULL,
`tags` varchar(128) default NULL,
`keywords` varchar(160) default NULL,
`content` text NOT NULL,
`language` varchar(2) NOT NULL default 'en',
`date` int(11) default NULL,
`date_modified` int(11) default NULL,
`published` tinyint(1) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE tags (`tags`)
) AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: blogs, Rows: 5
#---------------------------------------------------------------#
INSERT INTO `blogs` VALUES ('1','1','Testeintrag','Lorem ipsum dolor sit amet, consetetur sadipscing elitr Lorem ipsum dolor sit amet, consetetur sadipscing elitr','Kat','Schl','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>','en','1311688429','0','1');
INSERT INTO `blogs` VALUES ('2','1','Zweiter Testeintrag','Für diese Entscheidung hat Rechtsanwalt Helge Petersen gekämpft. Die Commerzbank muss einer geprellten KundinDie Commerzbank muss einer geprellten Kundin.','test, test2, test3, test4','','<p>Für diese Entscheidung hat Rechtsanwalt Helge Petersen gekämpft. Die Commerzbank muss einer geprellten Kundin nahezu den gesamten Anlagebetrag zurückzahlen und ihre Schrottpapiere zurückkaufen. Das wurde vom Kieler Landgericht offiziell protokolliert. „Die Commerzbank steht mit dem Rücken zur Wand“, so Helge Petersen. „Wer jetzt klagt, hat gute Aussichten, sein Geld zurückzubekommen.“</p>','en','1311694699','0','1');
INSERT INTO `blogs` VALUES ('4','1','Multivideo','test','test','test','<p>Der NDR berichtet erneut über den Commerzbank-Skandal...</p>
<p>[video]http://url2video.com/examples/Avatar.mp4[/video]</p>','en','1326358083','0','1');
INSERT INTO `blogs` VALUES ('225','1','Test\'s are great','test it\'s a test \'yeea\' &quot;&quot;','empuxa','','<p>[img]/upload/blog/photo_002.jpg[/img]</p>
<p>Ghffz fuhr ghvf</p>
<p><a>Google Maps</a></p>','en','1326361276','0','0');
INSERT INTO `blogs` VALUES ('231','1','test neu','','','','<p>dgdfgfdgdfgdfgdfgdgdgdfgdfgdsddfg sf sdf sdfsd</p>','de','1331731985','0','1');

#---------------------------------------------------------------#
# Table: calendars, Columns: 7
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `calendars`;
CREATE TABLE `calendars` (
`id` int(11) unsigned NOT NULL,
`author_id` int(11) NOT NULL,
`title` varchar(128) NOT NULL,
`content` text default NULL,
`date` int(11) default NULL,
`start_date` date NOT NULL,
`end_date` date default NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: calendars, Rows: 6
#---------------------------------------------------------------#
INSERT INTO `calendars` VALUES ('1','1','Namespace Testasdas','sdsdf','1321350553','2011-12-20','2011-12-23');
INSERT INTO `calendars` VALUES ('2','0','Title','Content','1323349002','0000-00-00','0000-00-00');
INSERT INTO `calendars` VALUES ('3','0','Title','Content','1323349030','0000-00-00','0000-00-00');
INSERT INTO `calendars` VALUES ('4','0','Title','Content','1323349081','0000-00-00','0000-00-00');
INSERT INTO `calendars` VALUES ('134','1','Mein neuer Titel für die Seite','Beschreibung','1323962587','2012-12-12','0000-00-00');
INSERT INTO `calendars` VALUES ('186','1','Noch ein Test','asdjaso jsjaos djaosijd asiojd oiasjd ioajaios','1323962587','2012-02-28','2012-02-29');

#---------------------------------------------------------------#
# Table: comments, Columns: 9
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
`id` int(9) NOT NULL,
`parent_id` int(9) NOT NULL,
`author_id` smallint(5) NOT NULL,
`author_facebook_id` int(15) default NULL,
`author_name` varchar(32) default NULL,
`author_email` varchar(64) default NULL,
`author_ip` varchar(15) default NULL,
`content` text NOT NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE parentID (`parent_id`)
) AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: comments, Rows: 28
#---------------------------------------------------------------#
INSERT INTO `comments` VALUES ('87','1','1','0','','marco@empuxa.com','127.0.0.1','rwar','1311690324');
INSERT INTO `comments` VALUES ('89','1','1','0','','marco@empuxa.com','127.0.0.1','test','1313502501');
INSERT INTO `comments` VALUES ('92','2','0','0','Marco','marco@empuxa.com','127.0.0.1','sdfsdfs','1315494894');
INSERT INTO `comments` VALUES ('96','1','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
test
[/quote]
[quote=Marco Raddatz]
rwar
[/quote]
[quote=Marco Raddatz]
test
[/quote]
[quote=Marco Raddatz]
rwar
[/quote]','1320940754');
INSERT INTO `comments` VALUES ('97','4','1','0','','marco@empuxa.com','127.0.0.1','test','1322758811');
INSERT INTO `comments` VALUES ('98','4','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
test
[/quote]','1322822972');
INSERT INTO `comments` VALUES ('99','2','0','0','Ghjnb','','192.168.178.73','[quote=Marco]
sdfsdfs
[/quote]','1322823319');
INSERT INTO `comments` VALUES ('314','4','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]&lt;blockquote&gt;&lt;h4&gt;Quote by Marco Raddatz&lt;/h4&gt;
&lt;blockquote&gt;&lt;h4&gt;Zitat von Marco Raddatz&lt;/h4&gt;
test
&lt;/blockquote&gt;
&lt;/blockquote&gt;[/quote]','1329403580');
INSERT INTO `comments` VALUES ('101','4','1','0','','marco@empuxa.com','127.0.0.1','test','1323186217');
INSERT INTO `comments` VALUES ('102','1','9','0','','maaa@planetk4.de','127.0.0.1','[quote=Marco Raddatz]
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
test
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
rwar
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
test
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
rwar
&lt;/blockquote&gt;
[/quote]','1323265019');
INSERT INTO `comments` VALUES ('104','0','0','0','Test','test@example.com','','Test','1323346990');
INSERT INTO `comments` VALUES ('105','0','0','0','Test','test@example.com','','Test','1323347165');
INSERT INTO `comments` VALUES ('110','0','0','0','Name','email@example.com','','Content','1323347601');
INSERT INTO `comments` VALUES ('111','0','0','0','Name','email@example.com','','Content','1323347622');
INSERT INTO `comments` VALUES ('254','4','0','0','Test','','127.0.0.1','test','1323863019');
INSERT INTO `comments` VALUES ('255','4','0','0','test','','127.0.0.1','test','1323863064');
INSERT INTO `comments` VALUES ('259','4','0','1130922727','Marco Raddatz','facebook@marcoraddatz.com','127.0.0.1','test','1323943487');
INSERT INTO `comments` VALUES ('260','4','1','0','','marco@empuxa.com','127.0.0.1','test','1324048577');
INSERT INTO `comments` VALUES ('307','225','1','0','','marco@empuxa.com','127.0.0.1','Test','1326187127');
INSERT INTO `comments` VALUES ('308','225','0','0','Marco Raddatz','marco@empuxa.com','127.0.0.1','Test','1326187151');
INSERT INTO `comments` VALUES ('313','4','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
&lt;blockquote&gt;&lt;h4&gt;Zitat von Marco Raddatz&lt;/h4&gt;
test
&lt;/blockquote&gt;
[/quote]','1329303450');
INSERT INTO `comments` VALUES ('321','225','1','0','','marco@empuxa.com','127.0.0.1','test','1332420497');
INSERT INTO `comments` VALUES ('316','4','0','0','test','','127.0.0.1','test','1331230797');
INSERT INTO `comments` VALUES ('317','1','1','0','test','','127.0.0.1','test','1331549088');
INSERT INTO `comments` VALUES ('318','4','0','0','kdjsfhs','','127.0.0.1','sdofjsdoifj','1331813878');
INSERT INTO `comments` VALUES ('320','1','0','0','Name','','127.0.0.1','Test','1331822682');
INSERT INTO `comments` VALUES ('322','666','0','0','Name','email@example.com','','Content','1332517687');
INSERT INTO `comments` VALUES ('326','1','0','0','Name','','127.0.0.1','hello without email adress','1332844217');

#---------------------------------------------------------------#
# Table: contents, Columns: 8
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
`id` int(11) NOT NULL,
`author_id` smallint(5) NOT NULL default '1',
`title` varchar(128) NOT NULL,
`teaser` varchar(256) default NULL,
`content` text NOT NULL,
`keywords` varchar(160) default NULL,
`date` int(11) NOT NULL,
`published` tinyint(1) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: contents, Rows: 5
#---------------------------------------------------------------#
INSERT INTO `contents` VALUES ('1','1','Impressum','','<p><!-- pagebreak -->Test!asdas<img title=\"Verschlossen\" src=\"lib/tiny_mce/plugins/emotions/img/smiley-sealed.gif\" alt=\"Verschlossen\" width=\"18\" height=\"18\" />dsfdsfsfsdfs</p>
<p>fsd</p>
<p>fds</p>
<p>fds</p>
<p>fsdfsd<!-- pagebreak -->dfsdfsdfs</p>','','1324313171','0');
INSERT INTO `contents` VALUES ('2','1','Infos zur Registration','','<p>Neben dem [site=/Disclaimer]Disclaimer[/site] gibt es noch folgendes zu sagen: 1. Das Angebot ist kostenlos. Haftung für Schäden aller Art wird generell nicht übernommen, ebenso gibt es keine Gewährleistungspflicht der Verfügbarkeit unseres Angebots gegenüber unseren Benutzern. 2. Private Daten werden von uns niemals weitergegeben werden. Alle Passwörter sind zudem verschlüsselt gespeichert und somit auch für uns nicht einsehbar. 3. Der Account kann ganz einfach per Mail gelöscht werden. Einfach eine E-Mail mit dem Betreff \"DELETE\" und des Usernamens, sowie der UserID an devdelete [at] planetk4 [dot] de schicken.</p>','','1324479262','1');
INSERT INTO `contents` VALUES ('3','1','Über diese Seite','','<p>[video]http://phpcms.localhost/upload/media/1212436323850.mp4[/video]</p>','','1331231572','1');
INSERT INTO `contents` VALUES ('150','1','Namespace Testt','test','<p>test</p>','test','1324480475','0');
INSERT INTO `contents` VALUES ('151','1','Namespace Testt','test','<p>test</p>','test','1324480506','0');

#---------------------------------------------------------------#
# Table: downloads, Columns: 9
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
`id` int(11) unsigned NOT NULL,
`author_id` smallint(5) NOT NULL,
`title` varchar(128) NOT NULL,
`content` text default NULL,
`category` varchar(128) default NULL,
`file` varchar(64) NOT NULL,
`extension` varchar(4) NOT NULL,
`downloads` int(11) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: downloads, Rows: 3
#---------------------------------------------------------------#
INSERT INTO `downloads` VALUES ('8','1','','','PDF','pdf.pdf','pdf','5','1313511167');
INSERT INTO `downloads` VALUES ('9','1','test3','','PDF','nur_ein_test.jpg','jpg','11','1313512091');
INSERT INTO `downloads` VALUES ('11','1','','asdasdjp asdjop asjdpoaj japsdj paosjo dpojpaj +agj opsdj gposad','rest','butt2.jpg','jpg','14','1313578313');

#---------------------------------------------------------------#
# Table: gallery_albums, Columns: 5
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `gallery_albums`;
CREATE TABLE `gallery_albums` (
`id` smallint(5) NOT NULL,
`author_id` smallint(5) NOT NULL,
`title` varchar(50) NOT NULL,
`content` varchar(160) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: gallery_albums, Rows: 3
#---------------------------------------------------------------#
INSERT INTO `gallery_albums` VALUES ('168','1','test','asdfsdf','1326212379');
INSERT INTO `gallery_albums` VALUES ('174','1','asdas','','1331815816');
INSERT INTO `gallery_albums` VALUES ('172','1','test2','test3','1331058875');

#---------------------------------------------------------------#
# Table: gallery_files, Columns: 7
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `gallery_files`;
CREATE TABLE `gallery_files` (
`id` int(9) NOT NULL,
`album_id` smallint(5) NOT NULL,
`author_id` smallint(5) NOT NULL,
`content` varchar(160) default NULL,
`file` varchar(64) NOT NULL,
`extension` varchar(4) NOT NULL default 'jpg',
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: gallery_files, Rows: 31
#---------------------------------------------------------------#
INSERT INTO `gallery_files` VALUES ('256','172','1','','170df96acb5f2d0d0ff2a3cc1f5299d8.jpg','jpg','1332257165');
INSERT INTO `gallery_files` VALUES ('255','172','1','','e73c57da5ca128a9b35aa1c27f0dd4a9.jpg','jpg','1332257165');
INSERT INTO `gallery_files` VALUES ('243','168','1','test mich123','35f4a8d465e6e1edc05f3d8ab658c551.png','png','1326280247');
INSERT INTO `gallery_files` VALUES ('93','0','0','Content','test.test','test','1323352985');
INSERT INTO `gallery_files` VALUES ('94','0','0','Content','test.test','test','1323353004');
INSERT INTO `gallery_files` VALUES ('95','0','0','Content','test.test','test','1323353154');
INSERT INTO `gallery_files` VALUES ('98','0','0','Content','test.test','test','1323353285');
INSERT INTO `gallery_files` VALUES ('99','0','0','Content','test.test','test','1323353504');
INSERT INTO `gallery_files` VALUES ('100','0','0','Content','test.test','test','1323353559');
INSERT INTO `gallery_files` VALUES ('101','0','0','Content','test.test','test','1323353701');
INSERT INTO `gallery_files` VALUES ('102','0','0','Content','test.test','test','1323353768');
INSERT INTO `gallery_files` VALUES ('103','0','0','Content','test.test','test','1323353811');
INSERT INTO `gallery_files` VALUES ('104','0','0','Content','test.test','test','1323354394');
INSERT INTO `gallery_files` VALUES ('105','0','0','Content','test.test','test','1323354409');
INSERT INTO `gallery_files` VALUES ('106','0','0','Content','test.test','test','1323354428');
INSERT INTO `gallery_files` VALUES ('107','0','0','Content','test.test','test','1323354465');
INSERT INTO `gallery_files` VALUES ('108','0','0','Content','test.test','test','1323354572');
INSERT INTO `gallery_files` VALUES ('109','0','0','Content','test.test','test','1323354607');
INSERT INTO `gallery_files` VALUES ('110','0','0','Content','test.test','test','1323354643');
INSERT INTO `gallery_files` VALUES ('111','0','0','Content','test.test','test','1323354657');
INSERT INTO `gallery_files` VALUES ('112','0','0','Content','test.test','test','1323354678');
INSERT INTO `gallery_files` VALUES ('113','0','0','Content','test.test','test','1323354718');
INSERT INTO `gallery_files` VALUES ('114','0','0','Content','test.test','test','1323354867');
INSERT INTO `gallery_files` VALUES ('115','0','0','Content','test.test','test','1323354962');
INSERT INTO `gallery_files` VALUES ('116','0','0','Content','test.test','test','1323355110');
INSERT INTO `gallery_files` VALUES ('117','0','0','Content','test.test','test','1323355165');
INSERT INTO `gallery_files` VALUES ('118','0','0','Content','test.test','test','1323355212');
INSERT INTO `gallery_files` VALUES ('119','0','0','Content','test.test','test','1323355232');
INSERT INTO `gallery_files` VALUES ('120','0','0','Content','test.test','test','1323355323');
INSERT INTO `gallery_files` VALUES ('121','0','0','Content','test.test','test','1323355500');
INSERT INTO `gallery_files` VALUES ('241','0','0','Content','test.test','test','1326193127');

#---------------------------------------------------------------#
# Table: logs, Columns: 7
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
`id` int(11) NOT NULL,
`controller_name` varchar(32) NOT NULL default 'NOT NULL',
`action_name` varchar(16) NOT NULL,
`action_id` smallint(6) default NULL,
`time_start` int(11) default NULL,
`time_end` int(11) default NULL,
`user_id` smallint(6) default NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=1509 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: logs, Rows: 1318
#---------------------------------------------------------------#
INSERT INTO `logs` VALUES ('1','cronjob','create','0','1289832867','1289832867','0');
INSERT INTO `logs` VALUES ('2','gallery','create','1','1289833152','1289833152','1');
INSERT INTO `logs` VALUES ('3','cronjob','create','0','1290011261','1290011262','0');
INSERT INTO `logs` VALUES ('4','cronjob','create','0','1294239086','1294239087','0');
INSERT INTO `logs` VALUES ('5','cronjob','create','0','1296918262','1296918262','0');
INSERT INTO `logs` VALUES ('6','cronjob','create','0','1297176545','1297176554','0');
INSERT INTO `logs` VALUES ('7','cronjob','create','0','1297446488','1297446489','0');
INSERT INTO `logs` VALUES ('8','gallery','create','2','1297447166','1297447166','1');
INSERT INTO `logs` VALUES ('9','user','create','2','1297450815','1297450815','1');
INSERT INTO `logs` VALUES ('10','cronjob','create','0','1299850551','1299850552','0');
INSERT INTO `logs` VALUES ('11','user','destroy','0','1299850729','1299850729','1');
INSERT INTO `logs` VALUES ('12','user','destroy','0','1299850737','1299850737','1');
INSERT INTO `logs` VALUES ('13','blog','create','1','1299851791','1299851791','1');
INSERT INTO `logs` VALUES ('14','blog','update','1','1299852296','1299852296','1');
INSERT INTO `logs` VALUES ('15','blog','update','1','1299852370','1299852370','1');
INSERT INTO `logs` VALUES ('16','blog','update','1','1299852803','1299852803','1');
INSERT INTO `logs` VALUES ('17','blog','update','1','1299854479','1299854479','1');
INSERT INTO `logs` VALUES ('18','blog','update','1','1299854731','1299854731','1');
INSERT INTO `logs` VALUES ('19','blog','update','1','1299854749','1299854749','1');
INSERT INTO `logs` VALUES ('20','blog','update','1','1299856610','1299856610','1');
INSERT INTO `logs` VALUES ('21','blog','update','1','1299856681','1299856681','1');
INSERT INTO `logs` VALUES ('22','blog','update','1','1299857035','1299857035','1');
INSERT INTO `logs` VALUES ('23','blog','update','1','1299857102','1299857102','1');
INSERT INTO `logs` VALUES ('24','blog','update','1','1299857576','1299857576','1');
INSERT INTO `logs` VALUES ('25','cronjob','create','0','1300096975','1300096977','1');
INSERT INTO `logs` VALUES ('26','cronjob','create','0','1300185922','1300185923','0');
INSERT INTO `logs` VALUES ('27','cronjob','create','0','1301063257','1301063258','0');
INSERT INTO `logs` VALUES ('28','user','update','1','1301063937','1301063937','1');
INSERT INTO `logs` VALUES ('29','blog','update','1','1301064006','1301064006','1');
INSERT INTO `logs` VALUES ('30','cronjob','create','0','1301306900','1301306902','0');
INSERT INTO `logs` VALUES ('31','cronjob','create','0','1301478623','1301478624','0');
INSERT INTO `logs` VALUES ('32','cronjob','create','0','1302260155','1302260157','0');
INSERT INTO `logs` VALUES ('33','comment','create','1','1302267081','1302267081','1');
INSERT INTO `logs` VALUES ('34','cronjob','create','0','1302529229','1302529229','0');
INSERT INTO `logs` VALUES ('35','cronjob','create','0','1304601586','1304601586','0');
INSERT INTO `logs` VALUES ('36','cronjob','create','0','1304601610','1304601610','0');
INSERT INTO `logs` VALUES ('37','cronjob','create','0','1304601610','1304601611','0');
INSERT INTO `logs` VALUES ('38','cronjob','create','0','1304601622','1304601622','0');
INSERT INTO `logs` VALUES ('39','cronjob','create','0','1304601622','1304601622','0');
INSERT INTO `logs` VALUES ('40','cronjob','create','0','1304690128','1304690129','0');
INSERT INTO `logs` VALUES ('41','cronjob','create','0','1304931215','1304931229','0');
INSERT INTO `logs` VALUES ('42','gallery','destroy','1','1304950283','1304950283','1');
INSERT INTO `logs` VALUES ('43','gallery','create','3','1304950292','1304950292','1');
INSERT INTO `logs` VALUES ('44','gallery','createfile','3','1304950388','1304950388','1');
INSERT INTO `logs` VALUES ('45','blog','update','1','1304950450','1304950450','1');
INSERT INTO `logs` VALUES ('46','blog','update','1','1304950530','1304950530','1');
INSERT INTO `logs` VALUES ('47','comment','create','2','1304950570','1304950570','1');
INSERT INTO `logs` VALUES ('48','content','update','3','1304950656','1304950656','1');
INSERT INTO `logs` VALUES ('49','blog','update','1','1304950688','1304950688','1');
INSERT INTO `logs` VALUES ('50','blog','create','2','1304950757','1304950757','1');
INSERT INTO `logs` VALUES ('51','gallery','createfile','3','1304951049','1304951049','1');
INSERT INTO `logs` VALUES ('52','gallery','createfile','3','1304951491','1304951491','1');
INSERT INTO `logs` VALUES ('53','cronjob','create','0','1305018266','1305018267','0');
INSERT INTO `logs` VALUES ('54','cronjob','create','0','1305111608','1305111610','0');
INSERT INTO `logs` VALUES ('55','cronjob','create','0','1305198712','1305198713','0');
INSERT INTO `logs` VALUES ('56','cronjob','create','0','1305198712','1305198713','0');
INSERT INTO `logs` VALUES ('57','cronjob','create','0','1305198712','1305198714','0');
INSERT INTO `logs` VALUES ('58','cronjob','create','0','1305198712','1305198714','0');
INSERT INTO `logs` VALUES ('59','cronjob','create','0','1305630923','1305630924','0');
INSERT INTO `logs` VALUES ('60','cronjob','create','0','1305630923','1305630924','0');
INSERT INTO `logs` VALUES ('61','cronjob','create','0','1310991784','1310991785','0');
INSERT INTO `logs` VALUES ('62','cronjob','create','0','1311422896','1311422899','0');
INSERT INTO `logs` VALUES ('63','cronjob','create','0','1311612179','1311612181','0');
INSERT INTO `logs` VALUES ('64','blog','create','1','1311688429','1311688429','1');
INSERT INTO `logs` VALUES ('65','comment','create','1','1311690324','1311690324','1');
INSERT INTO `logs` VALUES ('66','blog','update','1','1311691010','1311691010','1');
INSERT INTO `logs` VALUES ('67','blog','create','2','1311694699','1311694699','1');
INSERT INTO `logs` VALUES ('68','comment','create','88','1311695809','1311695809','0');
INSERT INTO `logs` VALUES ('69','cronjob','create','0','1311699499','1311699500','0');
INSERT INTO `logs` VALUES ('70','blog','update','2','1313162643','1313162643','1');
INSERT INTO `logs` VALUES ('71','blog','update','2','1313162650','1313162650','1');
INSERT INTO `logs` VALUES ('72','blog','update','2','1313162697','1313162697','1');
INSERT INTO `logs` VALUES ('73','blog','update','2','1313162725','1313162725','1');
INSERT INTO `logs` VALUES ('74','blog','update','2','1313420743','1313420743','1');
INSERT INTO `logs` VALUES ('75','blog','update','2','1313420768','1313420768','1');
INSERT INTO `logs` VALUES ('76','blog','update','2','1313420815','1313420815','1');
INSERT INTO `logs` VALUES ('77','cronjob','create','0','1313420846','1313420847','0');
INSERT INTO `logs` VALUES ('78','cronjob','create','0','1313420966','1313420966','0');
INSERT INTO `logs` VALUES ('79','cronjob','create','0','1313421025','1313421026','0');
INSERT INTO `logs` VALUES ('80','cronjob','create','0','1313421052','1313421052','0');
INSERT INTO `logs` VALUES ('81','cronjob','create','0','1313421270','1313421270','0');
INSERT INTO `logs` VALUES ('82','gallery','createfile','3','1313493382','1313493382','1');
INSERT INTO `logs` VALUES ('83','gallery','createfile','3','1313498993','1313498993','1');
INSERT INTO `logs` VALUES ('84','gallery','createfile','3','1313499017','1313499017','1');
INSERT INTO `logs` VALUES ('85','download','create','1','1313501400','1313501400','1');
INSERT INTO `logs` VALUES ('86','download','create','2','1313501826','1313501826','1');
INSERT INTO `logs` VALUES ('87','comment','destroy','88','1313502315','1313502315','1');
INSERT INTO `logs` VALUES ('88','comment','create','88','1313502501','1313502501','1');
INSERT INTO `logs` VALUES ('89','comment','create','90','1313502555','1313502555','1');
INSERT INTO `logs` VALUES ('90','download','create','3','1313506465','1313506465','1');
INSERT INTO `logs` VALUES ('91','download','destroy','1','1313510296','1313510296','1');
INSERT INTO `logs` VALUES ('92','download','destroy','3','1313510309','1313510309','1');
INSERT INTO `logs` VALUES ('93','download','destroy','2','1313510410','1313510410','1');
INSERT INTO `logs` VALUES ('94','download','create','4','1313510461','1313510461','1');
INSERT INTO `logs` VALUES ('95','download','destroy','4','1313510572','1313510572','1');
INSERT INTO `logs` VALUES ('96','download','create','5','1313510585','1313510585','1');
INSERT INTO `logs` VALUES ('97','download','destroy','5','1313510589','1313510589','1');
INSERT INTO `logs` VALUES ('98','download','create','6','1313510652','1313510652','1');
INSERT INTO `logs` VALUES ('99','download','create','7','1313510672','1313510672','1');
INSERT INTO `logs` VALUES ('100','download','create','8','1313511167','1313511167','1');
INSERT INTO `logs` VALUES ('101','download','create','9','1313512091','1313512091','1');
INSERT INTO `logs` VALUES ('102','download','destroy','7','1313573888','1313573888','1');
INSERT INTO `logs` VALUES ('103','download','create','10','1313573924','1313573924','1');
INSERT INTO `logs` VALUES ('104','download','update','10','1313576339','1313576339','1');
INSERT INTO `logs` VALUES ('105','download','update','10','1313576354','1313576354','1');
INSERT INTO `logs` VALUES ('106','download','create','11','1313578313','1313578313','1');
INSERT INTO `logs` VALUES ('107','download','create','12','1313579086','1313579086','1');
INSERT INTO `logs` VALUES ('108','download','update','11','1313579133','1313579133','1');
INSERT INTO `logs` VALUES ('109','download','update','12','1313579156','1313579156','1');
INSERT INTO `logs` VALUES ('110','download','destroy','12','1313579167','1313579167','1');
INSERT INTO `logs` VALUES ('111','cronjob','create','0','1313752613','1313752614','0');
INSERT INTO `logs` VALUES ('112','blog','create','0','1315493825','1315493825','1');
INSERT INTO `logs` VALUES ('113','blog','update','2','1315493833','1315493833','1');
INSERT INTO `logs` VALUES ('114','blog','create','0','1315494188','1315494188','1');
INSERT INTO `logs` VALUES ('115','blog','create','0','1315494199','1315494199','1');
INSERT INTO `logs` VALUES ('116','blog','create','3','1315494199','1315494199','1');
INSERT INTO `logs` VALUES ('117','blog','update','3','1315494204','1315494204','1');
INSERT INTO `logs` VALUES ('118','blog','update','3','1315494219','1315494219','1');
INSERT INTO `logs` VALUES ('119','blog','update','3','1315494219','1315494219','1');
INSERT INTO `logs` VALUES ('120','blog','update','3','1315494222','1315494222','1');
INSERT INTO `logs` VALUES ('121','blog','destroy','3','1315494232','1315494232','1');
INSERT INTO `logs` VALUES ('122','blog','destroy','3','1315494232','1315494232','1');
INSERT INTO `logs` VALUES ('123','comment','create','91','1315494244','1315494244','1');
INSERT INTO `logs` VALUES ('124','comment','destroy','91','1315494248','1315494248','1');
INSERT INTO `logs` VALUES ('125','comment','destroy','91','1315494248','1315494248','1');
INSERT INTO `logs` VALUES ('126','gallery','create','0','1315494255','1315494255','1');
INSERT INTO `logs` VALUES ('127','gallery','create','0','1315494261','1315494261','1');
INSERT INTO `logs` VALUES ('128','gallery','create','4','1315494262','1315494262','1');
INSERT INTO `logs` VALUES ('129','gallery','update','4','1315494265','1315494265','1');
INSERT INTO `logs` VALUES ('130','gallery','update','4','1315494274','1315494274','1');
INSERT INTO `logs` VALUES ('131','gallery','update','4','1315494274','1315494274','1');
INSERT INTO `logs` VALUES ('132','gallery','createfile','4','1315494287','1315494287','1');
INSERT INTO `logs` VALUES ('133','gallery','updatefile','44','1315494294','1315494294','1');
INSERT INTO `logs` VALUES ('134','gallery','destroyfile','44','1315494300','1315494300','1');
INSERT INTO `logs` VALUES ('135','gallery','update','4','1315494304','1315494304','1');
INSERT INTO `logs` VALUES ('136','gallery','destroy','4','1315494307','1315494307','1');
INSERT INTO `logs` VALUES ('137','gallery','destroy','4','1315494307','1315494307','1');
INSERT INTO `logs` VALUES ('138','download','create','0','1315494313','1315494313','1');
INSERT INTO `logs` VALUES ('139','download','create','0','1315494326','1315494326','1');
INSERT INTO `logs` VALUES ('140','download','create','0','1315494336','1315494336','1');
INSERT INTO `logs` VALUES ('141','download','create','0','1315494375','1315494375','1');
INSERT INTO `logs` VALUES ('142','download','create','13','1315494375','1315494375','1');
INSERT INTO `logs` VALUES ('143','download','update','13','1315494379','1315494379','1');
INSERT INTO `logs` VALUES ('144','download','update','13','1315494386','1315494386','1');
INSERT INTO `logs` VALUES ('145','download','update','13','1315494390','1315494390','1');
INSERT INTO `logs` VALUES ('146','download','update','13','1315494400','1315494400','1');
INSERT INTO `logs` VALUES ('147','download','update','13','1315494431','1315494431','1');
INSERT INTO `logs` VALUES ('148','download','update','13','1315494431','1315494431','1');
INSERT INTO `logs` VALUES ('149','download','destroy','13','1315494438','1315494438','1');
INSERT INTO `logs` VALUES ('150','download','destroy','13','1315494438','1315494438','1');
INSERT INTO `logs` VALUES ('151','user','update','1','1315494455','1315494455','1');
INSERT INTO `logs` VALUES ('152','comment','create','91','1315494894','1315494894','0');
INSERT INTO `logs` VALUES ('153','user','update','1','1315497470','1315497470','1');
INSERT INTO `logs` VALUES ('154','user','create','3','1315497583','1315497583','1');
INSERT INTO `logs` VALUES ('155','newsletter','create','0','1315498139','1315498139','1');
INSERT INTO `logs` VALUES ('156','blog','update','1','1315823023','1315823023','1');
INSERT INTO `logs` VALUES ('157','blog','create','0','1315824832','1315824832','1');
INSERT INTO `logs` VALUES ('158','comment','create','93','1315825245','1315825245','1');
INSERT INTO `logs` VALUES ('159','blog','update','2','1315826407','1315826407','1');
INSERT INTO `logs` VALUES ('160','gallery','create','0','1315832922','1315832922','1');
INSERT INTO `logs` VALUES ('161','blog','update','2','1315833055','1315833055','1');
INSERT INTO `logs` VALUES ('162','blog','update','2','1315833070','1315833070','1');
INSERT INTO `logs` VALUES ('163','blog','update','2','1315833070','1315833070','1');
INSERT INTO `logs` VALUES ('164','gallery','update','3','1316184419','1316184419','1');
INSERT INTO `logs` VALUES ('165','gallery','update','3','1316184441','1316184441','1');
INSERT INTO `logs` VALUES ('166','gallery','update','3','1316184456','1316184456','1');
INSERT INTO `logs` VALUES ('167','gallery','update','3','1316184468','1316184468','1');
INSERT INTO `logs` VALUES ('168','cronjob','create','0','1318433777','1318433786','0');
INSERT INTO `logs` VALUES ('169','cronjob','create','0','1318502943','1318502945','0');
INSERT INTO `logs` VALUES ('170','cronjob','create','0','1318503808','1318503808','0');
INSERT INTO `logs` VALUES ('171','cronjob','create','0','1318503821','1318503821','0');
INSERT INTO `logs` VALUES ('172','download','create','0','1318862727','1318862727','1');
INSERT INTO `logs` VALUES ('173','blog','update','2','1318863494','1318863494','1');
INSERT INTO `logs` VALUES ('174','blog','update','2','1318863527','1318863527','1');
INSERT INTO `logs` VALUES ('175','blog','update','2','1318863664','1318863664','1');
INSERT INTO `logs` VALUES ('176','blog','update','2','1318863684','1318863684','1');
INSERT INTO `logs` VALUES ('177','blog','update','2','1318863689','1318863689','1');
INSERT INTO `logs` VALUES ('178','blog','update','2','1318863711','1318863711','1');
INSERT INTO `logs` VALUES ('179','blog','update','2','1318863764','1318863764','1');
INSERT INTO `logs` VALUES ('180','blog','update','2','1318863783','1318863783','1');
INSERT INTO `logs` VALUES ('181','content','create','0','1319034005','1319034005','1');
INSERT INTO `logs` VALUES ('182','download','create','0','1319034346','1319034346','1');
INSERT INTO `logs` VALUES ('183','download','create','0','1319034372','1319034372','1');
INSERT INTO `logs` VALUES ('184','download','create','0','1319034383','1319034383','1');
INSERT INTO `logs` VALUES ('185','download','create','0','1319034400','1319034400','1');
INSERT INTO `logs` VALUES ('186','download','create','0','1319034463','1319034463','1');
INSERT INTO `logs` VALUES ('187','download','create','0','1319034504','1319034504','1');
INSERT INTO `logs` VALUES ('188','download','update','6','1319034513','1319034513','1');
INSERT INTO `logs` VALUES ('189','blog','update','2','1319034526','1319034526','1');
INSERT INTO `logs` VALUES ('190','blog','create','0','1319034700','1319034700','1');
INSERT INTO `logs` VALUES ('191','blog','create','0','1319034744','1319034744','1');
INSERT INTO `logs` VALUES ('192','blog','create','0','1319034806','1319034806','1');
INSERT INTO `logs` VALUES ('193','blog','create','0','1319034839','1319034839','1');
INSERT INTO `logs` VALUES ('194','blog','create','0','1319034839','1319034839','1');
INSERT INTO `logs` VALUES ('195','blog','update','2','1319034845','1319034845','1');
INSERT INTO `logs` VALUES ('196','blog','update','2','1319034858','1319034858','1');
INSERT INTO `logs` VALUES ('197','blog','update','2','1319034886','1319034886','1');
INSERT INTO `logs` VALUES ('198','blog','update','2','1319034947','1319034947','1');
INSERT INTO `logs` VALUES ('199','content','update','3','1319034959','1319034959','1');
INSERT INTO `logs` VALUES ('200','content','update','3','1319034989','1319034989','1');
INSERT INTO `logs` VALUES ('201','content','update','3','1319035093','1319035093','1');
INSERT INTO `logs` VALUES ('202','content','update','3','1319035118','1319035118','1');
INSERT INTO `logs` VALUES ('203','content','update','3','1319035143','1319035143','1');
INSERT INTO `logs` VALUES ('204','content','update','3','1319035179','1319035179','1');
INSERT INTO `logs` VALUES ('205','gallery','update','3','1319035392','1319035392','1');
INSERT INTO `logs` VALUES ('206','gallery','update','3','1319035418','1319035418','1');
INSERT INTO `logs` VALUES ('207','gallery','update','3','1319035435','1319035435','1');
INSERT INTO `logs` VALUES ('208','gallery','update','3','1319035458','1319035458','1');
INSERT INTO `logs` VALUES ('209','gallery','update','3','1319035507','1319035507','1');
INSERT INTO `logs` VALUES ('210','gallery','update','3','1319035514','1319035514','1');
INSERT INTO `logs` VALUES ('211','gallery','update','3','1319035550','1319035550','1');
INSERT INTO `logs` VALUES ('212','gallery','update','3','1319035555','1319035555','1');
INSERT INTO `logs` VALUES ('213','gallery','update','3','1319035574','1319035574','1');
INSERT INTO `logs` VALUES ('214','gallery','update','3','1319035599','1319035599','1');
INSERT INTO `logs` VALUES ('215','gallery','update','3','1319035620','1319035620','1');
INSERT INTO `logs` VALUES ('216','blog','update','2','1319036454','1319036454','1');
INSERT INTO `logs` VALUES ('217','blog','create','0','1319036531','1319036531','1');
INSERT INTO `logs` VALUES ('218','blog','create','0','1319036548','1319036548','1');
INSERT INTO `logs` VALUES ('219','blog','create','4','1319036548','1319036548','1');
INSERT INTO `logs` VALUES ('220','blog','update','4','1319036968','1319036968','1');
INSERT INTO `logs` VALUES ('221','blog','update','4','1319037003','1319037003','1');
INSERT INTO `logs` VALUES ('222','blog','update','4','1319037003','1319037003','1');
INSERT INTO `logs` VALUES ('223','blog','create','0','1319102182','1319102182','1');
INSERT INTO `logs` VALUES ('224','blog','create','0','1319189517','1319189517','1');
INSERT INTO `logs` VALUES ('225','blog','create','0','1319189631','1319189631','1');
INSERT INTO `logs` VALUES ('226','blog','create','0','1319189675','1319189675','1');
INSERT INTO `logs` VALUES ('227','blog','create','0','1319189695','1319189695','1');
INSERT INTO `logs` VALUES ('228','blog','create','0','1319189714','1319189714','1');
INSERT INTO `logs` VALUES ('229','blog','create','0','1319189749','1319189749','1');
INSERT INTO `logs` VALUES ('230','blog','create','0','1319189772','1319189772','1');
INSERT INTO `logs` VALUES ('231','blog','create','0','1320144497','1320144497','1');
INSERT INTO `logs` VALUES ('232','blog','create','0','1320144519','1320144519','1');
INSERT INTO `logs` VALUES ('233','mail','create','1','1320144637','1320144637','0');
INSERT INTO `logs` VALUES ('234','comment','create','94','1320145581','1320145581','1');
INSERT INTO `logs` VALUES ('235','comment','create','95','1320145616','1320145616','0');
INSERT INTO `logs` VALUES ('236','mail','create','1','1320145799','1320145799','0');
INSERT INTO `logs` VALUES ('237','mail','create','1','1320146058','1320146058','0');
INSERT INTO `logs` VALUES ('238','gallery','createfile','2','1320147643','1320147643','1');
INSERT INTO `logs` VALUES ('239','gallery','createfile','2','1320147657','1320147657','1');
INSERT INTO `logs` VALUES ('240','gallery','createfile','2','1320147747','1320147747','1');
INSERT INTO `logs` VALUES ('241','gallery','destroyfile','45','1320147751','1320147751','1');
INSERT INTO `logs` VALUES ('242','gallery','destroyfile','46','1320147761','1320147761','1');
INSERT INTO `logs` VALUES ('243','gallery','createfile','2','1320147790','1320147790','1');
INSERT INTO `logs` VALUES ('244','gallery','createfile','2','1320151726','1320151726','1');
INSERT INTO `logs` VALUES ('245','gallery','update','2','1320151753','1320151753','1');
INSERT INTO `logs` VALUES ('246','gallery','createfile','2','1320151767','1320151767','1');
INSERT INTO `logs` VALUES ('247','gallery','destroyfile','50','1320152024','1320152024','1');
INSERT INTO `logs` VALUES ('248','gallery','createfile','2','1320152059','1320152059','1');
INSERT INTO `logs` VALUES ('249','gallery','destroyfile','47','1320152292','1320152292','1');
INSERT INTO `logs` VALUES ('250','gallery','destroyfile','47','1320152293','1320152293','1');
INSERT INTO `logs` VALUES ('251','gallery','destroyfile','47','1320152295','1320152295','1');
INSERT INTO `logs` VALUES ('252','gallery','destroyfile','48','1320152304','1320152304','1');
INSERT INTO `logs` VALUES ('253','gallery','destroyfile','49','1320152309','1320152309','1');
INSERT INTO `logs` VALUES ('254','gallery','destroyfile','51','1320152311','1320152311','1');
INSERT INTO `logs` VALUES ('255','gallery','createfile','2','1320152411','1320152411','1');
INSERT INTO `logs` VALUES ('256','gallery','createfile','2','1320153392','1320153392','1');
INSERT INTO `logs` VALUES ('257','gallery','destroyfile','52','1320153401','1320153401','1');
INSERT INTO `logs` VALUES ('258','gallery','destroyfile','53','1320153406','1320153406','1');
INSERT INTO `logs` VALUES ('259','gallery','createfile','2','1320153432','1320153432','1');
INSERT INTO `logs` VALUES ('260','gallery','destroyfile','54','1320153617','1320153617','1');
INSERT INTO `logs` VALUES ('261','gallery','createfile','2','1320153625','1320153625','1');
INSERT INTO `logs` VALUES ('262','gallery','destroyfile','55','1320153628','1320153628','1');
INSERT INTO `logs` VALUES ('263','gallery','createfile','2','1320153744','1320153744','1');
INSERT INTO `logs` VALUES ('264','gallery','createfile','2','1320153775','1320153775','1');
INSERT INTO `logs` VALUES ('265','gallery','destroyfile','57','1320153786','1320153786','1');
INSERT INTO `logs` VALUES ('266','gallery','createfile','2','1320153895','1320153895','1');
INSERT INTO `logs` VALUES ('267','gallery','destroyfile','58','1320153916','1320153916','1');
INSERT INTO `logs` VALUES ('268','gallery','destroyfile','56','1320153921','1320153921','1');
INSERT INTO `logs` VALUES ('269','gallery','createfile','2','1320154109','1320154109','1');
INSERT INTO `logs` VALUES ('270','gallery','destroyfile','59','1320154145','1320154145','1');
INSERT INTO `logs` VALUES ('271','gallery','createfile','2','1320157298','1320157298','1');
INSERT INTO `logs` VALUES ('272','gallery','destroyfile','60','1320157302','1320157302','1');
INSERT INTO `logs` VALUES ('273','gallery','createfile','2','1320157469','1320157469','1');
INSERT INTO `logs` VALUES ('274','gallery','destroyfile','61','1320157498','1320157498','1');
INSERT INTO `logs` VALUES ('275','gallery','createfile','2','1320159030','1320159030','1');
INSERT INTO `logs` VALUES ('276','gallery','destroyfile','62','1320159084','1320159084','1');
INSERT INTO `logs` VALUES ('277','gallery','createfile','2','1320159094','1320159094','1');
INSERT INTO `logs` VALUES ('278','gallery','destroyfile','63','1320159404','1320159404','1');
INSERT INTO `logs` VALUES ('279','gallery','createfile','2','1320159421','1320159421','1');
INSERT INTO `logs` VALUES ('280','gallery','createfile','2','1320159510','1320159510','1');
INSERT INTO `logs` VALUES ('281','gallery','createfile','2','1320159586','1320159586','1');
INSERT INTO `logs` VALUES ('282','gallery','createfile','2','1320159884','1320159884','1');
INSERT INTO `logs` VALUES ('283','gallery','destroyfile','68','1320160053','1320160053','1');
INSERT INTO `logs` VALUES ('284','gallery','createfile','2','1320160064','1320160064','1');
INSERT INTO `logs` VALUES ('285','gallery','destroyfile','65','1320160080','1320160080','1');
INSERT INTO `logs` VALUES ('286','gallery','createfile','2','1320160667','1320160667','1');
INSERT INTO `logs` VALUES ('287','gallery','destroyfile','70','1320160671','1320160671','1');
INSERT INTO `logs` VALUES ('288','gallery','destroyfile','64','1320160676','1320160676','1');
INSERT INTO `logs` VALUES ('289','gallery','destroyfile','66','1320160682','1320160682','1');
INSERT INTO `logs` VALUES ('290','gallery','destroyfile','67','1320160686','1320160686','1');
INSERT INTO `logs` VALUES ('291','gallery','destroyfile','69','1320160690','1320160690','1');
INSERT INTO `logs` VALUES ('292','gallery','createfile','2','1320160698','1320160698','1');
INSERT INTO `logs` VALUES ('293','gallery','destroyfile','71','1320160746','1320160746','1');
INSERT INTO `logs` VALUES ('294','gallery','createfile','2','1320160753','1320160753','1');
INSERT INTO `logs` VALUES ('295','gallery','createfile','2','1320160764','1320160764','1');
INSERT INTO `logs` VALUES ('296','gallery','createfile','2','1320160789','1320160789','1');
INSERT INTO `logs` VALUES ('297','gallery','createfile','2','1320160807','1320160807','1');
INSERT INTO `logs` VALUES ('298','gallery','destroyfile','75','1320160862','1320160862','1');
INSERT INTO `logs` VALUES ('299','gallery','createfile','2','1320160869','1320160869','1');
INSERT INTO `logs` VALUES ('300','gallery','createfile','2','1320160975','1320160975','1');
INSERT INTO `logs` VALUES ('301','gallery','createfile','2','1320161023','1320161023','1');
INSERT INTO `logs` VALUES ('302','gallery','createfile','2','1320161033','1320161033','1');
INSERT INTO `logs` VALUES ('303','gallery','createfile','2','1320161045','1320161045','1');
INSERT INTO `logs` VALUES ('304','gallery','createfile','2','1320161054','1320161054','1');
INSERT INTO `logs` VALUES ('305','gallery','createfile','2','1320161172','1320161172','1');
INSERT INTO `logs` VALUES ('306','gallery','createfile','2','1320161204','1320161204','1');
INSERT INTO `logs` VALUES ('307','gallery','destroyfile','83','1320161231','1320161231','1');
INSERT INTO `logs` VALUES ('308','gallery','createfile','2','1320161293','1320161293','1');
INSERT INTO `logs` VALUES ('309','gallery','destroyfile','84','1320161308','1320161308','1');
INSERT INTO `logs` VALUES ('310','gallery','createfile','2','1320161374','1320161374','1');
INSERT INTO `logs` VALUES ('311','gallery','createfile','2','1320161390','1320161390','1');
INSERT INTO `logs` VALUES ('312','gallery','destroyfile','88','1320161482','1320161482','1');
INSERT INTO `logs` VALUES ('313','gallery','destroyfile','87','1320161495','1320161495','1');
INSERT INTO `logs` VALUES ('314','gallery','destroyfile','87','1320161556','1320161556','1');
INSERT INTO `logs` VALUES ('315','gallery','destroyfile','86','1320161566','1320161566','1');
INSERT INTO `logs` VALUES ('316','gallery','destroyfile','85','1320161571','1320161571','1');
INSERT INTO `logs` VALUES ('317','gallery','destroyfile','74','1320161575','1320161575','1');
INSERT INTO `logs` VALUES ('318','gallery','destroyfile','72','1320161579','1320161579','1');
INSERT INTO `logs` VALUES ('319','gallery','destroyfile','73','1320161583','1320161583','1');
INSERT INTO `logs` VALUES ('320','gallery','destroyfile','76','1320161586','1320161586','1');
INSERT INTO `logs` VALUES ('321','gallery','destroyfile','77','1320161589','1320161589','1');
INSERT INTO `logs` VALUES ('322','gallery','destroyfile','78','1320161594','1320161594','1');
INSERT INTO `logs` VALUES ('323','gallery','destroyfile','79','1320161598','1320161598','1');
INSERT INTO `logs` VALUES ('324','gallery','destroyfile','80','1320161601','1320161601','1');
INSERT INTO `logs` VALUES ('325','gallery','destroyfile','81','1320161605','1320161605','1');
INSERT INTO `logs` VALUES ('326','gallery','destroyfile','82','1320161612','1320161612','1');
INSERT INTO `logs` VALUES ('327','blog','create','0','1320237436','1320237436','1');
INSERT INTO `logs` VALUES ('328','blog','create','0','1320238461','1320238461','1');
INSERT INTO `logs` VALUES ('329','comment','destroy','95','1320251002','1320251002','1');
INSERT INTO `logs` VALUES ('330','comment','destroy','95','1320251002','1320251002','1');
INSERT INTO `logs` VALUES ('331','blog','create','0','1320252216','1320252216','1');
INSERT INTO `logs` VALUES ('332','gallery','createfile','2','1320334466','1320334466','1');
INSERT INTO `logs` VALUES ('333','gallery','createfile','2','1320334477','1320334477','1');
INSERT INTO `logs` VALUES ('334','gallery','destroyfile','90','1320334492','1320334492','1');
INSERT INTO `logs` VALUES ('335','gallery','destroyfile','89','1320334497','1320334497','1');
INSERT INTO `logs` VALUES ('336','gallery','createfile','2','1320334504','1320334504','1');
INSERT INTO `logs` VALUES ('337','gallery','createfile','2','1320334514','1320334514','1');
INSERT INTO `logs` VALUES ('338','gallery','destroyfile','92','1320334517','1320334517','1');
INSERT INTO `logs` VALUES ('339','gallery','destroyfile','91','1320334522','1320334522','1');
INSERT INTO `logs` VALUES ('340','content','update','1','1320334680','1320334680','1');
INSERT INTO `logs` VALUES ('341','content','update','1','1320334711','1320334711','1');
INSERT INTO `logs` VALUES ('342','content','update','1','1320334750','1320334750','1');
INSERT INTO `logs` VALUES ('343','content','update','1','1320334778','1320334778','1');
INSERT INTO `logs` VALUES ('344','content','update','1','1320334778','1320334778','1');
INSERT INTO `logs` VALUES ('345','content','update','1','1320334795','1320334795','1');
INSERT INTO `logs` VALUES ('346','content','update','1','1320334841','1320334841','1');
INSERT INTO `logs` VALUES ('347','content','update','1','1320334850','1320334850','1');
INSERT INTO `logs` VALUES ('348','content','update','1','1320334874','1320334874','1');
INSERT INTO `logs` VALUES ('349','content','update','1','1320334892','1320334892','1');
INSERT INTO `logs` VALUES ('350','content','create','0','1320334896','1320334896','1');
INSERT INTO `logs` VALUES ('351','blog','update','4','1320416998','1320416998','1');
INSERT INTO `logs` VALUES ('352','blog','create','0','1320417800','1320417800','1');
INSERT INTO `logs` VALUES ('353','blog','create','0','1320417902','1320417902','1');
INSERT INTO `logs` VALUES ('354','cronjob','create','0','1320740050','1320740051','0');
INSERT INTO `logs` VALUES ('355','cronjob','create','0','1320740239','1320740240','0');
INSERT INTO `logs` VALUES ('356','cronjob','create','0','1320740284','1320740284','0');
INSERT INTO `logs` VALUES ('357','cronjob','create','0','1320740345','1320740345','0');
INSERT INTO `logs` VALUES ('358','cronjob','create','0','1320748026','1320748027','0');
INSERT INTO `logs` VALUES ('359','blog','update','4','1320749509','1320749509','1');
INSERT INTO `logs` VALUES ('360','comment','destroy','94','1320750154','1320750154','1');
INSERT INTO `logs` VALUES ('361','comment','destroy','94','1320750154','1320750154','1');
INSERT INTO `logs` VALUES ('362','comment','destroy','90','1320750164','1320750164','1');
INSERT INTO `logs` VALUES ('363','comment','destroy','90','1320750164','1320750164','1');
INSERT INTO `logs` VALUES ('364','comment','destroy','93','1320750322','1320750322','1');
INSERT INTO `logs` VALUES ('365','comment','destroy','93','1320750322','1320750322','1');
INSERT INTO `logs` VALUES ('366','gallery','destroyfile','43','1320750430','1320750430','1');
INSERT INTO `logs` VALUES ('367','gallery','updatefile','42','1320750445','1320750445','1');
INSERT INTO `logs` VALUES ('368','blog','update','4','1320921170','1320921170','1');
INSERT INTO `logs` VALUES ('369','user','update','1','1320937619','1320937619','1');
INSERT INTO `logs` VALUES ('370','gallery','create','0','1320937631','1320937631','1');
INSERT INTO `logs` VALUES ('371','gallery','create','0','1320937641','1320937641','1');
INSERT INTO `logs` VALUES ('372','gallery','create','0','1320937760','1320937760','1');
INSERT INTO `logs` VALUES ('373','gallery','create','0','1320937766','1320937766','1');
INSERT INTO `logs` VALUES ('374','gallery','create','0','1320937836','1320937836','1');
INSERT INTO `logs` VALUES ('375','gallery','create','0','1320937854','1320937854','1');
INSERT INTO `logs` VALUES ('376','comment','create','93','1320940754','1320940754','1');
INSERT INTO `logs` VALUES ('377','content','update','1','1321269718','1321269718','1');
INSERT INTO `logs` VALUES ('378','content','update','1','1321269722','1321269722','1');
INSERT INTO `logs` VALUES ('379','content','update','1','1321269722','1321269722','1');
INSERT INTO `logs` VALUES ('380','blog','update','4','1321280980','1321280980','1');
INSERT INTO `logs` VALUES ('381','content','update','1','1321284006','1321284006','1');
INSERT INTO `logs` VALUES ('382','download','create','0','1321285462','1321285462','1');
INSERT INTO `logs` VALUES ('383','calendar','create','0','1321350442','1321350442','1');
INSERT INTO `logs` VALUES ('384','calendar','create','0','1321350521','1321350521','1');
INSERT INTO `logs` VALUES ('385','calendar','create','0','1321350523','1321350523','1');
INSERT INTO `logs` VALUES ('386','calendar','create','0','1321350553','1321350553','1');
INSERT INTO `logs` VALUES ('387','calendar','create','1','1321350553','1321350553','1');
INSERT INTO `logs` VALUES ('388','calendar','update','1','1321351317','1321351317','1');
INSERT INTO `logs` VALUES ('389','calendar','update','1','1321351320','1321351320','1');
INSERT INTO `logs` VALUES ('390','calendar','update','1','1321351320','1321351320','1');
INSERT INTO `logs` VALUES ('391','calendar','update','1','1321351325','1321351325','1');
INSERT INTO `logs` VALUES ('392','calendar','update','1','1321352419','1321352419','1');
INSERT INTO `logs` VALUES ('393','calendar','update','1','1321352432','1321352432','1');
INSERT INTO `logs` VALUES ('394','calendar','update','1','1321352445','1321352445','1');
INSERT INTO `logs` VALUES ('395','calendar','update','1','1321352445','1321352445','1');
INSERT INTO `logs` VALUES ('396','calendar','update','1','1321352517','1321352517','1');
INSERT INTO `logs` VALUES ('397','calendar','update','1','1321352523','1321352523','1');
INSERT INTO `logs` VALUES ('398','calendar','create','0','1321352531','1321352531','1');
INSERT INTO `logs` VALUES ('399','user','update','1','1322665854','1322665854','1');
INSERT INTO `logs` VALUES ('400','gallery','create','0','1322731413','1322731413','1');
INSERT INTO `logs` VALUES ('401','calendar','create','0','1322731453','1322731453','1');
INSERT INTO `logs` VALUES ('402','blog','update','4','1322731536','1322731536','1');
INSERT INTO `logs` VALUES ('403','blog','create','0','1322731704','1322731704','1');
INSERT INTO `logs` VALUES ('404','blog','create','0','1322732014','1322732014','1');
INSERT INTO `logs` VALUES ('405','blog','create','0','1322732237','1322732237','1');
INSERT INTO `logs` VALUES ('406','blog','create','0','1322732351','1322732351','1');
INSERT INTO `logs` VALUES ('407','blog','create','0','1322733251','1322733251','1');
INSERT INTO `logs` VALUES ('408','blog','create','0','1322733301','1322733301','1');
INSERT INTO `logs` VALUES ('409','blog','create','0','1322733685','1322733685','1');
INSERT INTO `logs` VALUES ('410','gallery','create','0','1322734042','1322734042','1');
INSERT INTO `logs` VALUES ('411','blog','create','0','1322734342','1322734342','1');
INSERT INTO `logs` VALUES ('412','blog','create','0','1322734645','1322734645','1');
INSERT INTO `logs` VALUES ('413','blog','create','0','1322734646','1322734646','1');
INSERT INTO `logs` VALUES ('414','blog','create','0','1322734663','1322734663','1');
INSERT INTO `logs` VALUES ('415','blog','create','0','1322734682','1322734682','1');
INSERT INTO `logs` VALUES ('416','blog','create','0','1322734709','1322734709','1');
INSERT INTO `logs` VALUES ('417','blog','create','0','1322734856','1322734856','1');
INSERT INTO `logs` VALUES ('418','blog','create','0','1322734879','1322734879','1');
INSERT INTO `logs` VALUES ('419','search','create','0','1322734934','1322734934','1');
INSERT INTO `logs` VALUES ('420','search','create','0','1322735011','1322735011','1');
INSERT INTO `logs` VALUES ('421','blog','create','0','1322735092','1322735092','1');
INSERT INTO `logs` VALUES ('422','search','create','0','1322735370','1322735370','1');
INSERT INTO `logs` VALUES ('423','search','create','0','1322735396','1322735396','1');
INSERT INTO `logs` VALUES ('424','search','create','0','1322735400','1322735400','1');
INSERT INTO `logs` VALUES ('425','blog','update','4','1322737327','1322737327','1');
INSERT INTO `logs` VALUES ('426','blog','create','0','1322737354','1322737354','1');
INSERT INTO `logs` VALUES ('427','blog','create','0','1322737559','1322737559','1');
INSERT INTO `logs` VALUES ('428','blog','create','0','1322737586','1322737586','1');
INSERT INTO `logs` VALUES ('429','blog','create','0','1322737688','1322737688','1');
INSERT INTO `logs` VALUES ('430','blog','create','0','1322738337','1322738337','1');
INSERT INTO `logs` VALUES ('431','user','create','4','1322740072','1322740072','0');
INSERT INTO `logs` VALUES ('432','user','create','5','1322740323','1322740323','0');
INSERT INTO `logs` VALUES ('433','user','create','6','1322740623','1322740623','0');
INSERT INTO `logs` VALUES ('434','user','update','6','1322740817','1322740817','1');
INSERT INTO `logs` VALUES ('435','user','update','6','1322740840','1322740840','1');
INSERT INTO `logs` VALUES ('436','user','update','5','1322740912','1322740912','1');
INSERT INTO `logs` VALUES ('437','user','update','5','1322740945','1322740945','1');
INSERT INTO `logs` VALUES ('438','user','update','5','1322740958','1322740958','1');
INSERT INTO `logs` VALUES ('439','user','update','5','1322740968','1322740968','1');
INSERT INTO `logs` VALUES ('440','comment','create','97','1322758811','1322758811','1');
INSERT INTO `logs` VALUES ('441','comment','create','98','1322822972','1322822972','1');
INSERT INTO `logs` VALUES ('442','comment','create','99','1322823319','1322823319','0');
INSERT INTO `logs` VALUES ('443','comment','create','100','1322823396','1322823396','0');
INSERT INTO `logs` VALUES ('444','blog','update','4','1323186107','1323186107','1');
INSERT INTO `logs` VALUES ('445','blog','update','4','1323186119','1323186119','1');
INSERT INTO `logs` VALUES ('446','blog','update','4','1323186119','1323186119','1');
INSERT INTO `logs` VALUES ('447','comment','create','101','1323186217','1323186217','1');
INSERT INTO `logs` VALUES ('448','blog','create','0','1323192120','1323192120','1');
INSERT INTO `logs` VALUES ('449','calendar','create','0','1323192434','1323192434','1');
INSERT INTO `logs` VALUES ('450','user','update','6','1323255741','1323255741','6');
INSERT INTO `logs` VALUES ('451','blog','update','4','1323256410','1323256410','1');
INSERT INTO `logs` VALUES ('452','content','update','1','1323256414','1323256414','1');
INSERT INTO `logs` VALUES ('453','content','update','1','1323256417','1323256417','1');
INSERT INTO `logs` VALUES ('454','content','update','1','1323256417','1323256417','1');
INSERT INTO `logs` VALUES ('455','user','create','7','1323257373','1323257373','0');
INSERT INTO `logs` VALUES ('456','user','create','8','1323258190','1323258190','0');
INSERT INTO `logs` VALUES ('457','user','create','9','1323259747','1323259747','0');
INSERT INTO `logs` VALUES ('458','comment','create','102','1323265019','1323265019','9');
INSERT INTO `logs` VALUES ('459','blog','update','4','1323276529','1323276529','1');
INSERT INTO `logs` VALUES ('460','content','update','1','1323276557','1323276557','1');
INSERT INTO `logs` VALUES ('461','gallery','update','3','1323276962','1323276962','1');
INSERT INTO `logs` VALUES ('462','test','create','1','1323339635','1323339635','0');
INSERT INTO `logs` VALUES ('463','test','create','1','1323339654','1323339654','0');
INSERT INTO `logs` VALUES ('464','test','create','1','1323340132','1323340132','0');
INSERT INTO `logs` VALUES ('465','test','create','1','1323340303','1323340303','0');
INSERT INTO `logs` VALUES ('466','test','create','1','1323344483','1323344483','0');
INSERT INTO `logs` VALUES ('467','test','create','1','1323344968','1323344968','0');
INSERT INTO `logs` VALUES ('468','test','create','1','1323345018','1323345018','0');
INSERT INTO `logs` VALUES ('469','test','create','1','1323345044','1323345044','0');
INSERT INTO `logs` VALUES ('470','test','create','1','1323345095','1323345095','0');
INSERT INTO `logs` VALUES ('471','test','create','1','1323345151','1323345151','0');
INSERT INTO `logs` VALUES ('472','test','create','1','1323345212','1323345212','0');
INSERT INTO `logs` VALUES ('473','test','create','1','1323345232','1323345232','0');
INSERT INTO `logs` VALUES ('474','test','create','1','1323345292','1323345292','0');
INSERT INTO `logs` VALUES ('475','test','create','1','1323345306','1323345306','0');
INSERT INTO `logs` VALUES ('476','test','create','1','1323345315','1323345315','0');
INSERT INTO `logs` VALUES ('477','test','create','1','1323345326','1323345326','0');
INSERT INTO `logs` VALUES ('478','test','create','1','1323345381','1323345381','0');
INSERT INTO `logs` VALUES ('479','test','create','1','1323345422','1323345422','0');
INSERT INTO `logs` VALUES ('480','test','create','1','1323345701','1323345701','0');
INSERT INTO `logs` VALUES ('481','test','create','1','1323346099','1323346099','0');
INSERT INTO `logs` VALUES ('482','test','create','1','1323346305','1323346305','0');
INSERT INTO `logs` VALUES ('483','test','create','1','1323346403','1323346403','0');
INSERT INTO `logs` VALUES ('597','download','destroy','0','1323362163','1323362163','0');
INSERT INTO `logs` VALUES ('600','download','destroy','0','1323362339','1323362339','0');
INSERT INTO `logs` VALUES ('601','download','destroy','0','1323362386','1323362386','0');
INSERT INTO `logs` VALUES ('603','download','destroy','0','1323362553','1323362553','0');
INSERT INTO `logs` VALUES ('605','download','destroy','0','1323362587','1323362587','0');
INSERT INTO `logs` VALUES ('607','download','destroy','0','1323362804','1323362804','0');
INSERT INTO `logs` VALUES ('609','download','destroy','0','1323362893','1323362893','0');
INSERT INTO `logs` VALUES ('611','download','destroy','0','1323444855','1323444855','0');
INSERT INTO `logs` VALUES ('613','download','destroy','0','1323445026','1323445026','0');
INSERT INTO `logs` VALUES ('614','download','destroy','0','1323445128','1323445128','0');
INSERT INTO `logs` VALUES ('615','download','destroy','0','1323445156','1323445156','0');
INSERT INTO `logs` VALUES ('616','user','update','1','1323446534','1323446534','1');
INSERT INTO `logs` VALUES ('617','user','update','1','1323446652','1323446652','1');
INSERT INTO `logs` VALUES ('618','user','update','1','1323446871','1323446871','1');
INSERT INTO `logs` VALUES ('619','user','update','1','1323446879','1323446879','1');
INSERT INTO `logs` VALUES ('620','download','destroy','0','1323447719','1323447719','0');
INSERT INTO `logs` VALUES ('621','download','destroy','0','1323447772','1323447772','0');
INSERT INTO `logs` VALUES ('622','download','destroy','0','1323447788','1323447788','0');
INSERT INTO `logs` VALUES ('623','download','destroy','0','1323447891','1323447891','0');
INSERT INTO `logs` VALUES ('624','download','destroy','0','1323448038','1323448038','0');
INSERT INTO `logs` VALUES ('625','download','destroy','0','1323448059','1323448059','0');
INSERT INTO `logs` VALUES ('626','download','destroy','0','1323448158','1323448158','0');
INSERT INTO `logs` VALUES ('627','download','destroy','0','1323448173','1323448173','0');
INSERT INTO `logs` VALUES ('628','download','destroy','0','1323448183','1323448183','0');
INSERT INTO `logs` VALUES ('629','download','destroy','0','1323448446','1323448446','0');
INSERT INTO `logs` VALUES ('630','download','destroy','0','1323448536','1323448536','0');
INSERT INTO `logs` VALUES ('631','download','destroy','0','1323448709','1323448709','0');
INSERT INTO `logs` VALUES ('632','download','destroy','0','1323448733','1323448733','0');
INSERT INTO `logs` VALUES ('633','download','destroy','0','1323448852','1323448852','0');
INSERT INTO `logs` VALUES ('634','download','destroy','0','1323448904','1323448904','0');
INSERT INTO `logs` VALUES ('635','download','destroy','0','1323449099','1323449099','0');
INSERT INTO `logs` VALUES ('636','download','destroy','0','1323449148','1323449148','0');
INSERT INTO `logs` VALUES ('637','download','destroy','0','1323450020','1323450020','0');
INSERT INTO `logs` VALUES ('638','download','destroy','0','1323450060','1323450060','0');
INSERT INTO `logs` VALUES ('639','download','destroy','0','1323766194','1323766194','0');
INSERT INTO `logs` VALUES ('640','download','destroy','0','1323766214','1323766214','0');
INSERT INTO `logs` VALUES ('641','download','destroy','0','1323766336','1323766336','0');
INSERT INTO `logs` VALUES ('642','download','destroy','0','1323766473','1323766473','0');
INSERT INTO `logs` VALUES ('643','download','destroy','0','1323766499','1323766499','0');
INSERT INTO `logs` VALUES ('644','download','destroy','0','1323766539','1323766539','0');
INSERT INTO `logs` VALUES ('645','download','destroy','0','1323766673','1323766673','0');
INSERT INTO `logs` VALUES ('646','download','destroy','0','1323766705','1323766705','0');
INSERT INTO `logs` VALUES ('647','download','destroy','0','1323766763','1323766763','0');
INSERT INTO `logs` VALUES ('648','download','destroy','0','1323766819','1323766819','0');
INSERT INTO `logs` VALUES ('649','download','destroy','0','1323766830','1323766830','0');
INSERT INTO `logs` VALUES ('650','download','destroy','0','1323767748','1323767748','0');
INSERT INTO `logs` VALUES ('651','download','destroy','0','1323767805','1323767805','0');
INSERT INTO `logs` VALUES ('652','download','destroy','0','1323768192','1323768192','0');
INSERT INTO `logs` VALUES ('653','download','destroy','0','1323768334','1323768334','0');
INSERT INTO `logs` VALUES ('654','download','destroy','0','1323768381','1323768381','0');
INSERT INTO `logs` VALUES ('655','download','destroy','0','1323768493','1323768493','0');
INSERT INTO `logs` VALUES ('656','download','destroy','0','1323770343','1323770343','0');
INSERT INTO `logs` VALUES ('657','download','destroy','0','1323770365','1323770365','0');
INSERT INTO `logs` VALUES ('658','download','destroy','0','1323770418','1323770418','0');
INSERT INTO `logs` VALUES ('659','download','destroy','0','1323770480','1323770480','0');
INSERT INTO `logs` VALUES ('660','download','destroy','0','1323770605','1323770605','0');
INSERT INTO `logs` VALUES ('661','download','destroy','0','1323770636','1323770636','0');
INSERT INTO `logs` VALUES ('662','download','destroy','0','1323770663','1323770663','0');
INSERT INTO `logs` VALUES ('663','download','destroy','0','1323783913','1323783913','0');
INSERT INTO `logs` VALUES ('664','download','destroy','0','1323784105','1323784105','0');
INSERT INTO `logs` VALUES ('665','download','destroy','0','1323784146','1323784146','0');
INSERT INTO `logs` VALUES ('666','download','destroy','0','1323784191','1323784191','0');
INSERT INTO `logs` VALUES ('667','download','destroy','0','1323784256','1323784256','0');
INSERT INTO `logs` VALUES ('668','download','destroy','0','1323784274','1323784274','0');
INSERT INTO `logs` VALUES ('669','download','destroy','0','1323784387','1323784387','0');
INSERT INTO `logs` VALUES ('670','download','destroy','0','1323784499','1323784499','0');
INSERT INTO `logs` VALUES ('671','download','destroy','0','1323784811','1323784811','0');
INSERT INTO `logs` VALUES ('673','download','destroy','0','1323784897','1323784897','0');
INSERT INTO `logs` VALUES ('675','download','destroy','0','1323785000','1323785000','0');
INSERT INTO `logs` VALUES ('677','download','destroy','0','1323786031','1323786031','0');
INSERT INTO `logs` VALUES ('679','download','destroy','0','1323786068','1323786068','0');
INSERT INTO `logs` VALUES ('681','download','destroy','0','1323786184','1323786184','0');
INSERT INTO `logs` VALUES ('684','download','destroy','0','1323788208','1323788208','0');
INSERT INTO `logs` VALUES ('686','download','destroy','0','1323788311','1323788311','0');
INSERT INTO `logs` VALUES ('688','download','destroy','0','1323788364','1323788364','0');
INSERT INTO `logs` VALUES ('690','download','destroy','0','1323788436','1323788436','0');
INSERT INTO `logs` VALUES ('692','download','destroy','0','1323788463','1323788463','0');
INSERT INTO `logs` VALUES ('694','download','destroy','0','1323788483','1323788483','0');
INSERT INTO `logs` VALUES ('696','download','destroy','0','1323788522','1323788522','0');
INSERT INTO `logs` VALUES ('698','download','destroy','0','1323788612','1323788612','0');
INSERT INTO `logs` VALUES ('700','download','destroy','0','1323788624','1323788624','0');
INSERT INTO `logs` VALUES ('702','download','destroy','0','1323789088','1323789088','0');
INSERT INTO `logs` VALUES ('703','download','destroy','0','1323860787','1323860787','0');
INSERT INTO `logs` VALUES ('704','download','destroy','0','1323860843','1323860843','0');
INSERT INTO `logs` VALUES ('705','download','destroy','0','1323860896','1323860896','0');
INSERT INTO `logs` VALUES ('706','download','destroy','0','1323860979','1323860979','0');
INSERT INTO `logs` VALUES ('707','download','destroy','0','1323861029','1323861029','0');
INSERT INTO `logs` VALUES ('708','download','destroy','0','1323861070','1323861070','0');
INSERT INTO `logs` VALUES ('709','download','destroy','0','1323861238','1323861238','0');
INSERT INTO `logs` VALUES ('710','download','destroy','0','1323861473','1323861473','0');
INSERT INTO `logs` VALUES ('712','download','destroy','0','1323861497','1323861497','0');
INSERT INTO `logs` VALUES ('714','download','destroy','0','1323861546','1323861546','0');
INSERT INTO `logs` VALUES ('716','download','destroy','0','1323861702','1323861702','0');
INSERT INTO `logs` VALUES ('718','download','destroy','0','1323861735','1323861735','0');
INSERT INTO `logs` VALUES ('720','download','destroy','0','1323861840','1323861840','0');
INSERT INTO `logs` VALUES ('722','download','destroy','0','1323861862','1323861862','0');
INSERT INTO `logs` VALUES ('724','download','destroy','0','1323861900','1323861900','0');
INSERT INTO `logs` VALUES ('725','comment','create','112','1323863019','1323863019','0');
INSERT INTO `logs` VALUES ('726','comment','create','255','1323863064','1323863064','0');
INSERT INTO `logs` VALUES ('727','comment','create','256','1323864136','1323864136','0');
INSERT INTO `logs` VALUES ('728','blog','update','10','1323864141','1323864141','0');
INSERT INTO `logs` VALUES ('729','blog','update','10','1323864147','1323864147','0');
INSERT INTO `logs` VALUES ('730','blog','update','10','1323864147','1323864147','0');
INSERT INTO `logs` VALUES ('731','comment','destroy','256','1323864155','1323864155','0');
INSERT INTO `logs` VALUES ('732','comment','destroy','256','1323864155','1323864155','0');
INSERT INTO `logs` VALUES ('733','blog','update','10','1323864160','1323864160','0');
INSERT INTO `logs` VALUES ('734','blog','destroy','10','1323864165','1323864165','0');
INSERT INTO `logs` VALUES ('735','blog','destroy','10','1323864165','1323864165','0');
INSERT INTO `logs` VALUES ('736','blog','create','0','1323864169','1323864169','0');
INSERT INTO `logs` VALUES ('737','blog','create','0','1323864173','1323864173','0');
INSERT INTO `logs` VALUES ('738','blog','create','145','1323864173','1323864173','0');
INSERT INTO `logs` VALUES ('739','blog','update','145','1323864181','1323864181','0');
INSERT INTO `logs` VALUES ('740','blog','destroy','145','1323864184','1323864184','0');
INSERT INTO `logs` VALUES ('741','blog','destroy','145','1323864184','1323864184','0');
INSERT INTO `logs` VALUES ('742','gallery','update','9','1323864189','1323864189','0');
INSERT INTO `logs` VALUES ('743','gallery','update','9','1323864193','1323864193','0');
INSERT INTO `logs` VALUES ('744','gallery','update','9','1323864193','1323864193','0');
INSERT INTO `logs` VALUES ('745','gallery','update','9','1323864197','1323864197','0');
INSERT INTO `logs` VALUES ('746','gallery','destroy','9','1323864201','1323864201','0');
INSERT INTO `logs` VALUES ('747','gallery','destroy','9','1323864201','1323864201','0');
INSERT INTO `logs` VALUES ('748','gallery','createfile','8','1323864352','1323864352','0');
INSERT INTO `logs` VALUES ('749','gallery','createfile','2','1323864392','1323864392','0');
INSERT INTO `logs` VALUES ('750','gallery','updatefile','195','1323864467','1323864467','0');
INSERT INTO `logs` VALUES ('751','gallery','destroyfile','195','1323864515','1323864515','0');
INSERT INTO `logs` VALUES ('752','download','update','14','1323866664','1323866664','0');
INSERT INTO `logs` VALUES ('753','download','update','14','1323866671','1323866671','0');
INSERT INTO `logs` VALUES ('754','download','update','14','1323866671','1323866671','0');
INSERT INTO `logs` VALUES ('755','download','update','17','1323866677','1323866677','0');
INSERT INTO `logs` VALUES ('756','download','update','16','1323866682','1323866682','0');
INSERT INTO `logs` VALUES ('758','download','destroy','0','1323867104','1323867104','0');
INSERT INTO `logs` VALUES ('759','download','destroy','15','1323867447','1323867447','0');
INSERT INTO `logs` VALUES ('760','download','destroy','15','1323867447','1323867447','0');
INSERT INTO `logs` VALUES ('761','download','destroy','16','1323867546','1323867546','0');
INSERT INTO `logs` VALUES ('762','download','destroy','16','1323867546','1323867546','0');
INSERT INTO `logs` VALUES ('763','user','update','1','1323867602','1323867602','0');
INSERT INTO `logs` VALUES ('766','log','destroy','764','1323867626','1323867626','0');
INSERT INTO `logs` VALUES ('765','content','destroy','6','1323867617','1323867617','0');
INSERT INTO `logs` VALUES ('767','user','destroy','8','1323867754','1323867754','0');
INSERT INTO `logs` VALUES ('768','user','create','92','1323867922','1323867922','0');
INSERT INTO `logs` VALUES ('769','comment','create','256','1323870197','1323870197','0');
INSERT INTO `logs` VALUES ('770','comment','destroy','258','1323870254','1323870254','0');
INSERT INTO `logs` VALUES ('771','comment','destroy','258','1323870254','1323870254','0');
INSERT INTO `logs` VALUES ('772','comment','create','256','1323943487','1323943487','0');
INSERT INTO `logs` VALUES ('773','download','update','10','1323960993','1323960993','1');
INSERT INTO `logs` VALUES ('774','download','update','10','1323960999','1323960999','1');
INSERT INTO `logs` VALUES ('775','download','update','10','1323960999','1323960999','1');
INSERT INTO `logs` VALUES ('776','download','create','0','1323962239','1323962239','1');
INSERT INTO `logs` VALUES ('777','calendar','create','0','1323962565','1323962565','1');
INSERT INTO `logs` VALUES ('778','calendar','create','0','1323962587','1323962587','1');
INSERT INTO `logs` VALUES ('779','calendar','create','134','1323962587','1323962587','1');
INSERT INTO `logs` VALUES ('780','calendar','update','1','1323962705','1323962705','1');
INSERT INTO `logs` VALUES ('781','calendar','update','1','1323962711','1323962711','1');
INSERT INTO `logs` VALUES ('782','calendar','update','1','1323962711','1323962711','1');
INSERT INTO `logs` VALUES ('783','blog','update','4','1323962907','1323962907','1');
INSERT INTO `logs` VALUES ('784','blog','update','4','1323962914','1323962914','1');
INSERT INTO `logs` VALUES ('785','blog','update','4','1323962914','1323962914','1');
INSERT INTO `logs` VALUES ('786','download','destroy','17','1324044222','1324044222','1');
INSERT INTO `logs` VALUES ('787','download','destroy','17','1324044222','1324044222','1');
INSERT INTO `logs` VALUES ('788','download','destroy','14','1324044225','1324044225','1');
INSERT INTO `logs` VALUES ('789','download','destroy','14','1324044225','1324044225','1');
INSERT INTO `logs` VALUES ('790','download','destroy','10','1324044425','1324044425','1');
INSERT INTO `logs` VALUES ('791','download','destroy','10','1324044425','1324044425','1');
INSERT INTO `logs` VALUES ('792','comment','create','260','1324048577','1324048577','1');
INSERT INTO `logs` VALUES ('794','download','destroy','0','1324048718','1324048718','0');
INSERT INTO `logs` VALUES ('795','user','update','1','1324048733','1324048733','1');
INSERT INTO `logs` VALUES ('796','user','update','6','1324299814','1324299814','1');
INSERT INTO `logs` VALUES ('797','user','update','6','1324299821','1324299821','1');
INSERT INTO `logs` VALUES ('798','user','update','6','1324299964','1324299964','1');
INSERT INTO `logs` VALUES ('799','user','update','6','1324299973','1324299973','1');
INSERT INTO `logs` VALUES ('800','user','update','6','1324299980','1324299980','1');
INSERT INTO `logs` VALUES ('801','user','update','7','1324312963','1324312963','1');
INSERT INTO `logs` VALUES ('802','content','update','1','1324313016','1324313016','1');
INSERT INTO `logs` VALUES ('803','content','update','1','1324313029','1324313029','1');
INSERT INTO `logs` VALUES ('804','content','update','1','1324313029','1324313029','1');
INSERT INTO `logs` VALUES ('805','content','update','1','1324313066','1324313066','1');
INSERT INTO `logs` VALUES ('806','content','update','1','1324313077','1324313077','1');
INSERT INTO `logs` VALUES ('807','content','update','1','1324313077','1324313077','1');
INSERT INTO `logs` VALUES ('808','content','update','1','1324313082','1324313082','1');
INSERT INTO `logs` VALUES ('809','content','update','1','1324313118','1324313118','1');
INSERT INTO `logs` VALUES ('810','content','update','1','1324313171','1324313171','1');
INSERT INTO `logs` VALUES ('811','content','update','1','1324313171','1324313171','1');
INSERT INTO `logs` VALUES ('812','content','update','1','1324313187','1324313187','1');
INSERT INTO `logs` VALUES ('813','content','update','1','1324313217','1324313217','1');
INSERT INTO `logs` VALUES ('814','blog','update','9','1324313240','1324313240','1');
INSERT INTO `logs` VALUES ('815','blog','update','9','1324313277','1324313277','1');
INSERT INTO `logs` VALUES ('816','blog','update','9','1324313321','1324313321','1');
INSERT INTO `logs` VALUES ('817','blog','update','9','1324313383','1324313383','1');
INSERT INTO `logs` VALUES ('818','blog','update','9','1324313405','1324313405','1');
INSERT INTO `logs` VALUES ('819','blog','update','9','1324313421','1324313421','1');
INSERT INTO `logs` VALUES ('820','blog','update','9','1324313471','1324313471','1');
INSERT INTO `logs` VALUES ('821','blog','update','9','1324313509','1324313509','1');
INSERT INTO `logs` VALUES ('822','content','update','1','1324313540','1324313540','1');
INSERT INTO `logs` VALUES ('823','content','update','1','1324376383','1324376383','1');
INSERT INTO `logs` VALUES ('824','blog','update','4','1324379272','1324379272','1');
INSERT INTO `logs` VALUES ('825','blog','update','4','1324379312','1324379312','1');
INSERT INTO `logs` VALUES ('826','blog','update','4','1324379324','1324379324','1');
INSERT INTO `logs` VALUES ('827','blog','update','4','1324379374','1324379374','1');
INSERT INTO `logs` VALUES ('828','blog','update','4','1324379420','1324379420','1');
INSERT INTO `logs` VALUES ('829','blog','update','4','1324379565','1324379565','1');
INSERT INTO `logs` VALUES ('830','blog','update','4','1324379612','1324379612','1');
INSERT INTO `logs` VALUES ('831','blog','update','4','1324379692','1324379692','1');
INSERT INTO `logs` VALUES ('832','blog','update','4','1324379731','1324379731','1');
INSERT INTO `logs` VALUES ('833','blog','update','4','1324379994','1324379994','1');
INSERT INTO `logs` VALUES ('834','blog','update','4','1324380022','1324380022','1');
INSERT INTO `logs` VALUES ('835','blog','update','4','1324380022','1324380022','1');
INSERT INTO `logs` VALUES ('836','content','create','0','1324477962','1324477962','1');
INSERT INTO `logs` VALUES ('837','content','update','2','1324479255','1324479255','1');
INSERT INTO `logs` VALUES ('838','content','update','2','1324479262','1324479262','1');
INSERT INTO `logs` VALUES ('839','content','update','2','1324479262','1324479262','1');
INSERT INTO `logs` VALUES ('840','content','update','2','1324479264','1324479264','1');
INSERT INTO `logs` VALUES ('841','content','create','0','1324480310','1324480310','1');
INSERT INTO `logs` VALUES ('842','content','create','0','1324480317','1324480317','1');
INSERT INTO `logs` VALUES ('843','content','create','0','1324480396','1324480396','1');
INSERT INTO `logs` VALUES ('844','content','create','0','1324480428','1324480428','1');
INSERT INTO `logs` VALUES ('845','content','create','0','1324480475','1324480475','1');
INSERT INTO `logs` VALUES ('846','content','create','0','1324480506','1324480506','1');
INSERT INTO `logs` VALUES ('847','content','create','151','1324480506','1324480506','1');
INSERT INTO `logs` VALUES ('848','cronjob','create','0','1325012111','1325012113','0');
INSERT INTO `logs` VALUES ('849','cronjob','create','0','1325064890','1325064891','0');
INSERT INTO `logs` VALUES ('850','user','create','94','1325065140','1325065140','0');
INSERT INTO `logs` VALUES ('851','blog','create','0','1325071336','1325071336','1');
INSERT INTO `logs` VALUES ('852','blog','create','0','1325071375','1325071375','1');
INSERT INTO `logs` VALUES ('853','blog','create','0','1325071510','1325071510','1');
INSERT INTO `logs` VALUES ('854','blog','create','0','1325071662','1325071662','1');
INSERT INTO `logs` VALUES ('855','blog','create','0','1325071682','1325071682','1');
INSERT INTO `logs` VALUES ('856','blog','create','0','1325071720','1325071720','1');
INSERT INTO `logs` VALUES ('857','blog','create','0','1325071786','1325071786','1');
INSERT INTO `logs` VALUES ('858','blog','create','0','1325071817','1325071817','1');
INSERT INTO `logs` VALUES ('859','blog','create','0','1325071907','1325071907','1');
INSERT INTO `logs` VALUES ('860','blog','create','0','1325072021','1325072021','1');
INSERT INTO `logs` VALUES ('861','blog','create','0','1325072037','1325072037','1');
INSERT INTO `logs` VALUES ('862','blog','create','0','1325072070','1325072070','1');
INSERT INTO `logs` VALUES ('863','blog','create','0','1325072081','1325072081','1');
INSERT INTO `logs` VALUES ('864','blog','create','0','1325072172','1325072172','1');
INSERT INTO `logs` VALUES ('865','blog','create','148','1325072172','1325072172','1');
INSERT INTO `logs` VALUES ('866','blog','create','0','1325072271','1325072271','1');
INSERT INTO `logs` VALUES ('867','blog','create','149','1325072271','1325072271','1');
INSERT INTO `logs` VALUES ('868','blog','create','0','1325072354','1325072354','1');
INSERT INTO `logs` VALUES ('869','blog','create','150','1325072354','1325072354','1');
INSERT INTO `logs` VALUES ('870','blog','create','0','1325072414','1325072414','1');
INSERT INTO `logs` VALUES ('871','blog','create','151','1325072414','1325072414','1');
INSERT INTO `logs` VALUES ('872','blog','create','0','1325072463','1325072463','1');
INSERT INTO `logs` VALUES ('873','blog','create','152','1325072463','1325072463','1');
INSERT INTO `logs` VALUES ('874','blog','create','0','1325072469','1325072469','1');
INSERT INTO `logs` VALUES ('875','blog','create','153','1325072469','1325072469','1');
INSERT INTO `logs` VALUES ('876','blog','create','0','1325072469','1325072469','1');
INSERT INTO `logs` VALUES ('877','blog','create','154','1325072469','1325072469','1');
INSERT INTO `logs` VALUES ('878','blog','create','0','1325073383','1325073383','1');
INSERT INTO `logs` VALUES ('879','blog','create','0','1325073390','1325073390','1');
INSERT INTO `logs` VALUES ('880','blog','create','0','1325073412','1325073412','1');
INSERT INTO `logs` VALUES ('881','blog','create','155','1325073412','1325073412','1');
INSERT INTO `logs` VALUES ('882','blog','create','0','1325073456','1325073456','1');
INSERT INTO `logs` VALUES ('883','blog','create','0','1325073843','1325073843','1');
INSERT INTO `logs` VALUES ('884','blog','create','0','1325073970','1325073970','1');
INSERT INTO `logs` VALUES ('885','blog','create','156','1325073970','1325073970','1');
INSERT INTO `logs` VALUES ('886','blog','create','0','1325082234','1325082234','1');
INSERT INTO `logs` VALUES ('887','blog','create','0','1325082414','1325082414','1');
INSERT INTO `logs` VALUES ('888','blog','create','0','1325082582','1325082582','1');
INSERT INTO `logs` VALUES ('889','blog','create','0','1325082734','1325082734','1');
INSERT INTO `logs` VALUES ('890','blog','create','0','1325083292','1325083292','1');
INSERT INTO `logs` VALUES ('891','blog','create','0','1325084247','1325084247','1');
INSERT INTO `logs` VALUES ('892','blog','create','0','1325084709','1325084709','1');
INSERT INTO `logs` VALUES ('893','blog','create','0','1325085298','1325085298','1');
INSERT INTO `logs` VALUES ('894','blog','create','0','1325085374','1325085374','1');
INSERT INTO `logs` VALUES ('895','blog','create','0','1325085563','1325085563','1');
INSERT INTO `logs` VALUES ('896','blog','create','157','1325085563','1325085563','1');
INSERT INTO `logs` VALUES ('897','blog','create','0','1325086309','1325086309','1');
INSERT INTO `logs` VALUES ('898','blog','create','0','1325086538','1325086538','1');
INSERT INTO `logs` VALUES ('899','blog','create','158','1325086538','1325086538','1');
INSERT INTO `logs` VALUES ('900','blog','create','0','1325086575','1325086575','1');
INSERT INTO `logs` VALUES ('901','blog','create','159','1325086575','1325086575','1');
INSERT INTO `logs` VALUES ('902','blog','create','0','1325086976','1325086976','1');
INSERT INTO `logs` VALUES ('903','blog','create','160','1325086976','1325086976','1');
INSERT INTO `logs` VALUES ('904','blog','create','0','1325092574','1325092574','1');
INSERT INTO `logs` VALUES ('905','blog','create','162','1325092574','1325092574','1');
INSERT INTO `logs` VALUES ('906','blog','create','0','1325092577','1325092577','1');
INSERT INTO `logs` VALUES ('907','blog','create','163','1325092577','1325092577','1');
INSERT INTO `logs` VALUES ('908','blog','create','0','1325092842','1325092842','1');
INSERT INTO `logs` VALUES ('909','blog','create','164','1325092842','1325092842','1');
INSERT INTO `logs` VALUES ('910','blog','create','0','1325093149','1325093149','1');
INSERT INTO `logs` VALUES ('911','blog','create','165','1325093149','1325093149','1');
INSERT INTO `logs` VALUES ('912','blog','create','0','1325093331','1325093331','1');
INSERT INTO `logs` VALUES ('913','blog','create','166','1325093331','1325093331','1');
INSERT INTO `logs` VALUES ('914','blog','create','0','1325093506','1325093506','1');
INSERT INTO `logs` VALUES ('915','blog','create','167','1325093506','1325093506','1');
INSERT INTO `logs` VALUES ('916','blog','create','0','1325093758','1325093758','1');
INSERT INTO `logs` VALUES ('917','blog','create','168','1325093758','1325093758','1');
INSERT INTO `logs` VALUES ('918','blog','create','0','1325093842','1325093842','1');
INSERT INTO `logs` VALUES ('919','blog','create','169','1325093842','1325093842','1');
INSERT INTO `logs` VALUES ('920','blog','create','0','1325094271','1325094271','1');
INSERT INTO `logs` VALUES ('921','blog','create','170','1325094271','1325094271','1');
INSERT INTO `logs` VALUES ('922','blog','create','0','1325094396','1325094396','1');
INSERT INTO `logs` VALUES ('923','blog','create','171','1325094396','1325094396','1');
INSERT INTO `logs` VALUES ('924','blog','create','0','1325095407','1325095407','1');
INSERT INTO `logs` VALUES ('925','blog','create','172','1325095407','1325095407','1');
INSERT INTO `logs` VALUES ('926','blog','create','0','1325095553','1325095553','1');
INSERT INTO `logs` VALUES ('927','blog','create','173','1325095553','1325095553','1');
INSERT INTO `logs` VALUES ('928','blog','create','0','1325095648','1325095648','1');
INSERT INTO `logs` VALUES ('929','blog','create','174','1325095648','1325095648','1');
INSERT INTO `logs` VALUES ('930','blog','create','0','1325095757','1325095757','1');
INSERT INTO `logs` VALUES ('931','blog','create','175','1325095757','1325095757','1');
INSERT INTO `logs` VALUES ('932','blog','create','0','1325241503','1325241503','1');
INSERT INTO `logs` VALUES ('933','blog','create','176','1325241503','1325241503','1');
INSERT INTO `logs` VALUES ('934','blog','create','0','1325521421','1325521421','1');
INSERT INTO `logs` VALUES ('935','blog','create','177','1325521421','1325521421','1');
INSERT INTO `logs` VALUES ('938','cronjob','create','0','1325766800','1325766801','');
INSERT INTO `logs` VALUES ('942','gallery','create','0','1325771967','1325771967','1');
INSERT INTO `logs` VALUES ('943','gallery','update','7','1325772020','1325772020','1');
INSERT INTO `logs` VALUES ('946','download','destroy','0','1325772140','1325772140','0');
INSERT INTO `logs` VALUES ('948','download','destroy','0','1325772645','1325772645','0');
INSERT INTO `logs` VALUES ('955','download','destroy','0','1325772976','1325772976','0');
INSERT INTO `logs` VALUES ('957','download','destroy','0','1325773083','1325773083','0');
INSERT INTO `logs` VALUES ('959','download','destroy','0','1325773095','1325773095','0');
INSERT INTO `logs` VALUES ('961','download','destroy','0','1325773237','1325773237','0');
INSERT INTO `logs` VALUES ('963','download','destroy','0','1325773402','1325773402','0');
INSERT INTO `logs` VALUES ('965','download','destroy','0','1325773430','1325773430','0');
INSERT INTO `logs` VALUES ('967','download','destroy','0','1325773486','1325773486','0');
INSERT INTO `logs` VALUES ('969','download','destroy','0','1325773845','1325773845','0');
INSERT INTO `logs` VALUES ('971','download','destroy','0','1325774072','1325774072','0');
INSERT INTO `logs` VALUES ('973','download','destroy','0','1325774138','1325774138','0');
INSERT INTO `logs` VALUES ('975','download','destroy','0','1325774258','1325774258','0');
INSERT INTO `logs` VALUES ('981','download','destroy','0','1325775061','1325775061','0');
INSERT INTO `logs` VALUES ('983','download','destroy','0','1325775075','1325775075','0');
INSERT INTO `logs` VALUES ('985','download','destroy','0','1325775089','1325775089','0');
INSERT INTO `logs` VALUES ('987','download','destroy','0','1325775356','1325775356','0');
INSERT INTO `logs` VALUES ('991','download','destroy','0','1325775460','1325775460','0');
INSERT INTO `logs` VALUES ('993','download','destroy','0','1325775473','1325775473','0');
INSERT INTO `logs` VALUES ('995','download','destroy','0','1325775740','1325775740','0');
INSERT INTO `logs` VALUES ('996','blog','update','176','1325777408','1325777408','1');
INSERT INTO `logs` VALUES ('997','blog','destroy','176','1325777413','1325777413','1');
INSERT INTO `logs` VALUES ('998','blog','destroy','176','1325777413','1325777413','1');
INSERT INTO `logs` VALUES ('999','blog','update','175','1325777428','1325777428','1');
INSERT INTO `logs` VALUES ('1000','blog','update','174','1325777429','1325777429','1');
INSERT INTO `logs` VALUES ('1001','blog','update','173','1325777432','1325777432','1');
INSERT INTO `logs` VALUES ('1002','blog','destroy','175','1325777447','1325777447','1');
INSERT INTO `logs` VALUES ('1003','blog','destroy','175','1325777447','1325777447','1');
INSERT INTO `logs` VALUES ('1004','blog','destroy','174','1325777453','1325777453','1');
INSERT INTO `logs` VALUES ('1005','blog','destroy','174','1325777453','1325777453','1');
INSERT INTO `logs` VALUES ('1006','blog','destroy','173','1325777460','1325777460','1');
INSERT INTO `logs` VALUES ('1007','blog','destroy','173','1325777460','1325777460','1');
INSERT INTO `logs` VALUES ('1008','blog','update','172','1325777470','1325777470','1');
INSERT INTO `logs` VALUES ('1009','blog','update','171','1325777472','1325777472','1');
INSERT INTO `logs` VALUES ('1010','blog','update','170','1325777474','1325777474','1');
INSERT INTO `logs` VALUES ('1011','blog','update','169','1325777477','1325777477','1');
INSERT INTO `logs` VALUES ('1012','blog','update','167','1325777481','1325777481','1');
INSERT INTO `logs` VALUES ('1013','blog','update','166','1325777483','1325777483','1');
INSERT INTO `logs` VALUES ('1014','blog','destroy','172','1325777491','1325777491','1');
INSERT INTO `logs` VALUES ('1015','blog','destroy','172','1325777491','1325777491','1');
INSERT INTO `logs` VALUES ('1016','blog','destroy','171','1325777495','1325777495','1');
INSERT INTO `logs` VALUES ('1017','blog','destroy','171','1325777495','1325777495','1');
INSERT INTO `logs` VALUES ('1018','blog','destroy','170','1325777500','1325777500','1');
INSERT INTO `logs` VALUES ('1019','blog','destroy','170','1325777500','1325777500','1');
INSERT INTO `logs` VALUES ('1020','blog','destroy','169','1325777504','1325777504','1');
INSERT INTO `logs` VALUES ('1021','blog','destroy','169','1325777504','1325777504','1');
INSERT INTO `logs` VALUES ('1022','blog','destroy','167','1325777512','1325777512','1');
INSERT INTO `logs` VALUES ('1023','blog','destroy','167','1325777512','1325777512','1');
INSERT INTO `logs` VALUES ('1024','blog','destroy','166','1325777517','1325777517','1');
INSERT INTO `logs` VALUES ('1025','blog','destroy','166','1325777517','1325777517','1');
INSERT INTO `logs` VALUES ('1026','blog','create','0','1325782825','1325782825','1');
INSERT INTO `logs` VALUES ('1027','blog','create','224','1325782825','1325782825','1');
INSERT INTO `logs` VALUES ('1028','blog','create','0','1325783133','1325783133','1');
INSERT INTO `logs` VALUES ('1029','blog','create','225','1325783133','1325783133','1');
INSERT INTO `logs` VALUES ('1030','blog','update','168','1325783165','1325783165','1');
INSERT INTO `logs` VALUES ('1031','blog','update','224','1325783166','1325783166','1');
INSERT INTO `logs` VALUES ('1032','blog','destroy','168','1325783191','1325783191','1');
INSERT INTO `logs` VALUES ('1033','blog','destroy','168','1325783191','1325783191','1');
INSERT INTO `logs` VALUES ('1034','blog','destroy','224','1325783195','1325783195','1');
INSERT INTO `logs` VALUES ('1035','blog','destroy','224','1325783195','1325783195','1');
INSERT INTO `logs` VALUES ('1036','blog','create','0','1325850001','1325850001','1');
INSERT INTO `logs` VALUES ('1038','download','destroy','0','1325850086','1325850086','0');
INSERT INTO `logs` VALUES ('1039','blog','update','225','1325867174','1325867174','1');
INSERT INTO `logs` VALUES ('1040','content','destroy','4','1325867362','1325867362','1');
INSERT INTO `logs` VALUES ('1041','content','destroy','4','1325867362','1325867362','1');
INSERT INTO `logs` VALUES ('1042','content','destroy','5','1325867428','1325867428','1');
INSERT INTO `logs` VALUES ('1043','content','destroy','5','1325867428','1325867428','1');
INSERT INTO `logs` VALUES ('1044','download','destroy','6','1325867482','1325867482','1');
INSERT INTO `logs` VALUES ('1045','download','destroy','6','1325867482','1325867482','1');
INSERT INTO `logs` VALUES ('1046','user','update','1','1326110890','1326110890','1');
INSERT INTO `logs` VALUES ('1047','user','update','1','1326110924','1326110924','1');
INSERT INTO `logs` VALUES ('1048','user','update','1','1326111072','1326111072','1');
INSERT INTO `logs` VALUES ('1049','user','update','1','1326111252','1326111252','1');
INSERT INTO `logs` VALUES ('1050','user','update','1','1326111393','1326111393','1');
INSERT INTO `logs` VALUES ('1051','user','update','2','1326111596','1326111596','1');
INSERT INTO `logs` VALUES ('1052','user','update','2','1326111700','1326111700','1');
INSERT INTO `logs` VALUES ('1053','user','update','1','1326111750','1326111750','1');
INSERT INTO `logs` VALUES ('1054','user','update','2','1326111768','1326111768','1');
INSERT INTO `logs` VALUES ('1055','user','create','119','1326111812','1326111812','1');
INSERT INTO `logs` VALUES ('1056','user','create','120','1326111955','1326111955','1');
INSERT INTO `logs` VALUES ('1057','gallery','destroyfile','41','1326187054','1326187054','1');
INSERT INTO `logs` VALUES ('1058','gallery','create','0','1326187086','1326187086','1');
INSERT INTO `logs` VALUES ('1059','gallery','create','0','1326187091','1326187091','1');
INSERT INTO `logs` VALUES ('1060','gallery','create','164','1326187091','1326187091','1');
INSERT INTO `logs` VALUES ('1061','gallery','createfile','164','1326187107','1326187107','1');
INSERT INTO `logs` VALUES ('1062','comment','create','261','1326187127','1326187127','1');
INSERT INTO `logs` VALUES ('1063','comment','create','308','1326187151','1326187151','0');
INSERT INTO `logs` VALUES ('1065','download','destroy','0','1326193166','1326193166','0');
INSERT INTO `logs` VALUES ('1066','gallery','update','5','1326195589','1326195589','1');
INSERT INTO `logs` VALUES ('1067','gallery','destroy','5','1326195592','1326195592','1');
INSERT INTO `logs` VALUES ('1068','gallery','destroy','5','1326195592','1326195592','1');
INSERT INTO `logs` VALUES ('1069','gallery','update','6','1326195594','1326195594','1');
INSERT INTO `logs` VALUES ('1070','gallery','destroy','6','1326195596','1326195596','1');
INSERT INTO `logs` VALUES ('1071','gallery','destroy','6','1326195596','1326195596','1');
INSERT INTO `logs` VALUES ('1072','gallery','update','7','1326195598','1326195598','1');
INSERT INTO `logs` VALUES ('1073','gallery','destroy','7','1326195600','1326195600','1');
INSERT INTO `logs` VALUES ('1074','gallery','destroy','7','1326195600','1326195600','1');
INSERT INTO `logs` VALUES ('1075','gallery','update','8','1326195602','1326195602','1');
INSERT INTO `logs` VALUES ('1076','gallery','destroy','8','1326195604','1326195604','1');
INSERT INTO `logs` VALUES ('1077','gallery','destroy','8','1326195604','1326195604','1');
INSERT INTO `logs` VALUES ('1078','gallery','update','164','1326195607','1326195607','1');
INSERT INTO `logs` VALUES ('1079','gallery','destroy','164','1326195609','1326195609','1');
INSERT INTO `logs` VALUES ('1080','gallery','destroy','164','1326195609','1326195609','1');
INSERT INTO `logs` VALUES ('1081','gallery','update','2','1326212197','1326212197','1');
INSERT INTO `logs` VALUES ('1082','gallery','destroy','2','1326212200','1326212200','1');
INSERT INTO `logs` VALUES ('1083','gallery','destroy','2','1326212200','1326212200','1');
INSERT INTO `logs` VALUES ('1084','gallery','update','3','1326212202','1326212202','1');
INSERT INTO `logs` VALUES ('1085','gallery','destroy','3','1326212205','1326212205','1');
INSERT INTO `logs` VALUES ('1086','gallery','destroy','3','1326212205','1326212205','1');
INSERT INTO `logs` VALUES ('1087','gallery','create','0','1326212207','1326212207','1');
INSERT INTO `logs` VALUES ('1088','gallery','create','0','1326212281','1326212281','1');
INSERT INTO `logs` VALUES ('1089','gallery','create','0','1326212326','1326212326','1');
INSERT INTO `logs` VALUES ('1090','gallery','create','167','1326212326','1326212326','1');
INSERT INTO `logs` VALUES ('1091','gallery','update','167','1326212372','1326212372','1');
INSERT INTO `logs` VALUES ('1092','gallery','destroy','167','1326212374','1326212374','1');
INSERT INTO `logs` VALUES ('1093','gallery','destroy','167','1326212374','1326212374','1');
INSERT INTO `logs` VALUES ('1094','gallery','create','0','1326212376','1326212376','1');
INSERT INTO `logs` VALUES ('1095','gallery','create','0','1326212379','1326212379','1');
INSERT INTO `logs` VALUES ('1096','gallery','create','168','1326212379','1326212379','1');
INSERT INTO `logs` VALUES ('1097','gallery','update','168','1326212381','1326212381','1');
INSERT INTO `logs` VALUES ('1098','user','update','1','1326212883','1326212883','1');
INSERT INTO `logs` VALUES ('1099','user','update','1','1326213102','1326213102','1');
INSERT INTO `logs` VALUES ('1100','gallery','createfile','168','1326280247','1326280247','1');
INSERT INTO `logs` VALUES ('1101','user','password','1','1326302071','1326302071','1');
INSERT INTO `logs` VALUES ('1102','calendar','create','0','1326302312','1326302312','1');
INSERT INTO `logs` VALUES ('1104','download','destroy','0','1326302685','1326302685','0');
INSERT INTO `logs` VALUES ('1105','blog','create','0','1326302899','1326302899','1');
INSERT INTO `logs` VALUES ('1106','user','update','1','1326303203','1326303203','1');
INSERT INTO `logs` VALUES ('1107','user','update','1','1326303207','1326303207','1');
INSERT INTO `logs` VALUES ('1108','blog','update','225','1326357132','1326357132','1');
INSERT INTO `logs` VALUES ('1109','blog','update','225','1326357283','1326357283','1');
INSERT INTO `logs` VALUES ('1110','blog','update','225','1326357310','1326357310','1');
INSERT INTO `logs` VALUES ('1111','blog','update','225','1326357417','1326357417','1');
INSERT INTO `logs` VALUES ('1112','blog','update','225','1326357496','1326357496','1');
INSERT INTO `logs` VALUES ('1113','blog','update','225','1326357499','1326357499','1');
INSERT INTO `logs` VALUES ('1114','blog','update','225','1326357506','1326357506','1');
INSERT INTO `logs` VALUES ('1115','blog','update','225','1326357508','1326357508','1');
INSERT INTO `logs` VALUES ('1116','blog','update','225','1326357515','1326357515','1');
INSERT INTO `logs` VALUES ('1117','blog','update','225','1326357668','1326357668','1');
INSERT INTO `logs` VALUES ('1118','blog','update','225','1326357671','1326357671','1');
INSERT INTO `logs` VALUES ('1119','blog','update','0','1326357810','1326357810','1');
INSERT INTO `logs` VALUES ('1120','blog','update','0','1326357827','1326357827','1');
INSERT INTO `logs` VALUES ('1121','blog','update','225','1326357855','1326357855','1');
INSERT INTO `logs` VALUES ('1122','blog','update','225','1326357858','1326357858','1');
INSERT INTO `logs` VALUES ('1123','blog','update','225','1326357858','1326357858','1');
INSERT INTO `logs` VALUES ('1124','blog','update','225','1326357865','1326357865','1');
INSERT INTO `logs` VALUES ('1125','blog','update','225','1326357887','1326357887','1');
INSERT INTO `logs` VALUES ('1126','blog','update','225','1326357887','1326357887','1');
INSERT INTO `logs` VALUES ('1127','blog','update','225','1326357893','1326357893','1');
INSERT INTO `logs` VALUES ('1128','blog','update','225','1326357896','1326357896','1');
INSERT INTO `logs` VALUES ('1129','blog','update','225','1326357896','1326357896','1');
INSERT INTO `logs` VALUES ('1130','blog','update','225','1326357916','1326357916','1');
INSERT INTO `logs` VALUES ('1131','blog','update','225','1326357964','1326357964','1');
INSERT INTO `logs` VALUES ('1132','blog','update','225','1326357984','1326357984','1');
INSERT INTO `logs` VALUES ('1133','blog','update','225','1326357984','1326357984','1');
INSERT INTO `logs` VALUES ('1134','blog','update','225','1326358024','1326358024','1');
INSERT INTO `logs` VALUES ('1135','blog','update','225','1326358027','1326358027','1');
INSERT INTO `logs` VALUES ('1136','blog','update','225','1326358027','1326358027','1');
INSERT INTO `logs` VALUES ('1137','blog','update','225','1326358028','1326358028','1');
INSERT INTO `logs` VALUES ('1138','blog','update','225','1326358032','1326358032','1');
INSERT INTO `logs` VALUES ('1139','blog','update','225','1326358032','1326358032','1');
INSERT INTO `logs` VALUES ('1140','blog','update','4','1326358080','1326358080','1');
INSERT INTO `logs` VALUES ('1141','blog','update','4','1326358083','1326358083','1');
INSERT INTO `logs` VALUES ('1142','blog','update','4','1326358083','1326358083','1');
INSERT INTO `logs` VALUES ('1143','blog','update','4','1326358149','1326358149','1');
INSERT INTO `logs` VALUES ('1144','blog','update','4','1326361266','1326361266','1');
INSERT INTO `logs` VALUES ('1145','blog','update','225','1326361273','1326361273','1');
INSERT INTO `logs` VALUES ('1146','blog','update','225','1326361276','1326361276','1');
INSERT INTO `logs` VALUES ('1147','blog','update','225','1326361276','1326361276','1');
INSERT INTO `logs` VALUES ('1148','content','update','2','1326469924','1326469924','1');
INSERT INTO `logs` VALUES ('1149','gallery','create','0','1326470701','1326470701','1');
INSERT INTO `logs` VALUES ('1150','gallery','create','0','1326470706','1326470706','1');
INSERT INTO `logs` VALUES ('1151','gallery','create','170','1326470706','1326470706','1');
INSERT INTO `logs` VALUES ('1152','gallery','createfile','170','1326470730','1326470730','1');
INSERT INTO `logs` VALUES ('1153','gallery','createfile','168','1326730579','1326730579','1');
INSERT INTO `logs` VALUES ('1154','gallery','destroyfile','251','1326730583','1326730583','1');
INSERT INTO `logs` VALUES ('1155','blog','update','225','1326730709','1326730709','1');
INSERT INTO `logs` VALUES ('1156','blog','update','225','1326730715','1326730715','1');
INSERT INTO `logs` VALUES ('1157','blog','update','225','1326730715','1326730715','1');
INSERT INTO `logs` VALUES ('1158','user','password','1','1326806390','1326806390','1');
INSERT INTO `logs` VALUES ('1159','blog','create','0','1328554102','1328554102','1');
INSERT INTO `logs` VALUES ('1160','gallery','updatefile','243','1328554895','1328554895','1');
INSERT INTO `logs` VALUES ('1161','gallery','update','168','1328554916','1328554916','1');
INSERT INTO `logs` VALUES ('1162','gallery','update','168','1328554931','1328554931','1');
INSERT INTO `logs` VALUES ('1163','gallery','update','168','1328554931','1328554931','1');
INSERT INTO `logs` VALUES ('1164','gallery','update','168','1328555127','1328555127','1');
INSERT INTO `logs` VALUES ('1165','gallery','update','168','1328555147','1328555147','1');
INSERT INTO `logs` VALUES ('1166','gallery','update','168','1328555175','1328555175','1');
INSERT INTO `logs` VALUES ('1167','gallery','update','168','1328555200','1328555200','1');
INSERT INTO `logs` VALUES ('1168','blog','update','225','1328555207','1328555207','1');
INSERT INTO `logs` VALUES ('1169','gallery','update','168','1328555266','1328555266','1');
INSERT INTO `logs` VALUES ('1170','gallery','update','168','1328555293','1328555293','1');
INSERT INTO `logs` VALUES ('1171','gallery','update','168','1328555336','1328555336','1');
INSERT INTO `logs` VALUES ('1172','gallery','update','168','1328555350','1328555350','1');
INSERT INTO `logs` VALUES ('1173','gallery','update','168','1328555365','1328555365','1');
INSERT INTO `logs` VALUES ('1174','gallery','update','168','1328555378','1328555378','1');
INSERT INTO `logs` VALUES ('1175','gallery','update','168','1328555414','1328555414','1');
INSERT INTO `logs` VALUES ('1176','gallery','update','168','1328555430','1328555430','1');
INSERT INTO `logs` VALUES ('1177','gallery','update','168','1328555435','1328555435','1');
INSERT INTO `logs` VALUES ('1178','gallery','update','168','1328555468','1328555468','1');
INSERT INTO `logs` VALUES ('1179','gallery','update','168','1328555502','1328555502','1');
INSERT INTO `logs` VALUES ('1180','gallery','update','168','1328555518','1328555518','1');
INSERT INTO `logs` VALUES ('1181','gallery','update','168','1328555532','1328555532','1');
INSERT INTO `logs` VALUES ('1182','gallery','update','168','1328555543','1328555543','1');
INSERT INTO `logs` VALUES ('1183','gallery','update','168','1328555643','1328555643','1');
INSERT INTO `logs` VALUES ('1184','download','create','0','1328555762','1328555762','1');
INSERT INTO `logs` VALUES ('1185','calendar','create','0','1328555914','1328555914','1');
INSERT INTO `logs` VALUES ('1186','download','create','0','1328610534','1328610534','1');
INSERT INTO `logs` VALUES ('1187','download','create','0','1328610570','1328610570','1');
INSERT INTO `logs` VALUES ('1188','download','create','0','1328610572','1328610572','1');
INSERT INTO `logs` VALUES ('1189','download','create','0','1328610572','1328610572','1');
INSERT INTO `logs` VALUES ('1190','download','create','0','1328610572','1328610572','1');
INSERT INTO `logs` VALUES ('1191','download','create','0','1328610572','1328610572','1');
INSERT INTO `logs` VALUES ('1192','download','create','0','1328610597','1328610597','1');
INSERT INTO `logs` VALUES ('1193','download','create','0','1328610598','1328610598','1');
INSERT INTO `logs` VALUES ('1194','download','create','0','1328610598','1328610598','1');
INSERT INTO `logs` VALUES ('1195','download','create','0','1328610610','1328610610','1');
INSERT INTO `logs` VALUES ('1196','download','create','0','1328610637','1328610637','1');
INSERT INTO `logs` VALUES ('1197','download','create','0','1328610638','1328610638','1');
INSERT INTO `logs` VALUES ('1198','download','create','0','1328610638','1328610638','1');
INSERT INTO `logs` VALUES ('1199','download','create','0','1328610639','1328610639','1');
INSERT INTO `logs` VALUES ('1200','download','create','0','1328610657','1328610657','1');
INSERT INTO `logs` VALUES ('1201','download','create','0','1328610658','1328610658','1');
INSERT INTO `logs` VALUES ('1202','download','create','0','1328610658','1328610658','1');
INSERT INTO `logs` VALUES ('1203','download','create','0','1328610674','1328610674','1');
INSERT INTO `logs` VALUES ('1204','download','create','0','1328610675','1328610675','1');
INSERT INTO `logs` VALUES ('1205','download','create','0','1328610675','1328610675','1');
INSERT INTO `logs` VALUES ('1206','download','create','0','1328610675','1328610675','1');
INSERT INTO `logs` VALUES ('1207','download','create','0','1328610683','1328610683','1');
INSERT INTO `logs` VALUES ('1208','download','create','0','1328610684','1328610684','1');
INSERT INTO `logs` VALUES ('1209','download','create','0','1328610684','1328610684','1');
INSERT INTO `logs` VALUES ('1210','download','create','0','1328610684','1328610684','1');
INSERT INTO `logs` VALUES ('1211','download','create','0','1328610692','1328610692','1');
INSERT INTO `logs` VALUES ('1212','download','create','0','1328610696','1328610696','1');
INSERT INTO `logs` VALUES ('1213','download','create','0','1328610697','1328610697','1');
INSERT INTO `logs` VALUES ('1214','download','create','0','1328610697','1328610697','1');
INSERT INTO `logs` VALUES ('1215','download','create','0','1328610698','1328610698','1');
INSERT INTO `logs` VALUES ('1216','download','create','0','1328610698','1328610698','1');
INSERT INTO `logs` VALUES ('1217','download','create','0','1328610720','1328610720','1');
INSERT INTO `logs` VALUES ('1218','download','create','0','1328610726','1328610726','1');
INSERT INTO `logs` VALUES ('1219','download','create','0','1328610733','1328610733','1');
INSERT INTO `logs` VALUES ('1220','download','create','0','1328610740','1328610740','1');
INSERT INTO `logs` VALUES ('1221','download','create','0','1328610741','1328610741','1');
INSERT INTO `logs` VALUES ('1222','download','create','0','1328610741','1328610741','1');
INSERT INTO `logs` VALUES ('1223','download','create','0','1328610741','1328610741','1');
INSERT INTO `logs` VALUES ('1224','download','create','0','1328610752','1328610752','1');
INSERT INTO `logs` VALUES ('1225','download','create','0','1328610753','1328610753','1');
INSERT INTO `logs` VALUES ('1226','download','create','0','1328610753','1328610753','1');
INSERT INTO `logs` VALUES ('1227','download','create','0','1328610754','1328610754','1');
INSERT INTO `logs` VALUES ('1228','download','create','0','1328610754','1328610754','1');
INSERT INTO `logs` VALUES ('1229','download','create','0','1328610754','1328610754','1');
INSERT INTO `logs` VALUES ('1230','download','create','0','1328610774','1328610774','1');
INSERT INTO `logs` VALUES ('1231','download','create','0','1328610775','1328610775','1');
INSERT INTO `logs` VALUES ('1232','download','create','0','1328610775','1328610775','1');
INSERT INTO `logs` VALUES ('1233','download','create','0','1328610775','1328610775','1');
INSERT INTO `logs` VALUES ('1234','download','create','0','1328610775','1328610775','1');
INSERT INTO `logs` VALUES ('1235','download','create','0','1328610796','1328610796','1');
INSERT INTO `logs` VALUES ('1236','download','create','0','1328610835','1328610835','1');
INSERT INTO `logs` VALUES ('1237','download','create','0','1328610863','1328610863','1');
INSERT INTO `logs` VALUES ('1238','download','create','0','1328610938','1328610938','1');
INSERT INTO `logs` VALUES ('1239','download','create','0','1328610950','1328610950','1');
INSERT INTO `logs` VALUES ('1240','download','create','0','1328610997','1328610997','1');
INSERT INTO `logs` VALUES ('1241','download','create','0','1328611055','1328611055','1');
INSERT INTO `logs` VALUES ('1242','download','create','0','1328611083','1328611083','1');
INSERT INTO `logs` VALUES ('1243','download','create','0','1328611085','1328611085','1');
INSERT INTO `logs` VALUES ('1244','blog','update','225','1328611103','1328611103','1');
INSERT INTO `logs` VALUES ('1245','download','create','0','1328611106','1328611106','1');
INSERT INTO `logs` VALUES ('1246','download','create','0','1328611114','1328611114','1');
INSERT INTO `logs` VALUES ('1247','download','create','0','1328611145','1328611145','1');
INSERT INTO `logs` VALUES ('1248','download','create','0','1328611183','1328611183','1');
INSERT INTO `logs` VALUES ('1249','blog','update','225','1328611287','1328611287','1');
INSERT INTO `logs` VALUES ('1250','download','create','0','1328611290','1328611290','1');
INSERT INTO `logs` VALUES ('1251','download','create','0','1328611393','1328611393','1');
INSERT INTO `logs` VALUES ('1252','download','create','0','1328611416','1328611416','1');
INSERT INTO `logs` VALUES ('1253','download','create','0','1328611436','1328611436','1');
INSERT INTO `logs` VALUES ('1254','download','create','0','1328611488','1328611488','1');
INSERT INTO `logs` VALUES ('1255','download','create','0','1328611515','1328611515','1');
INSERT INTO `logs` VALUES ('1256','download','create','0','1328611581','1328611581','1');
INSERT INTO `logs` VALUES ('1257','download','create','0','1328611645','1328611645','1');
INSERT INTO `logs` VALUES ('1258','download','create','0','1328611706','1328611706','1');
INSERT INTO `logs` VALUES ('1259','blog','update','225','1328611735','1328611735','1');
INSERT INTO `logs` VALUES ('1260','download','create','0','1328611738','1328611738','1');
INSERT INTO `logs` VALUES ('1261','download','create','0','1328611787','1328611787','1');
INSERT INTO `logs` VALUES ('1262','download','create','0','1328611821','1328611821','1');
INSERT INTO `logs` VALUES ('1263','download','create','0','1328611904','1328611904','1');
INSERT INTO `logs` VALUES ('1264','download','create','0','1328611955','1328611955','1');
INSERT INTO `logs` VALUES ('1265','download','create','0','1328612004','1328612004','1');
INSERT INTO `logs` VALUES ('1266','download','create','0','1328612037','1328612037','1');
INSERT INTO `logs` VALUES ('1267','download','create','0','1328612084','1328612084','1');
INSERT INTO `logs` VALUES ('1268','download','create','0','1328612210','1328612210','1');
INSERT INTO `logs` VALUES ('1269','download','create','0','1328612850','1328612850','1');
INSERT INTO `logs` VALUES ('1270','download','create','0','1328612863','1328612863','1');
INSERT INTO `logs` VALUES ('1271','download','create','0','1328612875','1328612875','1');
INSERT INTO `logs` VALUES ('1272','download','create','0','1328612906','1328612906','1');
INSERT INTO `logs` VALUES ('1273','download','create','0','1328612907','1328612907','1');
INSERT INTO `logs` VALUES ('1274','download','create','0','1328612908','1328612908','1');
INSERT INTO `logs` VALUES ('1275','download','create','0','1328612929','1328612929','1');
INSERT INTO `logs` VALUES ('1276','download','create','0','1328612955','1328612955','1');
INSERT INTO `logs` VALUES ('1277','download','create','0','1328612957','1328612957','1');
INSERT INTO `logs` VALUES ('1278','download','create','0','1328612972','1328612972','1');
INSERT INTO `logs` VALUES ('1279','blog','create','0','1328612983','1328612983','1');
INSERT INTO `logs` VALUES ('1280','blog','create','0','1328613100','1328613100','1');
INSERT INTO `logs` VALUES ('1281','blog','create','0','1328613151','1328613151','1');
INSERT INTO `logs` VALUES ('1282','blog','create','0','1328613168','1328613168','1');
INSERT INTO `logs` VALUES ('1283','blog','create','0','1328613178','1328613178','1');
INSERT INTO `logs` VALUES ('1284','download','update','9','1328613238','1328613238','1');
INSERT INTO `logs` VALUES ('1285','download','update','9','1328613251','1328613251','1');
INSERT INTO `logs` VALUES ('1286','download','update','9','1328613259','1328613259','1');
INSERT INTO `logs` VALUES ('1287','download','update','9','1328613259','1328613259','1');
INSERT INTO `logs` VALUES ('1288','blog','update','225','1328614239','1328614239','1');
INSERT INTO `logs` VALUES ('1289','blog','update','225','1328614292','1328614292','1');
INSERT INTO `logs` VALUES ('1290','blog','update','225','1328614320','1328614320','1');
INSERT INTO `logs` VALUES ('1291','blog','update','225','1328614406','1328614406','1');
INSERT INTO `logs` VALUES ('1292','blog','update','225','1328614423','1328614423','1');
INSERT INTO `logs` VALUES ('1293','blog','update','225','1328614436','1328614436','1');
INSERT INTO `logs` VALUES ('1294','blog','update','225','1328614498','1328614498','1');
INSERT INTO `logs` VALUES ('1295','blog','update','225','1328614531','1328614531','1');
INSERT INTO `logs` VALUES ('1296','blog','update','225','1328614581','1328614581','1');
INSERT INTO `logs` VALUES ('1297','blog','update','225','1328614602','1328614602','1');
INSERT INTO `logs` VALUES ('1298','blog','update','225','1328614644','1328614644','1');
INSERT INTO `logs` VALUES ('1299','blog','update','225','1328614738','1328614738','1');
INSERT INTO `logs` VALUES ('1300','blog','update','225','1328614754','1328614754','1');
INSERT INTO `logs` VALUES ('1301','blog','update','225','1328614780','1328614780','1');
INSERT INTO `logs` VALUES ('1302','blog','update','225','1328614797','1328614797','1');
INSERT INTO `logs` VALUES ('1303','blog','update','225','1328614837','1328614837','1');
INSERT INTO `logs` VALUES ('1304','blog','update','225','1328614843','1328614843','1');
INSERT INTO `logs` VALUES ('1305','blog','update','225','1328614935','1328614935','1');
INSERT INTO `logs` VALUES ('1306','blog','update','225','1328614980','1328614980','1');
INSERT INTO `logs` VALUES ('1307','blog','update','225','1328615010','1328615010','1');
INSERT INTO `logs` VALUES ('1308','blog','update','225','1328615033','1328615033','1');
INSERT INTO `logs` VALUES ('1309','blog','update','225','1328615072','1328615072','1');
INSERT INTO `logs` VALUES ('1310','blog','update','225','1328615096','1328615096','1');
INSERT INTO `logs` VALUES ('1311','blog','update','225','1328615123','1328615123','1');
INSERT INTO `logs` VALUES ('1312','blog','update','225','1328615123','1328615123','1');
INSERT INTO `logs` VALUES ('1313','blog','update','225','1328615133','1328615133','1');
INSERT INTO `logs` VALUES ('1314','blog','update','225','1328615185','1328615185','1');
INSERT INTO `logs` VALUES ('1315','blog','update','225','1328615185','1328615185','1');
INSERT INTO `logs` VALUES ('1316','blog','update','225','1328615239','1328615239','1');
INSERT INTO `logs` VALUES ('1317','blog','update','225','1328615299','1328615299','1');
INSERT INTO `logs` VALUES ('1318','download','create','0','1328634837','1328634837','1');
INSERT INTO `logs` VALUES ('1319','download','create','0','1328634843','1328634843','1');
INSERT INTO `logs` VALUES ('1320','blog','create','0','1328634857','1328634857','1');
INSERT INTO `logs` VALUES ('1321','download','create','0','1328635074','1328635074','1');
INSERT INTO `logs` VALUES ('1322','blog','create','0','1329129885','1329129885','1');
INSERT INTO `logs` VALUES ('1323','gallery','create','0','1329129908','1329129908','1');
INSERT INTO `logs` VALUES ('1324','calendar','create','0','1329129926','1329129926','1');
INSERT INTO `logs` VALUES ('1325','download','create','0','1329129947','1329129947','1');
INSERT INTO `logs` VALUES ('1327','download','destroy','0','1329132892','1329132892','0');
INSERT INTO `logs` VALUES ('1328','gallery','updatefile','248','1329218038','1329218038','1');
INSERT INTO `logs` VALUES ('1329','gallery','update','170','1329237191','1329237191','1');
INSERT INTO `logs` VALUES ('1330','blog','update','225','1329237206','1329237206','1');
INSERT INTO `logs` VALUES ('1331','blog','update','4','1329237217','1329237217','1');
INSERT INTO `logs` VALUES ('1332','blog','update','225','1329237236','1329237236','1');
INSERT INTO `logs` VALUES ('1333','blog','update','225','1329237312','1329237312','1');
INSERT INTO `logs` VALUES ('1334','blog','update','225','1329237325','1329237325','1');
INSERT INTO `logs` VALUES ('1335','blog','update','225','1329237325','1329237325','1');
INSERT INTO `logs` VALUES ('1336','blog','update','225','1329237354','1329237354','1');
INSERT INTO `logs` VALUES ('1337','blog','update','225','1329237414','1329237414','1');
INSERT INTO `logs` VALUES ('1338','blog','update','225','1329237704','1329237704','1');
INSERT INTO `logs` VALUES ('1339','blog','update','225','1329237764','1329237764','1');
INSERT INTO `logs` VALUES ('1340','blog','update','225','1329237885','1329237885','1');
INSERT INTO `logs` VALUES ('1341','blog','update','225','1329237885','1329237885','1');
INSERT INTO `logs` VALUES ('1342','blog','update','225','1329237927','1329237927','1');
INSERT INTO `logs` VALUES ('1343','blog','update','225','1329237949','1329237949','1');
INSERT INTO `logs` VALUES ('1344','blog','update','225','1329237965','1329237965','1');
INSERT INTO `logs` VALUES ('1345','blog','update','225','1329238054','1329238054','1');
INSERT INTO `logs` VALUES ('1346','blog','update','225','1329238208','1329238208','1');
INSERT INTO `logs` VALUES ('1347','blog','update','225','1329238216','1329238216','1');
INSERT INTO `logs` VALUES ('1348','blog','update','225','1329238229','1329238229','1');
INSERT INTO `logs` VALUES ('1349','blog','update','225','1329238312','1329238312','1');
INSERT INTO `logs` VALUES ('1350','blog','update','225','1329238313','1329238313','1');
INSERT INTO `logs` VALUES ('1351','blog','update','225','1329238322','1329238322','1');
INSERT INTO `logs` VALUES ('1352','blog','update','225','1329238322','1329238322','1');
INSERT INTO `logs` VALUES ('1353','blog','update','225','1329238345','1329238345','1');
INSERT INTO `logs` VALUES ('1354','blog','update','225','1329238407','1329238407','1');
INSERT INTO `logs` VALUES ('1355','blog','update','225','1329238429','1329238429','1');
INSERT INTO `logs` VALUES ('1356','blog','update','225','1329238439','1329238439','1');
INSERT INTO `logs` VALUES ('1357','blog','update','225','1329238461','1329238461','1');
INSERT INTO `logs` VALUES ('1358','blog','update','225','1329238508','1329238508','1');
INSERT INTO `logs` VALUES ('1359','blog','update','225','1329238519','1329238519','1');
INSERT INTO `logs` VALUES ('1360','blog','update','225','1329238520','1329238520','1');
INSERT INTO `logs` VALUES ('1361','blog','update','225','1329238573','1329238573','1');
INSERT INTO `logs` VALUES ('1362','blog','update','225','1329238582','1329238582','1');
INSERT INTO `logs` VALUES ('1363','blog','update','225','1329238582','1329238582','1');
INSERT INTO `logs` VALUES ('1364','blog','update','225','1329238713','1329238713','1');
INSERT INTO `logs` VALUES ('1365','blog','update','225','1329238722','1329238722','1');
INSERT INTO `logs` VALUES ('1366','blog','update','225','1329238722','1329238722','1');
INSERT INTO `logs` VALUES ('1367','blog','update','225','1329238726','1329238726','1');
INSERT INTO `logs` VALUES ('1368','blog','update','225','1329238758','1329238758','1');
INSERT INTO `logs` VALUES ('1369','blog','update','225','1329238923','1329238923','1');
INSERT INTO `logs` VALUES ('1370','blog','update','225','1329238944','1329238944','1');
INSERT INTO `logs` VALUES ('1371','blog','update','225','1329239587','1329239587','1');
INSERT INTO `logs` VALUES ('1372','blog','update','225','1329239607','1329239607','1');
INSERT INTO `logs` VALUES ('1373','blog','update','225','1329239743','1329239743','1');
INSERT INTO `logs` VALUES ('1374','blog','update','225','1329239760','1329239760','1');
INSERT INTO `logs` VALUES ('1375','blog','update','225','1329239895','1329239895','1');
INSERT INTO `logs` VALUES ('1376','blog','update','225','1329239976','1329239976','1');
INSERT INTO `logs` VALUES ('1377','blog','update','225','1329297599','1329297599','1');
INSERT INTO `logs` VALUES ('1378','blog','update','225','1329297602','1329297602','1');
INSERT INTO `logs` VALUES ('1379','blog','update','225','1329297654','1329297654','1');
INSERT INTO `logs` VALUES ('1380','blog','update','225','1329297654','1329297654','1');
INSERT INTO `logs` VALUES ('1381','blog','update','225','1329297660','1329297660','1');
INSERT INTO `logs` VALUES ('1382','blog','update','225','1329298017','1329298017','1');
INSERT INTO `logs` VALUES ('1383','blog','update','225','1329298017','1329298017','1');
INSERT INTO `logs` VALUES ('1384','blog','update','225','1329298021','1329298021','1');
INSERT INTO `logs` VALUES ('1385','blog','update','225','1329298161','1329298161','1');
INSERT INTO `logs` VALUES ('1386','blog','update','225','1329298191','1329298191','1');
INSERT INTO `logs` VALUES ('1387','blog','update','225','1329298196','1329298196','1');
INSERT INTO `logs` VALUES ('1388','blog','update','225','1329298210','1329298210','1');
INSERT INTO `logs` VALUES ('1389','blog','update','225','1329298228','1329298228','1');
INSERT INTO `logs` VALUES ('1390','blog','update','225','1329298335','1329298335','1');
INSERT INTO `logs` VALUES ('1391','blog','update','225','1329298355','1329298355','1');
INSERT INTO `logs` VALUES ('1392','blog','update','225','1329298365','1329298365','1');
INSERT INTO `logs` VALUES ('1393','blog','update','225','1329298380','1329298380','1');
INSERT INTO `logs` VALUES ('1394','blog','update','225','1329298432','1329298432','1');
INSERT INTO `logs` VALUES ('1395','blog','update','225','1329298441','1329298441','1');
INSERT INTO `logs` VALUES ('1396','blog','update','225','1329298655','1329298655','1');
INSERT INTO `logs` VALUES ('1397','blog','update','225','1329298797','1329298797','1');
INSERT INTO `logs` VALUES ('1398','blog','update','225','1329298887','1329298887','1');
INSERT INTO `logs` VALUES ('1399','blog','update','225','1329298951','1329298951','1');
INSERT INTO `logs` VALUES ('1400','blog','update','225','1329299011','1329299011','1');
INSERT INTO `logs` VALUES ('1401','calendar','create','0','1329299122','1329299122','1');
INSERT INTO `logs` VALUES ('1402','calendar','create','0','1329299158','1329299158','1');
INSERT INTO `logs` VALUES ('1403','calendar','create','0','1329299186','1329299186','1');
INSERT INTO `logs` VALUES ('1404','content','create','0','1329299246','1329299246','1');
INSERT INTO `logs` VALUES ('1405','content','create','0','1329299314','1329299314','1');
INSERT INTO `logs` VALUES ('1406','content','create','0','1329299335','1329299335','1');
INSERT INTO `logs` VALUES ('1407','content','create','0','1329299824','1329299824','1');
INSERT INTO `logs` VALUES ('1408','content','create','0','1329299908','1329299908','1');
INSERT INTO `logs` VALUES ('1409','content','create','0','1329299923','1329299923','1');
INSERT INTO `logs` VALUES ('1410','content','create','0','1329299963','1329299963','1');
INSERT INTO `logs` VALUES ('1411','content','create','0','1329300094','1329300094','1');
INSERT INTO `logs` VALUES ('1412','content','create','0','1329300159','1329300159','1');
INSERT INTO `logs` VALUES ('1413','content','update','2','1329300166','1329300166','1');
INSERT INTO `logs` VALUES ('1414','content','update','2','1329300184','1329300184','1');
INSERT INTO `logs` VALUES ('1415','content','update','2','1329300214','1329300214','1');
INSERT INTO `logs` VALUES ('1416','download','create','0','1329300334','1329300334','1');
INSERT INTO `logs` VALUES ('1417','download','create','0','1329300361','1329300361','1');
INSERT INTO `logs` VALUES ('1418','gallery','create','0','1329300454','1329300454','1');
INSERT INTO `logs` VALUES ('1419','gallery','create','0','1329300481','1329300481','1');
INSERT INTO `logs` VALUES ('1420','gallery','create','0','1329300517','1329300517','1');
INSERT INTO `logs` VALUES ('1421','download','create','0','1329300534','1329300534','1');
INSERT INTO `logs` VALUES ('1422','content','update','2','1329300547','1329300547','1');
INSERT INTO `logs` VALUES ('1423','content','update','2','1329300559','1329300559','1');
INSERT INTO `logs` VALUES ('1424','blog','update','225','1329300585','1329300585','1');
INSERT INTO `logs` VALUES ('1425','blog','update','225','1329302902','1329302902','1');
INSERT INTO `logs` VALUES ('1426','blog','update','4','1329302953','1329302953','1');
INSERT INTO `logs` VALUES ('1427','blog','update','4','1329302962','1329302962','1');
INSERT INTO `logs` VALUES ('1428','blog','update','4','1329302962','1329302962','1');
INSERT INTO `logs` VALUES ('1429','comment','create','309','1329303450','1329303450','1');
INSERT INTO `logs` VALUES ('1430','blog','create','0','1329303555','1329303555','1');
INSERT INTO `logs` VALUES ('1431','blog','update','4','1329305674','1329305674','1');
INSERT INTO `logs` VALUES ('1432','blog','update','4','1329305696','1329305696','1');
INSERT INTO `logs` VALUES ('1433','blog','update','4','1329305696','1329305696','1');
INSERT INTO `logs` VALUES ('1434','comment','destroy','100','1329306608','1329306608','1');
INSERT INTO `logs` VALUES ('1435','comment','destroy','100','1329306608','1329306608','1');
INSERT INTO `logs` VALUES ('1436','download','create','0','1329309856','1329309856','1');
INSERT INTO `logs` VALUES ('1437','blog','update','1','1329319543','1329319543','1');
INSERT INTO `logs` VALUES ('1438','blog','update','1','1329319556','1329319556','1');
INSERT INTO `logs` VALUES ('1439','blog','update','1','1329319556','1329319556','1');
INSERT INTO `logs` VALUES ('1440','gallery','update','170','1329324964','1329324964','1');
INSERT INTO `logs` VALUES ('1441','gallery','destroy','170','1329324985','1329324985','1');
INSERT INTO `logs` VALUES ('1442','gallery','destroy','170','1329324985','1329324985','1');
INSERT INTO `logs` VALUES ('1443','blog','update','225','1329325077','1329325077','1');
INSERT INTO `logs` VALUES ('1444','download','update','8','1329325150','1329325150','1');
INSERT INTO `logs` VALUES ('1445','content','update','1','1329325274','1329325274','1');
INSERT INTO `logs` VALUES ('1446','blog','update','225','1329325799','1329325799','1');
INSERT INTO `logs` VALUES ('1447','blog','create','0','1329328347','1329328347','1');
INSERT INTO `logs` VALUES ('1448','blog','create','0','1329387664','1329387664','1');
INSERT INTO `logs` VALUES ('1449','calendar','create','0','1329399967','1329399967','1');
INSERT INTO `logs` VALUES ('1450','gallery','create','0','1329402622','1329402622','1');
INSERT INTO `logs` VALUES ('1451','user','update','1','1329402705','1329402705','1');
INSERT INTO `logs` VALUES ('1452','download','create','0','1329402735','1329402735','1');
INSERT INTO `logs` VALUES ('1453','comment','create','314','1329403581','1329403581','1');
INSERT INTO `logs` VALUES ('1454','comment','create','315','1329486587','1329486587','1');
INSERT INTO `logs` VALUES ('1455','user','update','4','1331057981','1331057981','1');
INSERT INTO `logs` VALUES ('1456','gallery','create','172','1331058875','1331058875','1');
INSERT INTO `logs` VALUES ('1457','gallery','create','173','1331058886','1331058886','1');
INSERT INTO `logs` VALUES ('1458','mail','create','1','1331122728','1331122728','0');
INSERT INTO `logs` VALUES ('1459','mail','create','1','1331122779','1331122779','0');
INSERT INTO `logs` VALUES ('1460','comment','create','316','1331230798','1331230798','0');
INSERT INTO `logs` VALUES ('1461','calendar','update','134','1331231179','1331231179','1');
INSERT INTO `logs` VALUES ('1462','gallery','updatefile','243','1331231313','1331231313','1');
INSERT INTO `logs` VALUES ('1463','content','update','3','1331231572','1331231572','1');
INSERT INTO `logs` VALUES ('1464','user','update','1','1331317764','1331317764','1');
INSERT INTO `logs` VALUES ('1465','user','update','1','1331317820','1331317820','1');
INSERT INTO `logs` VALUES ('1466','comment','create','317','1331549088','1331549088','1');
INSERT INTO `logs` VALUES ('1467','user','update','1','1331549470','1331549470','1');
INSERT INTO `logs` VALUES ('1468','gallery','destroy','173','1331727621','1331727621','1');
INSERT INTO `logs` VALUES ('1469','gallery','update','172','1331727901','1331727901','1');
INSERT INTO `logs` VALUES ('1470','blogs','create','231','1331731985','1331731985','1');
INSERT INTO `logs` VALUES ('1472','logs','destroy','1471','1331740487','1331740487','1');
INSERT INTO `logs` VALUES ('1473','galleries','updatefile','243','1331809900','1331809900','1');
INSERT INTO `logs` VALUES ('1474','galleries','update','168','1331809918','1331809918','1');
INSERT INTO `logs` VALUES ('1475','comment','create','318','1331813878','1331813878','0');
INSERT INTO `logs` VALUES ('1476','galleries','create','174','1331815816','1331815816','1');
INSERT INTO `logs` VALUES ('1477','comments','create','320','1331822682','1331822682','0');
INSERT INTO `logs` VALUES ('1478','users','update','1','1332162525','1332162525','1');
INSERT INTO `logs` VALUES ('1479','mails','create','1','1332243526','1332243526','0');
INSERT INTO `logs` VALUES ('1480','mails','create','1','1332244017','1332244017','0');
INSERT INTO `logs` VALUES ('1481','users','update','1','1332250775','1332250775','1');
INSERT INTO `logs` VALUES ('1482','galleries','createfile','172','1332256197','1332256197','1');
INSERT INTO `logs` VALUES ('1483','galleries','destroyfile','254','1332256213','1332256213','1');
INSERT INTO `logs` VALUES ('1484','galleries','destroyfile','253','1332256225','1332256225','1');
INSERT INTO `logs` VALUES ('1485','galleries','createfile','172','1332257165','1332257165','1');
INSERT INTO `logs` VALUES ('1486','galleries','createfile','172','1332257251','1332257251','1');
INSERT INTO `logs` VALUES ('1487','galleries','destroyfile','258','1332257265','1332257265','1');
INSERT INTO `logs` VALUES ('1488','galleries','destroyfile','257','1332257271','1332257271','1');
INSERT INTO `logs` VALUES ('1489','blogs','update','231','1332326585','1332326585','1');
INSERT INTO `logs` VALUES ('1490','comment','destroy','315','1332333423','1332333423','1');
INSERT INTO `logs` VALUES ('1491','users','update','1','1332417030','1332417030','1');
INSERT INTO `logs` VALUES ('1492','comments','create','321','1332420497','1332420497','1');
INSERT INTO `logs` VALUES ('1493','comments','create','326','1332844217','1332844217','0');
INSERT INTO `logs` VALUES ('1495','cronjob','create','0','1332864199','1332864199','0');
INSERT INTO `logs` VALUES ('1496','cronjob','create','0','1332864267','1332864267','0');
INSERT INTO `logs` VALUES ('1497','cronjob','create','0','1332942486','1332942488','0');
INSERT INTO `logs` VALUES ('1498','cronjob','execute','0','1333029123','1333029128','1');
INSERT INTO `logs` VALUES ('1499','cronjob','execute','0','1333095747','1333095751','1');
INSERT INTO `logs` VALUES ('1500','cronjob','execute','0','1333095753','1333095756','1');
INSERT INTO `logs` VALUES ('1501','cronjob','execute','0','1333095766','1333095768','1');
INSERT INTO `logs` VALUES ('1502','cronjob','execute','0','1333097623','1333097626','1');
INSERT INTO `logs` VALUES ('1503','cronjob','execute','0','1333097629','1333097631','1');
INSERT INTO `logs` VALUES ('1504','cronjob','execute','0','1333097634','1333097636','1');
INSERT INTO `logs` VALUES ('1505','cronjob','execute','0','1333097776','1333097785','1');
INSERT INTO `logs` VALUES ('1506','cronjob','execute','0','1333097861','1333097865','1');
INSERT INTO `logs` VALUES ('1507','cronjob','execute','0','1333097867','1333097872','1');
INSERT INTO `logs` VALUES ('1508','cronjob','execute','0','1333098006','1333098006','1');

#---------------------------------------------------------------#
# Table: migrations, Columns: 3
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
`id` int(11) NOT NULL,
`file` varchar(100) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: migrations, Rows: 8
#---------------------------------------------------------------#
INSERT INTO `migrations` VALUES ('5','20110504_add_blog_keywords.sql','1304601613');
INSERT INTO `migrations` VALUES ('6','20110505_add_content_kewords_and_teaser.sql','1304601618');
INSERT INTO `migrations` VALUES ('7','20110408_remove_parent_category.sql','1313421027');
INSERT INTO `migrations` VALUES ('8','20110815_alter_description_length.sql','1313421040');
INSERT INTO `migrations` VALUES ('9','20111106_create_calendar','1320740054');
INSERT INTO `migrations` VALUES ('10','20111222_renamed_user_rights.sql','1325012122');
INSERT INTO `migrations` VALUES ('11','20111223_removed_session_from_user.sql','1325064895');
INSERT INTO `migrations` VALUES ('12','20111227_add_session_table.sql','1325064897');

#---------------------------------------------------------------#
# Table: newsletters, Columns: 2
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
`id` smallint(5) NOT NULL,
`email` varchar(64) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE UNIQUE (`email`)
) AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: newsletters, Rows: 0
#---------------------------------------------------------------#

#---------------------------------------------------------------#
# Table: sessions, Columns: 5
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
`id` int(11) unsigned NOT NULL,
`user_id` int(11) NOT NULL,
`session` varchar(32) default NULL,
`ip` varchar(15) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: sessions, Rows: 109
#---------------------------------------------------------------#
INSERT INTO `sessions` VALUES ('11','1','NULL','127.0.0.1','1325065183');
INSERT INTO `sessions` VALUES ('12','1','NULL','127.0.0.1','1325690486');
INSERT INTO `sessions` VALUES ('13','95','NULL','','1325766249');
INSERT INTO `sessions` VALUES ('14','95','NULL','','1325766249');
INSERT INTO `sessions` VALUES ('15','95','NULL','','1325766322');
INSERT INTO `sessions` VALUES ('16','95','NULL','','1325766322');
INSERT INTO `sessions` VALUES ('17','95','NULL','','1325769090');
INSERT INTO `sessions` VALUES ('18','1','NULL','127.0.0.1','1325771959');
INSERT INTO `sessions` VALUES ('19','98','NULL','','1325772863');
INSERT INTO `sessions` VALUES ('20','99','NULL','','1325772938');
INSERT INTO `sessions` VALUES ('21','100','NULL','','1325773094');
INSERT INTO `sessions` VALUES ('22','101','NULL','','1325773236');
INSERT INTO `sessions` VALUES ('23','102','NULL','','1325773401');
INSERT INTO `sessions` VALUES ('24','103','NULL','','1325773430');
INSERT INTO `sessions` VALUES ('25','104','NULL','','1325773485');
INSERT INTO `sessions` VALUES ('26','105','NULL','','1325773845');
INSERT INTO `sessions` VALUES ('27','106','NULL','','1325774071');
INSERT INTO `sessions` VALUES ('28','107','NULL','','1325774138');
INSERT INTO `sessions` VALUES ('29','108','NULL','','1325774258');
INSERT INTO `sessions` VALUES ('30','108','NULL','','1325774258');
INSERT INTO `sessions` VALUES ('31','109','NULL','','1325774766');
INSERT INTO `sessions` VALUES ('32','110','NULL','','1325774907');
INSERT INTO `sessions` VALUES ('33','111','NULL','','1325775033');
INSERT INTO `sessions` VALUES ('34','111','NULL','','1325775058');
INSERT INTO `sessions` VALUES ('35','112','NULL','','1325775075');
INSERT INTO `sessions` VALUES ('36','112','NULL','','1325775075');
INSERT INTO `sessions` VALUES ('37','113','NULL','','1325775088');
INSERT INTO `sessions` VALUES ('38','113','NULL','','1325775088');
INSERT INTO `sessions` VALUES ('39','114','NULL','','1325775355');
INSERT INTO `sessions` VALUES ('40','114','NULL','','1325775355');
INSERT INTO `sessions` VALUES ('41','114','NULL','','1325775400');
INSERT INTO `sessions` VALUES ('42','115','NULL','','1325775425');
INSERT INTO `sessions` VALUES ('43','115','NULL','','1325775459');
INSERT INTO `sessions` VALUES ('44','115','NULL','','1325775460');
INSERT INTO `sessions` VALUES ('45','116','NULL','','1325775472');
INSERT INTO `sessions` VALUES ('46','116','NULL','','1325775472');
INSERT INTO `sessions` VALUES ('47','117','NULL','','1325775739');
INSERT INTO `sessions` VALUES ('48','117','NULL','','1325775739');
INSERT INTO `sessions` VALUES ('49','118','NULL','','1325850085');
INSERT INTO `sessions` VALUES ('50','118','NULL','','1325850085');
INSERT INTO `sessions` VALUES ('51','1','NULL','127.0.0.1','1326186441');
INSERT INTO `sessions` VALUES ('52','121','NULL','','1326193165');
INSERT INTO `sessions` VALUES ('53','121','NULL','','1326193165');
INSERT INTO `sessions` VALUES ('54','1','NULL','127.0.0.1','1326195580');
INSERT INTO `sessions` VALUES ('55','1','NULL','127.0.0.1','1326213129');
INSERT INTO `sessions` VALUES ('56','119','NULL','127.0.0.1','1326214250');
INSERT INTO `sessions` VALUES ('57','1','NULL','127.0.0.1','1326215368');
INSERT INTO `sessions` VALUES ('58','1','NULL','127.0.0.1','1326301448');
INSERT INTO `sessions` VALUES ('59','1','NULL','127.0.0.1','1326302079');
INSERT INTO `sessions` VALUES ('60','1','fdqfqf0d7r780trpp75e222ve4','127.0.0.1','1326302309');
INSERT INTO `sessions` VALUES ('61','122','NULL','','1326302684');
INSERT INTO `sessions` VALUES ('62','122','NULL','','1326302684');
INSERT INTO `sessions` VALUES ('63','1','NULL','127.0.0.1','1326469799');
INSERT INTO `sessions` VALUES ('64','1','5r5iukknmg5damk9h3gfc2jka2','127.0.0.1','1326469834');
INSERT INTO `sessions` VALUES ('65','1','NULL','127.0.0.1','1326806321');
INSERT INTO `sessions` VALUES ('66','1','NULL','127.0.0.1','1326806398');
INSERT INTO `sessions` VALUES ('67','1','mno4abneaiqu77fon66ij0tgr4','127.0.0.1','1328265708');
INSERT INTO `sessions` VALUES ('68','1','NULL','127.0.0.1','1328554086');
INSERT INTO `sessions` VALUES ('69','1','NULL','127.0.0.1','1328554886');
INSERT INTO `sessions` VALUES ('70','1','NULL','127.0.0.1','1328626047');
INSERT INTO `sessions` VALUES ('71','1','8bpr4ppplu1192boqcctv5pc06','127.0.0.1','1328634826');
INSERT INTO `sessions` VALUES ('72','123','NULL','','1329132889');
INSERT INTO `sessions` VALUES ('73','123','NULL','','1329132889');
INSERT INTO `sessions` VALUES ('74','1','NULL','127.0.0.1','1329138346');
INSERT INTO `sessions` VALUES ('75','1','NULL','127.0.0.1','1329214087');
INSERT INTO `sessions` VALUES ('76','1','NULL','127.0.0.1','1329301500');
INSERT INTO `sessions` VALUES ('77','1','v2amopc471kinsbgh18830olt0','127.0.0.1','1329309830');
INSERT INTO `sessions` VALUES ('78','1','NULL','127.0.0.1','1329324957');
INSERT INTO `sessions` VALUES ('79','1','495dgrrs9g5c8asutt54avvfc7','127.0.0.1','1329325070');
INSERT INTO `sessions` VALUES ('80','1','NULL','127.0.0.1','1329325668');
INSERT INTO `sessions` VALUES ('81','1','NULL','127.0.0.1','1329403002');
INSERT INTO `sessions` VALUES ('82','1','b3fhkj41d0lt7u8pf1opkibii7','127.0.0.1','1329403529');
INSERT INTO `sessions` VALUES ('83','1','sabo9sj08hb1jo46iqqm8obf12','127.0.0.1','1329485908');
INSERT INTO `sessions` VALUES ('84','1','vc84o043kd9rdp3f92orejv6b5','127.0.0.1','1329498407');
INSERT INTO `sessions` VALUES ('85','1','NULL','127.0.0.1','1329734675');
INSERT INTO `sessions` VALUES ('86','1','NULL','127.0.0.1','1329741796');
INSERT INTO `sessions` VALUES ('87','1','ag4b0vo6q33na4b96ds1e8cpp1','127.0.0.1','1330704815');
INSERT INTO `sessions` VALUES ('88','1','NULL','127.0.0.1','1331057953');
INSERT INTO `sessions` VALUES ('89','1','NULL','127.0.0.1','1331142240');
INSERT INTO `sessions` VALUES ('90','1','NULL','127.0.0.1','1331142606');
INSERT INTO `sessions` VALUES ('91','1','NULL','127.0.0.1','1331231068');
INSERT INTO `sessions` VALUES ('92','1','NULL','127.0.0.1','1331291850');
INSERT INTO `sessions` VALUES ('93','1','NULL','127.0.0.1','1331309917');
INSERT INTO `sessions` VALUES ('94','1','NULL','127.0.0.1','1331310077');
INSERT INTO `sessions` VALUES ('95','1','qcnqc354l9pfud6tvtlt5r20d2','127.0.0.1','1331317267');
INSERT INTO `sessions` VALUES ('96','1','qcnqc354l9pfud6tvtlt5r20d2','127.0.0.1','1331549453');
INSERT INTO `sessions` VALUES ('97','1','NULL','127.0.0.1','1331639832');
INSERT INTO `sessions` VALUES ('98','1','NULL','127.0.0.1','1331665429');
INSERT INTO `sessions` VALUES ('99','1','NULL','127.0.0.1','1331665448');
INSERT INTO `sessions` VALUES ('100','1','NULL','127.0.0.1','1331727536');
INSERT INTO `sessions` VALUES ('101','1','NULL','127.0.0.1','1331736817');
INSERT INTO `sessions` VALUES ('102','1','NULL','127.0.0.1','1331815483');
INSERT INTO `sessions` VALUES ('103','1','NULL','127.0.0.1','1331816228');
INSERT INTO `sessions` VALUES ('104','1','NULL','127.0.0.1','1331818816');
INSERT INTO `sessions` VALUES ('105','1','NULL','127.0.0.1','1331907653');
INSERT INTO `sessions` VALUES ('106','1','223f2ak1rsgd4l1be1osh3mut7','127.0.0.1','1332162427');
INSERT INTO `sessions` VALUES ('107','1','NULL','127.0.0.1','1332326569');
INSERT INTO `sessions` VALUES ('108','1','NULL','127.0.0.1','1332333218');
INSERT INTO `sessions` VALUES ('109','1','t4lr0tmjaolkehlsgfvlngrs14','127.0.0.1','1332416733');
INSERT INTO `sessions` VALUES ('110','124','NULL','','1332517723');
INSERT INTO `sessions` VALUES ('111','124','NULL','','1332517723');
INSERT INTO `sessions` VALUES ('112','125','NULL','','1332517771');
INSERT INTO `sessions` VALUES ('113','125','NULL','','1332517771');
INSERT INTO `sessions` VALUES ('114','1','t4lr0tmjaolkehlsgfvlngrs14','127.0.0.1','1332520152');
INSERT INTO `sessions` VALUES ('115','1','NULL','127.0.0.1','1332838280');
INSERT INTO `sessions` VALUES ('116','1','NULL','127.0.0.1','1332842609');
INSERT INTO `sessions` VALUES ('117','126','','','1332844463');
INSERT INTO `sessions` VALUES ('118','126','','','1332844463');
INSERT INTO `sessions` VALUES ('119','1','alnm344qj14228di09jgmsksf3','127.0.0.1','1332853316');

#---------------------------------------------------------------#
# Table: test_blogs, Columns: 11
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_blogs`;
CREATE TABLE `test_blogs` (
`id` smallint(5) NOT NULL,
`author_id` smallint(5) NOT NULL default '1',
`title` varchar(128) NOT NULL,
`teaser` varchar(140) default NULL,
`tags` varchar(128) default NULL,
`keywords` varchar(160) default NULL,
`content` text NOT NULL,
`language` varchar(2) NOT NULL default 'en',
`date` int(11) default NULL,
`date_modified` int(11) default NULL,
`published` tinyint(1) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_blogs, Rows: 13
#---------------------------------------------------------------#
INSERT INTO `test_blogs` VALUES ('1','1','test','','test','','<p>I\\\'ve been very impressed by the new Batman Trailer, so here it is as an High Definition Demo.<br />[video]http://phpcms.localhost/upload/media/1212436323850[/video]</p>','de','1278930375','0','1');
INSERT INTO `test_blogs` VALUES ('6','1','Neuer Blog','','Blog, Webseite','','<p>Lang ist\\\'s her, dass ich einen aktiven Blog geführt habe. Genauergesagt war mein letzter richtiger Eintrag vom 30.09.2008 (vgl.  <a href=\\\"http://privat.marcoraddatz.com/\\\" target=\\\"_blank\\\">http://privat.marcoraddatz.com</a>).Schande über mein Haupt! Es ist ja nicht so, als hätte ich nichtserlebt... Im Gegenteil: Es war eine wirklich ereignisreiche Zeit!Leiderhatte ich nicht immer die Motivation und die Zeit, meine Gedanken undErlebnisse niederzuschreiben. Die Hoffnung stirbt zuletzt - darum starteich nun einen neuen Versuch.</p>
<p>Die größte Veränderung ist vielleicht, dass ich zwar noch Student bin, aber das auch nur auf dem Papier. Zusammen mit  <a href=\\\"http://tielefeld.com/\\\" target=\\\"_blank\\\">Till</a> gründete ich im Mai 2008 eine  <a href=\\\"http://empuxa.com/\\\" target=\\\"_blank\\\">kleine Softwareschmiede</a>,die mittlerweile zwei Angestellte und ein nettes Büro im KITZ umfasst.Ab dem 1. August werde ich zudem meine Ausbildung als Fachinformatikerbeginnen.</p>
<p>Für einen Kunden erstellten wir die gesamte Intranetlösung für das  <a href=\\\"http://wacken.com/\\\" target=\\\"_blank\\\">Wacken Open Air</a>. Da wir vor Ort sein werden, sehe ich das als guten Anlass, endlich mal wieder mehr zu schreiben!</p>','de','1285257150','0','0');
INSERT INTO `test_blogs` VALUES ('13','1','gdfgdfg','fdgdfdgdfg','gdfg','','<p>dfgdfgdfgdf</p>','de','1288101376','','0');
INSERT INTO `test_blogs` VALUES ('14','1','ghfgh','ghjhg','gh','','<p>jhgjgh</p>','de','1288101410','','0');
INSERT INTO `test_blogs` VALUES ('3','1','adasd','','asdasdas','','<p>Lang ist\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s her, dass ich einen aktiven Blog gef?�hrt habe. Genauergesagt war mein letzter richtiger Eintrag vom 30.09.2008. Es ist jaleider nicht so, dass ich nicht ?�lter werde - im Gegenteil: Ich f?�hlemich mit meinen 25 Lenzen mittlerweile verdammt alt.</p>
<p>Nunja, es hat sich viel ver?�ndert die letzten beiden Jahre. Zwar binich noch Student - aber das auch nur auf dem Papier. Aus der gemeinsamenFirma mit Till (gegr?�ndet 10/2009) wurde mittlerweile eine GmbH und ausmir wird ab dem 1. August offiziell ein Lehrling.</p>
<p>F?�r einenKunden erstellten wir die gesamte Intranetl??sung f?�r das Wacken OpenAir. Wenn das mal kein Anlass ist, wieder regelm?�?�ig zu schreiben!</p>
<p>[toggle=Es gibt...]</p>
<div id=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;toggle16037\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\">
<div id=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player50944\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\" class=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\"><a href=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\">Downloade den Flashplayer, um dieses Video anzugucken!</a></div>
<div class=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\">[/toggle]</div>
<div class=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\">
<p>[toggle=Es gibt...]</p>
<div id=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player50944\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\" class=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\"><a href=\\\"%5C%5C\\\">Downloade den Flashplayer, um dieses Video anzugucken!</a></div>
[/toggle]</div>
<script type=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text/javascript\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\">// <![CDATA[
new Swiff(\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"http://phpcms.localhost/public/flv/mediaplayer.swf\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\", {id: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"50944\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",width: 720,height: 405,container:\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"media_player50944\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",params:{allowfullscreen: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"true\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"},vars:{file:\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"http://phpcms.localhost/upload/media/SamplePlayer.xml\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",config:\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"http://phpcms.localhost/public/flv/config.xml\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"}});
// ]]></script>
</div>
<p>�?</p>
<p>[toggle=Es gibt...]</p>
<div id=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player50944\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\" class=\\\"\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;media_player\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\"><a href=\\\"%5C%5C\\\">Downloade den Flashplayer, um dieses Video anzugucken!</a></div>
<p>[/toggle]</p>','de','1279037726','0','0');
INSERT INTO `test_blogs` VALUES ('5','1','asdasd','asdadasdsadasdasdas','','','<p>Here?s a cool script for using with your applications if you wouldlike to limit the number of characters in a textarea as well as show auser how many characters they have left.</p>
<p>I wrote this using <a href=\\\"http://mootools.net/\\\">Mootools</a> <em>event</em> and <em>domready</em> Event classes. For this to work you?ll need to have Mootools Event andDomReady classes. Then embed that file in the top of your document.</p>
<p>Feel free to use it, but if you think it?s sweet links here wouldn?t hurt?Ķ but that?s up to you! Have fun!</p>','de','1282129647','0','1');
INSERT INTO `test_blogs` VALUES ('12','1','dsfsd','sdfdsfds','sdfdsf','','<p>fdsfsdfsd</p>','de','1287491790','0','0');
INSERT INTO `test_blogs` VALUES ('15','1','ghfgh','ghjhg','gh','','<p>jhgjgh</p>
<p> </p>
<ul>
<li>asdasd</li>
<li>asdasd</li>
<li>asdas</li>
</ul>','de','1288101483','0','0');
INSERT INTO `test_blogs` VALUES ('16','1','dfgdfg','ghfghgf','fghfgh','','<p>[video]http://vimeo.com/9679622[/video]</p>','de','1288101536','0','0');
INSERT INTO `test_blogs` VALUES ('17','1','234324','23423','324','','<p>23423423asdasdasadasda</p>
<p> </p>
<p>[code]<br />/*<br /> * This software is licensed under GPL .<br /> *<br /> * @link http://github.com/marcoraddatz/candyCMS<br /> * @author Marco Raddatz <br /> */<br /><br /># List of user rights<br />#--------------------------------------------------<br /># 0 = Guests / Unregistered Users<br /># 1 = Members<br /># 2 = Facebook users<br /># 3 = Moderators<br /># 4 = Administrators<br />#--------------------------------------------------<br /><br />error_reporting(E_ALL);<br />ini_set(\\\'arg_separator.output\\\', \\\'&amp;\\\');<br />ini_set(\\\'zlib.output_compression_level\\\', 9);<br />date_default_timezone_set(\\\'Europe/Berlin\\\');<br /><br />define(\\\'VERSION\\\', \\\'20101029\\\');<br /><br />try {<br /> if (!file_exists(\\\'app/models/Main.model.php\\\') ||<br /> !file_exists(\\\'app/controllers/Main.controller.php\\\') ||<br /> !file_exists(\\\'app/controllers/Search.controller.php\\\') ||<br /> !file_exists(\\\'app/controllers/Session.controller.php\\\') ||<br /> !file_exists(\\\'app/controllers/Index.controller.php\\\') ||<br /> !file_exists(\\\'app/helpers/AdvancedException.helper.php\\\') ||<br /> !file_exists(\\\'app/helpers/Section.helper.php\\\') ||<br /> !file_exists(\\\'app/helpers/Helper.helper.php\\\') ||<br /> !file_exists(\\\'lib/smarty/Smarty.class.php\\\')<br /> )<br /> throw new Exception(\\\'Could not load required classes.\\\');<br /> else {<br /> require_once \\\'app/models/Main.model.php\\\';<br /> require_once \\\'app/controllers/Main.controller.php\\\';<br /> require_once \\\'app/controllers/Search.controller.php\\\';<br /> require_once \\\'app/controllers/Session.controller.php\\\';<br /> require_once \\\'app/controllers/Index.controller.php\\\';<br /> require_once \\\'app/helpers/AdvancedException.helper.php\\\';<br /> require_once \\\'app/helpers/Section.helper.php\\\';<br /> require_once \\\'app/helpers/Helper.helper.php\\\';<br /><br /> # Smarty template parsing<br /> require_once \\\'lib/smarty/Smarty.class.php\\\';<br /> }<br />}<br />catch (AdvancedException $e) {<br /> die($e-&gt;getMessage());<br />}</p>
<p>[/code]</p>','de','1288101574','0','0');
INSERT INTO `test_blogs` VALUES ('18','1','sdfsdf','sdfsdfsdf','dsfsdfsd, asd, asd','','<p style=\\\"text-align: center;\\\">[img]http://phpcms.localhost/upload/media/fav_1272021941015.jpg[/img]</p>','de','1289561741','0','1');
INSERT INTO `test_blogs` VALUES ('19','1','Videotest','','','','<p>[audio]http://phpcms.localhost/upload/media/AirReview-Landmarks-02-ChasingCorporate.mp3[/audio]</p>','de','1291382449','0','1');
INSERT INTO `test_blogs` VALUES ('21','1','Title','teaser','Tag1, Tag2','Key1','<ul>
<li>testse</li>
<li>testestse</li>
</ul>','de','1303829666','0','1');

#---------------------------------------------------------------#
# Table: test_calendars, Columns: 7
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_calendars`;
CREATE TABLE `test_calendars` (
`id` int(11) unsigned NOT NULL,
`author_id` int(11) NOT NULL,
`title` varchar(128) NOT NULL,
`content` text default NULL,
`date` int(11) default NULL,
`start_date` date NOT NULL,
`end_date` date default NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_calendars, Rows: 0
#---------------------------------------------------------------#

#---------------------------------------------------------------#
# Table: test_comments, Columns: 10
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_comments`;
CREATE TABLE `test_comments` (
`id` int(9) NOT NULL,
`parent_id` int(9) NOT NULL,
`parent_category` char(1) NOT NULL default 'b',
`author_id` smallint(5) NOT NULL,
`author_facebook_id` int(15) default NULL,
`author_name` varchar(32) default NULL,
`author_email` varchar(64) default NULL,
`author_ip` varchar(15) default NULL,
`content` text NOT NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE parentID (`parent_id`),
 UNIQUE parentCat (`parent_category`)
) AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_comments, Rows: 89
#---------------------------------------------------------------#
INSERT INTO `test_comments` VALUES ('1','1','b','1','','','','','1651651231','1278943633');
INSERT INTO `test_comments` VALUES ('2','1','b','2','','','','','[quote=marco raddatz]
1651651231
[/quote]
','1278943642');
INSERT INTO `test_comments` VALUES ('3','1','b','1','','','','','[quote=marco raddatz]
&lt;div class=&quot;quote&quot;&gt;&lt;h3&gt;Zitat von marco raddatz&lt;/h3&gt;&lt;br&gt;
1651651231&lt;br&gt;
&lt;/div&gt;
[/quote]
','1278943771');
INSERT INTO `test_comments` VALUES ('4','1','b','2','','','','','Das ist mein Test!','1278943798');
INSERT INTO `test_comments` VALUES ('5','1','b','1','','','','','test','1279037200');
INSERT INTO `test_comments` VALUES ('6','1','b','1','','','','','assadasd','1279037237');
INSERT INTO `test_comments` VALUES ('7','1','b','1','','','','','test','1279037275');
INSERT INTO `test_comments` VALUES ('8','1','b','1','','','','','[quote=Admin Admin]
test
[/quote]
','1279037294');
INSERT INTO `test_comments` VALUES ('9','1','b','1','','','','','testset','1279037350');
INSERT INTO `test_comments` VALUES ('10','3','b','1','','','','','test','1279037780');
INSERT INTO `test_comments` VALUES ('11','3','b','1','','','','','test','1279037781');
INSERT INTO `test_comments` VALUES ('12','3','b','1','','','','','test','1279037802');
INSERT INTO `test_comments` VALUES ('13','3','b','1','','','','','asdasdas','1279037921');
INSERT INTO `test_comments` VALUES ('14','3','b','1','','','','','113123','1279037942');
INSERT INTO `test_comments` VALUES ('15','1','b','1','','','','','[quote=test test]
Das ist mein Test!
[/quote]
','1279040031');
INSERT INTO `test_comments` VALUES ('16','1','b','1','','','','','[quote=Admin Admin]
&lt;div class=&quot;quote&quot;&gt;&lt;h3&gt;Zitat von test test&lt;/h3&gt;&lt;br&gt;
Das ist mein Test!&lt;br&gt;
&lt;/div&gt;
[/quote]
','1279040673');
INSERT INTO `test_comments` VALUES ('17','1','b','1','','','','','[quote=Admin Admin]
&lt;div class=&quot;quote&quot;&gt;&lt;h3&gt;Zitat von test test&lt;/h3&gt;&lt;br&gt;
Das ist mein Test!&lt;br&gt;
&lt;/div&gt;
[/quote]
','1279040673');
INSERT INTO `test_comments` VALUES ('18','1','b','1','','','','','[quote=test test]
Das ist mein Test!
[/quote]
[quote=Admin Admin]
1651651231
[/quote]
','1279103184');
INSERT INTO `test_comments` VALUES ('19','1','b','1','','','','','[quote=test test]
&lt;div class=&quot;quote&quot;&gt;&lt;h3&gt;Zitat von marco raddatz&lt;/h3&gt;&lt;br&gt;
1651651231&lt;br&gt;
&lt;/div&gt;
[/quote]
[quote=Admin Admin]
&lt;div class=&quot;quote&quot;&gt;&lt;h3&gt;Zitat von marco raddatz&lt;/h3&gt;&lt;br&gt;
&lt;div class=&quot;quote&quot;&gt;&lt;h3&gt;Zitat von marco raddatz&lt;/h3&gt;&lt;br&gt;&lt;br&gt;
1651651231&lt;br&gt;&lt;br&gt;
&lt;/div&gt;&lt;br&gt;
&lt;/div&gt;
[/quote]
[quote=test test]
Das ist mein Test!
[/quote]
','1279104279');
INSERT INTO `test_comments` VALUES ('20','1','b','1','','','','','[quote=Admin Admin]
1651651231
[/quote]
[quote=test test]
Das ist mein Test!
[/quote]
[quote=Admin Admin]
test
[/quote]
','1279113459');
INSERT INTO `test_comments` VALUES ('22','3','b','1','','','','','asdasdsa','1281553217');
INSERT INTO `test_comments` VALUES ('23','3','b','1','','','','','test','1281613978');
INSERT INTO `test_comments` VALUES ('25','3','b','0','','dasdasdas','marco@empuxa.com','','asdasdasd','1282206516');
INSERT INTO `test_comments` VALUES ('26','3','b','0','','asdasdas','admin@example.com','','sadasdasdasdasda','1282206527');
INSERT INTO `test_comments` VALUES ('27','5','b','1','','','','','sadasdasdas','1282582617');
INSERT INTO `test_comments` VALUES ('29','5','b','1','','','','','test','1282657291');
INSERT INTO `test_comments` VALUES ('30','5','b','0','','Test','test@test.de','','test','1282745924');
INSERT INTO `test_comments` VALUES ('31','5','b','555','','','','','test','1282745966');
INSERT INTO `test_comments` VALUES ('42','5','b','1','','','marco@empuxa.com','127.0.0.1','&lt;scti&gt;&lt;/a&gt;','1283343663');
INSERT INTO `test_comments` VALUES ('33','5','b','555','','','marco@empuxa.com','127.0.0.1','sadasdasdas','1282746669');
INSERT INTO `test_comments` VALUES ('34','5','b','555','','','marco@empuxa.com','127.0.0.1','dsfsdfsdf','1282746866');
INSERT INTO `test_comments` VALUES ('35','5','b','0','','dsfsd','fsdfsdf@sdfsdf.de','127.0.0.1','dsfsdf','1282750358');
INSERT INTO `test_comments` VALUES ('36','5','b','1','','','marco@empuxa.com','127.0.0.1','sadsadasdas','1282750479');
INSERT INTO `test_comments` VALUES ('37','5','b','1','','','marco@empuxa.com','127.0.0.1','sadsadasdas','1282750489');
INSERT INTO `test_comments` VALUES ('38','5','b','0','','dsadasd','marco@empuasdadsaxa.com','127.0.0.1','sadasdasdasdas','1282839207');
INSERT INTO `test_comments` VALUES ('39','5','b','0','','asdas','marco@empuasdadsaxa.com','127.0.0.1','asdasdasd','1282896710');
INSERT INTO `test_comments` VALUES ('40','1','b','0','','testtest@test.de','testtest@test.de','127.0.0.1','testtest@test.de','1282900738');
INSERT INTO `test_comments` VALUES ('41','5','b','0','','123','','127.0.0.1','123','1282911976');
INSERT INTO `test_comments` VALUES ('43','5','b','1','','','marco@empuxa.com','127.0.0.1','\\&quot;asd\\&quot; \\\'asdas\\\'','1283343682');
INSERT INTO `test_comments` VALUES ('44','17','b','1','','','marco@empuxa.com','127.0.0.1','asdasdas','1288101687');
INSERT INTO `test_comments` VALUES ('45','55','b','0','','testes','','127.0.0.1','testse','1288184509');
INSERT INTO `test_comments` VALUES ('46','55','b','0','','dsfsdfds','','127.0.0.1','sdfsdfsdfdsfs','1288184550');
INSERT INTO `test_comments` VALUES ('47','1717','b','1','','','marco@empuxa.com','127.0.0.1','asdasdasdas','1288184595');
INSERT INTO `test_comments` VALUES ('48','17','b','1','','','marco@empuxa.com','127.0.0.1','sdfsdfdsfsd','1288184743');
INSERT INTO `test_comments` VALUES ('49','5','b','0','','sdfsfds','','127.0.0.1','sdfdsfsdfdsfds','1288184763');
INSERT INTO `test_comments` VALUES ('50','17','b','1','','','marco@empuxa.com','127.0.0.1','fgdfgdfgdf','1288201430');
INSERT INTO `test_comments` VALUES ('51','17','b','1','','','marco@empuxa.com','127.0.0.1','fghhfghfghf','1288201537');
INSERT INTO `test_comments` VALUES ('52','1','b','1','','','marco@empuxa.com','127.0.0.1','[quote=testtest@test.de]
testtest@test.de
[/quote]
','1288791806');
INSERT INTO `test_comments` VALUES ('53','17','b','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
fghhfghfghf
[/quote]
[quote=Marco Raddatz]
fgdfgdfgdf
[/quote]
[quote=Marco Raddatz]
sdfsdfdsfsd
[/quote]
[quote=Marco Raddatz]
asdasdas
[/quote]
','1288962144');
INSERT INTO `test_comments` VALUES ('54','5','b','24','0','','asdasdasd@planetk4.de','127.0.0.1','asdasdasdas','1289561567');
INSERT INTO `test_comments` VALUES ('55','17','b','1','0','','marco@empuxa.com','127.0.0.1','kjkhjkhj','1289561721');
INSERT INTO `test_comments` VALUES ('56','1','b','0','0','fghfghfghf','','127.0.0.1','hfghhfgh','1297437116');
INSERT INTO `test_comments` VALUES ('69','19','b','1','0','','marco@empuxa.com','127.0.0.1','asdasdasda','1303827965');
INSERT INTO `test_comments` VALUES ('58','19','b','1','0','','marco@empuxa.com','127.0.0.1','455','1303377427');
INSERT INTO `test_comments` VALUES ('59','19','b','1','0','','marco@empuxa.com','127.0.0.1','test','1303377456');
INSERT INTO `test_comments` VALUES ('60','19','b','1','0','','marco@empuxa.com','127.0.0.1','dsfsdfsdf','1303377598');
INSERT INTO `test_comments` VALUES ('62','19','b','1','0','','marco@empuxa.com','127.0.0.1','vgnfghfgg','1303378142');
INSERT INTO `test_comments` VALUES ('63','19','b','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
vgnfghfgg
[/quote]
[quote=Marco Raddatz]
dsfsdfsdf
[/quote]
[quote=Marco Raddatz]
test
[/quote]
','1303378378');
INSERT INTO `test_comments` VALUES ('64','19','b','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
vgnfghfgg
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
dsfsdfsdf
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
test
&lt;/blockquote&gt;
[/quote]
','1303378393');
INSERT INTO `test_comments` VALUES ('65','19','b','1','0','','marco@empuxa.com','127.0.0.1','dsfsdfsd','1303378623');
INSERT INTO `test_comments` VALUES ('66','18','b','0','0','test','marco@empuxa.com','127.0.0.1','testset','1303378783');
INSERT INTO `test_comments` VALUES ('67','18','b','0','0','fghfghfgh','','127.0.0.1','fghfghfghfhgf','1303389801');
INSERT INTO `test_comments` VALUES ('68','18','b','0','0','cvbcvb','','127.0.0.1','cvbcvbcv','1303390157');
INSERT INTO `test_comments` VALUES ('70','19','b','1','0','','marco@empuxa.com','127.0.0.1','sadasdasdas','1303827969');
INSERT INTO `test_comments` VALUES ('71','19','b','1','0','','marco@empuxa.com','127.0.0.1','sadasdasdas','1303827972');
INSERT INTO `test_comments` VALUES ('72','19','b','1','0','','marco@empuxa.com','127.0.0.1','sadasdasdas','1303827975');
INSERT INTO `test_comments` VALUES ('73','19','b','1','0','','marco@empuxa.com','127.0.0.1','xgxcvxcv','1303827996');
INSERT INTO `test_comments` VALUES ('74','19','b','1','0','','marco@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
xgxcvxcv
[/quote]
[quote=Marco Raddatz]
sadasdasdas
[/quote]
[quote=Marco Raddatz]
sadasdasdas
[/quote]
','1303831295');
INSERT INTO `test_comments` VALUES ('75','21','b','0','1130922727','Marco Raddatz','facebook@marcoraddatz.com','127.0.0.1','test','1303903194');
INSERT INTO `test_comments` VALUES ('76','21','b','0','1130922727','Marco Raddatz','facebook@marcoraddatz.com','127.0.0.1','testsdfsdfs','1303906991');
INSERT INTO `test_comments` VALUES ('77','21','b','0','0','Marco Raddatz','marco@empuxa.com','127.0.0.1','test','1303979407');
INSERT INTO `test_comments` VALUES ('78','21','b','1','0','','marco@empuxa.com','127.0.0.1','test','1303980377');
INSERT INTO `test_comments` VALUES ('79','19','b','0','0','sfsdfsdfsdfsdf','','127.0.0.1','[quote=Marco Raddatz]
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
xgxcvxcv
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
sadasdasdas
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
sadasdasdas
&lt;/blockquote&gt;
[/quote]
','1306851080');
INSERT INTO `test_comments` VALUES ('80','19','b','0','0','asdasdasds','','127.0.0.1','[quote= sfsdfsdfsdfsdf]
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
xgxcvxcv
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
sadasdasdas
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
sadasdasdas
&lt;/blockquote&gt;
&lt;/blockquote&gt;
[/quote]
Noch eine Ebene tiefer!','1306851331');
INSERT INTO `test_comments` VALUES ('81','19','b','0','0','Nametest Wicked','','127.0.0.1','[quote= asdasdasds]
&lt;blockquote&gt;&lt;h3&gt;Zitat vonsfsdfsdfsdfsdf&lt;/h3&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
xgxcvxcv
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
sadasdasdas
&lt;/blockquote&gt;
&lt;blockquote&gt;&lt;h3&gt;Zitat von Marco Raddatz&lt;/h3&gt;
sadasdasdas
&lt;/blockquote&gt;
&lt;/blockquote&gt;
&lt;/blockquote&gt;
Noch eine Ebene tiefer!
[/quote]
sdfsdfsdfsdfs','1308063149');
INSERT INTO `test_comments` VALUES ('82','19','b','0','0','Anlage-Weg.de','','127.0.0.1','asdasdas','1310570922');
INSERT INTO `test_comments` VALUES ('83','19','b','0','0','Anlage-Weg.de','','127.0.0.1','asdadasd','1310571014');
INSERT INTO `test_comments` VALUES ('84','19','b','1','0','','marco@empuxa.com','127.0.0.1','test','1310631739');
INSERT INTO `test_comments` VALUES ('85','19','b','0','1130922727','Marco Raddatz','facebook@marcoraddatz.com','127.0.0.1','test','1311091382');
INSERT INTO `test_comments` VALUES ('86','19','b','0','1130922727','Marco Raddatz','facebook@marcoraddatz.com','127.0.0.1','testestest','1311091393');
INSERT INTO `test_comments` VALUES ('87','5','b','0','0','test','','127.0.0.1','test','1312902222');
INSERT INTO `test_comments` VALUES ('88','5','b','0','0','test','','127.0.0.1','test','1312902261');
INSERT INTO `test_comments` VALUES ('89','1','b','0','0','Marco Raddatz','logins@empuxa.com','127.0.0.1','[quote=Marco Raddatz]
&lt;blockquote&gt;&lt;h3&gt;Zitat von test test&lt;/h3&gt;
Das ist mein Test!
&lt;/blockquote&gt;
[/quote]
[quote=Marco Raddatz]
testset
[/quote]','1318424756');
INSERT INTO `test_comments` VALUES ('90','21','b','0','0','test','','127.0.0.1','test','1320337615');
INSERT INTO `test_comments` VALUES ('91','21','b','0','0','test','','127.0.0.1','test','1321520514');
INSERT INTO `test_comments` VALUES ('92','19','b','1','0','','marco@empuxa.com','127.0.0.1','test','1325696026');
INSERT INTO `test_comments` VALUES ('93','19','b','1','0','','marco@empuxa.com','127.0.0.1','test','1326198600');
INSERT INTO `test_comments` VALUES ('94','21','b','0','0','Marco Raddatz','','127.0.0.1','Test','1326198644');
INSERT INTO `test_comments` VALUES ('96','21','b','0','0','Test','','127.0.0.1','[quote=Marco Raddatz]
Test
[/quote]
Test','1326358338');

#---------------------------------------------------------------#
# Table: test_contents, Columns: 8
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_contents`;
CREATE TABLE `test_contents` (
`id` int(11) NOT NULL,
`author_id` smallint(5) NOT NULL default '1',
`title` varchar(128) NOT NULL,
`teaser` varchar(140) default NULL,
`keywords` varchar(160) default NULL,
`content` text NOT NULL,
`date` int(11) NOT NULL,
`published` tinyint(1) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_contents, Rows: 4
#---------------------------------------------------------------#
INSERT INTO `test_contents` VALUES ('4','1','test','','','<p>test</p>','1278937273','0');
INSERT INTO `test_contents` VALUES ('1','1','Impressum','teaser','keywords','<h3><span style=\"text-decoration: underline;\">Anschrift</span></h3>
<p>empuxa GmbH<br />Schauenburgerstr. 116<br />24118 Kiel</p>
<p>Phone: +49 431 530 324 5</p>
<p>Geschäftsführer: Marco Raddatz & Tillmann Bielefeld<br />Handelsregister: HRB 11662 KI Amtsgericht Kiel</p>
<h3><span style=\"text-decoration: underline;\">1. Inhalt des Onlineangebotes</span></h3>
<p>Der Autor übernimmt keinerlei Gewähr für die Aktualität, Korrektheit,Vollständigkeit oder Qualität der bereitgestellten Informationen.Haftungsansprüche gegen den Autor, welche sich auf Schäden materieller oder ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und unvollständige Informationen verursacht wurden, sind grundsätzlich ausgeschlossen, sofern seitens des Autors kein nachweislich vorsätzliches oder grob fahrlässiges Verschulden vorliegt.<br />Alle Angebote sind freibleibend und unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.</p>
<h3><span style=\"text-decoration: underline;\">2. Verweise und Links</span></h3>
<p>Bei direkten oder indirekten Verweisen auf fremde Webseiten (\"Hyperlinks\"), die außerhalb des Verantwortungsbereiches des Autors liegen, würde eine Haftungsverpflichtung ausschließlich in dem Fall in Kraft treten, in dem der Autor von den Inhalten Kenntnis hat und es ihm technisch möglich und zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern.<br />Der Autor erklärt hiermit ausdrücklich, dass zum Zeitpunkt der Linksetzung keine illegalen Inhalte auf den zuverlinkenden Seiten erkennbar waren. Auf die aktuelle und zukünftige Gestaltung, die Inhalte oder die Urheberschaft der verlinkten / verknüpften Seiten hat der Autor keinerlei Einfluss. Deshalb distanziert er sich hiermit ausdrücklich von allen Inhalten aller verlinkten / verknüpften Seiten, die nach der Linksetzung verändert wurden. Diese Feststellung gilt für alle innerhalb des eigenen Internetangebotes gesetzten Links und Verweise sowie für Fremdeinträge in vom Autor eingerichteten Gästebüchern, Diskussionsforen, Linkverzeichnissen, Mailinglisten und in allen anderen Formen von Datenbanken, auf deren Inhalt externe Schreibzugriffe möglich sind. Für illegale, fehlerhafte oder unvollständige Inhalte und insbesondere für Schäden, die aus der Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen, haftet allein der Anbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der über Links auf die jeweilige Veröffentlichung lediglich verweist.</p>
<h3><span style=\"text-decoration: underline;\">3. Urheber- und Kennzeichenrecht</span></h3>
<p>Der Autor ist bestrebt, in allen Publikationen die Urheberrechte der verwendeten Grafiken, Tondokumente, Videosequenzen und Texte zubeachten, von ihm selbst erstellte Grafiken, Tondokumente, Videosequenzen und Texte zu nutzen oder auf lizenzfreie Grafiken, Tondokumente, Videosequenzen und Texte zurückzugreifen.<br />Alle innerhalb des Internetangebotes genannten und ggf. durch Drittegeschützten Marken- und Warenzeichen unterliegen uneingeschränkt den Bestimmungen des jeweils gültigen Kennzeichenrechts und den Besitzrechten der jeweiligen eingetragenen Eigentümer. Allein aufgrund der bloßen Nennung ist nicht der Schluss zu ziehen, dass Markenzeichen nicht durch Rechte Dritter geschützt sind!<br />Das Copyright für veröffentlichte, vom Autor selbst erstellte Objekte bleibt allein beim Autor der Seiten. Eine Vervielfältigung oder Verwendung solcher Grafiken, Tondokumente, Videosequenzen und Texte in anderen elektronischen oder gedruckten Publikationen ist ohne ausdrückliche Zustimmung des Autors nicht gestattet.</p>
<h3><span style=\"text-decoration: underline;\">4. Datenschutz</span></h3>
<p>Sofern innerhalb des Internetangebotes die Möglichkeit zur Eingabe persönlicher oder geschäftlicher Daten (Emailadressen, Namen, Anschriften) besteht, so erfolgt die Preisgabe dieser Daten seitens des Nutzers auf ausdrücklich freiwilliger Basis. Die Inanspruchnahme und Bezahlung aller angebotenen Dienste ist - soweit technisch möglich und zumutbar - auch ohne Angabe solcher Daten bzw. unter Angabe anonymisierter Daten oder eines Pseudonyms gestattet. Die Nutzung der im Rahmen des Impressums oder vergleichbarer Angaben veröffentlichten Kontaktdaten wie Postanschriften, Telefon- und Faxnummern sowie Emailadressen durch Dritte zur Übersendung von nicht ausdrücklich angeforderten Informationen ist nicht gestattet. Rechtliche Schritte gegen die Versender von sogenannten Spam-Mails bei Verstößen gegen dieses Verbot sind ausdrücklich vorbehalten.</p>
<h3><span style=\"text-decoration: underline;\">5. Rechtswirksamkeit dieses Haftungsausschlusses</span></h3>
<p>Dieser Haftungsausschluss ist als Teil des Internetangebotes zu betrachten, von dem aus auf diese Seite verwiesen wurde. Sofern Teile oder einzelne Formulierungen dieses Textes der geltenden Rechtslage nicht, nicht mehr oder nicht vollständig entsprechen sollten, bleiben die übrigen Teile des Dokumentes in ihrem Inhalt und ihrer Gültigkeit davon unberührt.<br /> <br /> Alle Rechte vorbehalten.<br /> <br /> <a href=\"http://www.disclaimer.de/disclaimer.htm?farbe=E5E5FF/000088/1111FF/1111FF#2\" target=\"_blank\">(English Version)</a></p>','1325693435','1');
INSERT INTO `test_contents` VALUES ('2','1','Text-Formation','','','<p>Wie bei den meisten anderen Seiten, gibt\\\'s hier auch eine Menge BB-Codes. Diese sollen zum einen die Sicherheit erhöhen, indem sie HTML-Code verhindern und zudem das Posten erleichtern. Der Einfachheit halber werden auch hier die gängigsten Codes verwendet. Hier aber noch einmal ein Überblick über die wichtigsten:  (Einfach ohne Leerzeichen verwenden)</p>
<p>[ img]bildname.jpg[ /img] -&gt; zeigt das entsprechende Bild an (Größe wird automatisch verändert)</p>
<p>[ url]http://spiegel.de[ /url] -&gt; würde einen Link zu http://spiegel.de ausgeben</p>
<p>[ url=http://spiegel.de]Linktext[ /url] -&gt; würde einen Link zu http://spiegel.de ausgeben, jedoch nur \\\"Linktext\\\" anzeigen  [ b]fett[ /b] -&gt; Schrift wird [b]fett[/b] [ u]unterstrichen[ /u] -&gt; Text wird [u]unterstrichen[/u] [ i]kursiv[ /i] -&gt; Text wird [i]kursiv[/i] [ del]kursiv[ /del] -&gt; Text wird [del]durchgestrichen[/del]  [ quote]Zitat[ /quote] -&gt; wird ein \\\"normales\\\" Zitat [ quote=Name]Zitat[ /quote] -&gt; gibt das Zitat und den Autor aus  [ color=red]Rot[ /color] -&gt; Farbe wird [color=red]Rot[/color] (englische Farbbezeichnung) [ color=#123456]Farbe[ /color] -&gt; Farbe wird an die Hexwerte angepasst [ size=75]Schriftgröße[/size] -&gt; gibt die entsprechende Schriftgröße [u]in Prozent[/u] an  [ right]Text[ /right] -&gt; Text wird rechtsbündig ausgelegt [ center]Text[ /center] -&gt; Text wird zentriert ausgelegt [ left]Text[ /left] -&gt; Text wird linksbündig ausgelegt</p>','1281553359','0');
INSERT INTO `test_contents` VALUES ('3','1','Infos zur Registration','','','<h3>empuxa - fancy software</h3>
<p><img style=\\\"float: left;\\\" src=\\\"../../public/skins/empuxa/images/logo.png\\\" alt=\\\"\\\" width=\\\"260\\\" height=\\\"72\\\" />Wir sind ein junges, vierköpfiges Unternehmen aus Kiel, das sich aufWebanwendungen, iPhone-Applikationen und die Verwendung von Barcodes inSoftware spezialisiert hat. Hauptsächlich entwickeln wir auf Basis vonRuby on Rails - aber auch Objective-C, PHP, JavaScript und Actionscriptsind quasi Muttersprachen für uns.</p>
<h3>¡empuja!</h3>
<p>Im Spanischen steht „empujar“ für „schubsen“ oder „vorantreiben“.Ähnlich der Bedeutung betreiben wir agile Softwareentwicklung undverfahren dabei frei nach David Allen: „Getting Things Done“. DieKombination „UX“ steht in der Softwareentwicklung für Usabilty - darumtauschten wir das „j“ gegen ein „x“. empuxa!</p>
<h3>Philosophie</h3>
<p>Ein Team ist immer nur so stark, wie sein schwächstes Glied - unddeshalb ist jeder einzelne Mitarbeiter ausschlaggebend für den Erfolgeines Projekts. Die Motivation und Energie, die wir durch flexibleArbeitszeiten, ein angenehmes Arbeitsklima und gemeinsame Unternehmungenjeden Tag erneut gewinnen, investieren wir in den Erfolg unsererProjekte. Wir lieben unseren Job. Fancy Software.</p>','1282136617','0');

#---------------------------------------------------------------#
# Table: test_downloads, Columns: 9
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_downloads`;
CREATE TABLE `test_downloads` (
`id` int(11) unsigned NOT NULL,
`author_id` smallint(5) NOT NULL,
`title` varchar(128) NOT NULL,
`content` text default NULL,
`category` varchar(128) default NULL,
`file` varchar(64) NOT NULL,
`extension` varchar(4) NOT NULL,
`downloads` int(11) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_downloads, Rows: 0
#---------------------------------------------------------------#

#---------------------------------------------------------------#
# Table: test_gallery_albums, Columns: 5
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_gallery_albums`;
CREATE TABLE `test_gallery_albums` (
`id` smallint(5) NOT NULL,
`author_id` smallint(5) NOT NULL,
`title` varchar(50) NOT NULL,
`content` varchar(100) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_gallery_albums, Rows: 9
#---------------------------------------------------------------#
INSERT INTO `test_gallery_albums` VALUES ('19','1','drei','dreiasd','1282901140');
INSERT INTO `test_gallery_albums` VALUES ('16','1','test','test','1282646040');
INSERT INTO `test_gallery_albums` VALUES ('17','1','testdsfsdfsd','testsdsdf','1282646403');
INSERT INTO `test_gallery_albums` VALUES ('20','1','ffbbdffg','','1283418071');
INSERT INTO `test_gallery_albums` VALUES ('21','1','Galerie','test','1285237204');
INSERT INTO `test_gallery_albums` VALUES ('22','1','asdasd','asdasda','1285237227');
INSERT INTO `test_gallery_albums` VALUES ('23','1','Test','Test','1285324079');
INSERT INTO `test_gallery_albums` VALUES ('24','1','dsfsdf','dsfsd','1287492962');
INSERT INTO `test_gallery_albums` VALUES ('25','1','sadasd','asdasd','1288102489');

#---------------------------------------------------------------#
# Table: test_gallery_files, Columns: 7
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_gallery_files`;
CREATE TABLE `test_gallery_files` (
`id` int(9) NOT NULL,
`author_id` smallint(5) NOT NULL,
`album_id` smallint(5) NOT NULL,
`date` int(11) NOT NULL,
`file` varchar(64) NOT NULL,
`extension` varchar(4) NOT NULL default 'jpg',
`content` varchar(100) default NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_gallery_files, Rows: 118
#---------------------------------------------------------------#
INSERT INTO `test_gallery_files` VALUES ('25','0','11','1279121438','1278437751529965.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('24','0','11','1279120385','1276876144688363.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('26','0','11','1279121923','1276782801511530.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('27','1','11','1279121949','1276783432816641.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('28','1','13','1279215156','1269365218036622.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('29','1','13','1279215156','1269604741442627.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('30','1','13','1279215157','1274951171250428.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('31','1','13','1279219071','firefighter546.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('32','1','13','1279219071','gunnaget588.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('33','1','13','1279219071','ifinishedurportrait974.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('34','1','12','1281555363','1264033436798254.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('35','1','12','1281555363','1268474141167385.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('36','1','12','1281555364','1269813234330315.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('37','1','12','1281555364','1270934478641662.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('38','1','12','1281555364','1271025032562689.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('39','1','12','1281555365','1271061279487556.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('40','1','12','1281555365','1271260311891611.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('41','1','12','1281555365','1272976034813487.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('42','1','12','1281555366','1273600735389636.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('43','1','12','1281555366','1273828324219297.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('44','1','12','1281555366','1275851956815404.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('45','1','12','1281555366','1276712227724975.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('46','1','12','1281555367','1276752685690694.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('47','1','12','1281555367','1278106702432346.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('48','1','12','1281555367','fav_72c0e27205.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('49','1','12','1281555368','fav_1264289414133737.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('50','1','12','1281555368','fav_1271166040942897.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('51','1','12','1281555368','fav_1279176110827955.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('57','1','17','1282657674','1279629622765208.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('54','1','18','1282655600','1281369424484274.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('55','1','18','1282655701','1279477144284125.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('56','1','17','1282657674','1279615615055537.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('63','1','19','1282901387','imuststopit524.jpg','jpg','test');
INSERT INTO `test_gallery_files` VALUES ('59','1','17','1282657676','1282071842147629.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('60','1','17','1282657676','1282072346084819.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('61','1','17','1282657676','1282072577065681.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('62','1','17','1282657677','1282200442676195.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('70','1','20','1283785197','1282059043109515.jpg','jpg','Wicked!');
INSERT INTO `test_gallery_files` VALUES ('65','1','19','1282901388','motivation224.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('66','1','19','1282901388','mrmotivator113.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('67','1','19','1282901388','nice_arse394.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('69','1','19','1283255565','1282059870892902.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('71','1','20','1285236644','1270933341430942.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('72','1','21','1285237282','1270934478641661.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('73','1','21','1285237359','dsc01745914.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('74','1','23','1285324187','1263755778794257.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('75','1','23','1285324187','1263762166106539.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('76','1','23','1285324188','1264028135397541.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('77','1','23','1285324188','1264033436798167.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('78','1','23','1285324188','1264078400814112.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('79','1','23','1285324189','1264084798219825.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('80','1','23','1285324189','1264084798219740.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('81','1','23','1285324190','1264166676329491.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('84','1','25','1288106151','19571laracrofttom35sygb71906.jpg','jpg','sgdfdggdfgdgdfgd');
INSERT INTO `test_gallery_files` VALUES ('83','1','25','1288106020','19571laracrofttom35sygb71545.jpg','jpg','testset  fsdf sdfsdf sdfdsfs sdfdsf sdfsdf sdfds');
INSERT INTO `test_gallery_files` VALUES ('85','1','25','1288106219','19571laracrofttom35sygb71265.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('86','1','25','1288172571','1282054092496542.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('87','1','25','1288172629','1282061869173826.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('88','1','25','1288201303','1274284171921783.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('89','1','25','1288347076','pict0017213.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('90','1','25','1288347076','pict0018325.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('91','1','25','1288347076','pict0019208.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('92','1','25','1288347077','pict0020579.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('93','1','25','1288347077','pict0021659.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('94','1','25','1288347077','pict0024952.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('95','1','25','1288347078','pict0025965.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('96','1','25','1288347078','pict0026685.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('97','1','25','1288347078','pict0029655.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('98','1','25','1288347079','pict0030852.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('99','1','25','1288347079','pict0031648.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('100','1','25','1288371204','cap065499.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('101','1','25','1288371235','dsc_0011557.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('102','1','25','1288371376','foto_am_05-05-2010_um_13.30426.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('103','1','25','1288371506','img_1011502.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('104','1','25','1288371635','bildschirmfoto_2010-10-19_um_17.45.49460.png','png','');
INSERT INTO `test_gallery_files` VALUES ('105','1','25','1288693080','1264752471460319.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('106','1','25','1288693080','1279465264817997.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('107','1','25','1288693081','1279474638898690.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('108','1','25','1288693081','1279475356401850.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('109','1','25','1288693081','1279475613100676.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('110','1','25','1288693082','1279476710646576.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('111','1','25','1288693082','1279477144284747.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('112','1','25','1288693082','1279615615055567.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('113','1','24','1288699361','1281369424484751.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('114','1','24','1288699361','1282017382450839.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('115','1','24','1288699361','1282054092496927.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('116','1','24','1288699362','1282058587890878.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('117','1','24','1288699362','1282058979957907.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('118','1','24','1288699363','1282059043109424.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('119','1','24','1288699363','1282059482178833.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('120','1','24','1288699364','1282059870892557.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('121','1','24','1288699365','1282061869173583.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('122','1','24','1288699365','1282064695670280.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('123','1','24','1288699365','1282066251987100.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('124','1','24','1288699366','1282067206922898.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('125','1','24','1288699366','1282071842147351.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('126','1','25','1289293981','07_bo_11_f_01359.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('129','1','22','1290512400','1284626015544871.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('130','1','22','1290512401','1285927928907136.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('131','1','22','1290512401','1286363937094423.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('132','1','22','1290512401','1287467361082384.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('133','1','22','1290512401','1290505191297299.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('134','1','22','1290512402','1290505561872103.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('135','1','22','1290512410','1275851956815107.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('136','1','25','1294671738','snailporn915.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('137','1','25','1303304711','1302792938685881.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('138','1','25','1303304712','1303205606663105.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('139','1','25','1303305017','1303205606663679.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('140','1','25','1303305017','bildschirmfoto_2011-03-16_um_12.36.32346.png','png','');
INSERT INTO `test_gallery_files` VALUES ('141','1','25','1303306036','portraits_200381.png','png','');
INSERT INTO `test_gallery_files` VALUES ('142','1','25','1303306755','1303205606663158.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('143','1','25','1303306777','1303205606663995.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('144','1','25','1303306837','1303205606663179.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('145','1','25','1303306889','1303205606663738.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('146','1','25','1303306911','1303205606663350.jpg','jpg','');
INSERT INTO `test_gallery_files` VALUES ('147','1','25','1303307023','portraits_200737.png','png','');
INSERT INTO `test_gallery_files` VALUES ('148','1','25','1303307054','portraits_200954.png','png','');
INSERT INTO `test_gallery_files` VALUES ('149','1','25','1303378198','1302792938685480.jpg','jpg','');

#---------------------------------------------------------------#
# Table: test_logs, Columns: 7
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_logs`;
CREATE TABLE `test_logs` (
`id` int(11) NOT NULL,
`section_name` varchar(32) NOT NULL default 'NOT NULL',
`action_name` varchar(16) NOT NULL,
`action_id` smallint(6) default NULL,
`time_start` int(11) default NULL,
`time_end` int(11) default NULL,
`user_id` smallint(6) default NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=532 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_logs, Rows: 530
#---------------------------------------------------------------#
INSERT INTO `test_logs` VALUES ('1','cronjob','','','1284101883','1284101883','0');
INSERT INTO `test_logs` VALUES ('2','cronjob','','','1284101962','1284101962','');
INSERT INTO `test_logs` VALUES ('3','cronjob','','','1284101992','1284101992','1');
INSERT INTO `test_logs` VALUES ('4','cronjob','','','1284102065','1284102065','1');
INSERT INTO `test_logs` VALUES ('5','cronjob','','','1284102174','1284102174','1');
INSERT INTO `test_logs` VALUES ('6','cronjob','','','1284102177','1284102177','1');
INSERT INTO `test_logs` VALUES ('7','cronjob','create','0','1284102920','1284102920','1');
INSERT INTO `test_logs` VALUES ('8','cronjob','create','0','1284103025','1284103025','1');
INSERT INTO `test_logs` VALUES ('9','cronjob','create','0','1284103054','1284103054','1');
INSERT INTO `test_logs` VALUES ('10','cronjob','create','0','1284103103','1284103103','1');
INSERT INTO `test_logs` VALUES ('11','cronjob','create','0','1284103160','1284103160','1');
INSERT INTO `test_logs` VALUES ('12','cronjob','create','0','1284103167','1284103167','1');
INSERT INTO `test_logs` VALUES ('13','cronjob','create','0','1284369621','1284369622','0');
INSERT INTO `test_logs` VALUES ('14','cronjob','create','0','1284460357','1284460357','0');
INSERT INTO `test_logs` VALUES ('15','cronjob','create','0','1284546808','1284546808','0');
INSERT INTO `test_logs` VALUES ('16','cronjob','create','0','1284634251','1284634251','0');
INSERT INTO `test_logs` VALUES ('17','cronjob','create','0','1285230223','1285230223','0');
INSERT INTO `test_logs` VALUES ('18','cronjob','create','0','1285320567','1285320567','0');
INSERT INTO `test_logs` VALUES ('19','cronjob','create','0','1285578482','1285578483','0');
INSERT INTO `test_logs` VALUES ('20','cronjob','create','0','1285841560','1285841560','0');
INSERT INTO `test_logs` VALUES ('21','cronjob','create','0','1286528393','1286528394','0');
INSERT INTO `test_logs` VALUES ('22','cronjob','create','0','1286814102','1286814102','1');
INSERT INTO `test_logs` VALUES ('23','cronjob','create','0','1286971251','1286971251','0');
INSERT INTO `test_logs` VALUES ('24','cronjob','create','0','1287083137','1287083137','1');
INSERT INTO `test_logs` VALUES ('25','cronjob','create','0','1287488210','1287488216','0');
INSERT INTO `test_logs` VALUES ('26','cronjob','create','0','1287580389','1287580389','0');
INSERT INTO `test_logs` VALUES ('27','cronjob','create','0','1288012713','1288012713','0');
INSERT INTO `test_logs` VALUES ('28','cronjob','create','0','1288099462','1288099462','0');
INSERT INTO `test_logs` VALUES ('29','Blog','update','','1288100800','1288100800','1');
INSERT INTO `test_logs` VALUES ('30','blog','update','','1288100889','1288100889','1');
INSERT INTO `test_logs` VALUES ('31','blog','update','12','1288100923','1288100923','1');
INSERT INTO `test_logs` VALUES ('32','blog','create','16','1288101483','1288101483','1');
INSERT INTO `test_logs` VALUES ('33','blog','create','16','1288101536','1288101536','1');
INSERT INTO `test_logs` VALUES ('34','blog','create','17','1288101574','1288101574','1');
INSERT INTO `test_logs` VALUES ('35','comment','create','44','1288101687','1288101687','1');
INSERT INTO `test_logs` VALUES ('36','blog','update','17','1288102093','1288102093','1');
INSERT INTO `test_logs` VALUES ('37','blog','update','17','1288102240','1288102240','1');
INSERT INTO `test_logs` VALUES ('38','content','update','1','1288102389','1288102389','1');
INSERT INTO `test_logs` VALUES ('39','gallery_album','create','25','1288102489','1288102489','1');
INSERT INTO `test_logs` VALUES ('40','gallery_file','create','0','1288102742','1288102742','1');
INSERT INTO `test_logs` VALUES ('41','gallery_file','create','25','1288106020','1288106020','1');
INSERT INTO `test_logs` VALUES ('42','gallery_file','destroyfile','82','1288106028','1288106028','1');
INSERT INTO `test_logs` VALUES ('43','gallery','','25','1288106151','1288106151','1');
INSERT INTO `test_logs` VALUES ('44','gallery','','25','1288106219','1288106219','1');
INSERT INTO `test_logs` VALUES ('45','newsletter','create','0','1288108864','1288108864','1');
INSERT INTO `test_logs` VALUES ('46','user','update','1','1288109378','1288109378','1');
INSERT INTO `test_logs` VALUES ('47','gallery','createfile','25','1288172571','1288172571','1');
INSERT INTO `test_logs` VALUES ('48','gallery','createfile','25','1288172629','1288172629','1');
INSERT INTO `test_logs` VALUES ('49','blog','update','17','1288172664','1288172664','1');
INSERT INTO `test_logs` VALUES ('50','comment','create','45','1288184509','1288184509','0');
INSERT INTO `test_logs` VALUES ('51','comment','create','46','1288184550','1288184550','0');
INSERT INTO `test_logs` VALUES ('52','comment','create','47','1288184595','1288184595','1');
INSERT INTO `test_logs` VALUES ('53','comment','create','48','1288184743','1288184743','1');
INSERT INTO `test_logs` VALUES ('54','comment','create','49','1288184763','1288184763','0');
INSERT INTO `test_logs` VALUES ('55','cronjob','create','0','1288197751','1288197753','0');
INSERT INTO `test_logs` VALUES ('56','gallery','createfile','25','1288201303','1288201303','1');
INSERT INTO `test_logs` VALUES ('57','comment','create','50','1288201430','1288201430','1');
INSERT INTO `test_logs` VALUES ('58','comment','create','50','1288201537','1288201537','1');
INSERT INTO `test_logs` VALUES ('59','cronjob','create','0','1288344509','1288344510','1');
INSERT INTO `test_logs` VALUES ('60','gallery','createfile','25','1288347076','1288347076','1');
INSERT INTO `test_logs` VALUES ('61','gallery','createfile','25','1288347076','1288347076','1');
INSERT INTO `test_logs` VALUES ('62','gallery','createfile','25','1288347076','1288347076','1');
INSERT INTO `test_logs` VALUES ('63','gallery','createfile','25','1288347077','1288347077','1');
INSERT INTO `test_logs` VALUES ('64','gallery','createfile','25','1288347077','1288347077','1');
INSERT INTO `test_logs` VALUES ('65','gallery','createfile','25','1288347077','1288347077','1');
INSERT INTO `test_logs` VALUES ('66','gallery','createfile','25','1288347078','1288347078','1');
INSERT INTO `test_logs` VALUES ('67','gallery','createfile','25','1288347078','1288347078','1');
INSERT INTO `test_logs` VALUES ('68','gallery','createfile','25','1288347078','1288347078','1');
INSERT INTO `test_logs` VALUES ('69','gallery','createfile','25','1288347079','1288347079','1');
INSERT INTO `test_logs` VALUES ('70','gallery','createfile','25','1288347079','1288347079','1');
INSERT INTO `test_logs` VALUES ('71','gallery','createfile','25','1288371204','1288371204','1');
INSERT INTO `test_logs` VALUES ('72','gallery','createfile','25','1288371235','1288371235','1');
INSERT INTO `test_logs` VALUES ('73','gallery','createfile','25','1288371376','1288371376','1');
INSERT INTO `test_logs` VALUES ('74','gallery','createfile','25','1288371506','1288371506','1');
INSERT INTO `test_logs` VALUES ('75','gallery','createfile','25','1288371635','1288371635','1');
INSERT INTO `test_logs` VALUES ('76','cronjob','create','0','1288607227','1288607229','1');
INSERT INTO `test_logs` VALUES ('77','user','update','1','1288607572','1288607572','1');
INSERT INTO `test_logs` VALUES ('78','user','create','19','1288607815','1288607815','0');
INSERT INTO `test_logs` VALUES ('79','user','create','20','1288607914','1288607914','0');
INSERT INTO `test_logs` VALUES ('80','user','create','21','1288607947','1288607947','0');
INSERT INTO `test_logs` VALUES ('81','gallery','createfile','25','1288693080','1288693080','1');
INSERT INTO `test_logs` VALUES ('82','gallery','createfile','25','1288693080','1288693080','1');
INSERT INTO `test_logs` VALUES ('83','gallery','createfile','25','1288693081','1288693081','1');
INSERT INTO `test_logs` VALUES ('84','gallery','createfile','25','1288693081','1288693081','1');
INSERT INTO `test_logs` VALUES ('85','gallery','createfile','25','1288693081','1288693081','1');
INSERT INTO `test_logs` VALUES ('86','gallery','createfile','25','1288693082','1288693082','1');
INSERT INTO `test_logs` VALUES ('87','gallery','createfile','25','1288693082','1288693082','1');
INSERT INTO `test_logs` VALUES ('88','gallery','createfile','25','1288693082','1288693082','1');
INSERT INTO `test_logs` VALUES ('89','cronjob','create','0','1288693695','1288693697','1');
INSERT INTO `test_logs` VALUES ('90','blog','update','1','1288693819','1288693819','1');
INSERT INTO `test_logs` VALUES ('91','gallery','createfile','24','1288699361','1288699361','1');
INSERT INTO `test_logs` VALUES ('92','gallery','createfile','24','1288699361','1288699361','1');
INSERT INTO `test_logs` VALUES ('93','gallery','createfile','24','1288699361','1288699361','1');
INSERT INTO `test_logs` VALUES ('94','gallery','createfile','24','1288699362','1288699362','1');
INSERT INTO `test_logs` VALUES ('95','gallery','createfile','24','1288699362','1288699362','1');
INSERT INTO `test_logs` VALUES ('96','gallery','createfile','24','1288699363','1288699363','1');
INSERT INTO `test_logs` VALUES ('97','gallery','createfile','24','1288699363','1288699363','1');
INSERT INTO `test_logs` VALUES ('98','gallery','createfile','24','1288699364','1288699364','1');
INSERT INTO `test_logs` VALUES ('99','gallery','createfile','24','1288699365','1288699365','1');
INSERT INTO `test_logs` VALUES ('100','gallery','createfile','24','1288699365','1288699365','1');
INSERT INTO `test_logs` VALUES ('101','gallery','createfile','24','1288699365','1288699365','1');
INSERT INTO `test_logs` VALUES ('102','gallery','createfile','24','1288699366','1288699366','1');
INSERT INTO `test_logs` VALUES ('103','gallery','createfile','24','1288699366','1288699366','1');
INSERT INTO `test_logs` VALUES ('104','cronjob','create','0','1288780159','1288780159','1');
INSERT INTO `test_logs` VALUES ('105','comment','create','51','1288791806','1288791806','1');
INSERT INTO `test_logs` VALUES ('106','cronjob','create','0','1288950643','1288950644','1');
INSERT INTO `test_logs` VALUES ('107','user','create','22','1288954665','1288954665','0');
INSERT INTO `test_logs` VALUES ('108','user','update','1','1288962020','1288962020','1');
INSERT INTO `test_logs` VALUES ('109','user','update','1','1288962092','1288962092','1');
INSERT INTO `test_logs` VALUES ('110','comment','create','53','1288962144','1288962144','1');
INSERT INTO `test_logs` VALUES ('111','cronjob','create','0','1289228121','1289228123','0');
INSERT INTO `test_logs` VALUES ('112','gallery','createfile','25','1289293981','1289293981','1');
INSERT INTO `test_logs` VALUES ('113','blog','update','17','1289298496','1289298496','1');
INSERT INTO `test_logs` VALUES ('114','blog','update','17','1289299200','1289299200','1');
INSERT INTO `test_logs` VALUES ('115','blog','update','17','1289299695','1289299695','1');
INSERT INTO `test_logs` VALUES ('116','blog','update','17','1289299756','1289299756','1');
INSERT INTO `test_logs` VALUES ('117','blog','update','17','1289300035','1289300035','1');
INSERT INTO `test_logs` VALUES ('118','cronjob','create','0','1289385121','1289385123','1');
INSERT INTO `test_logs` VALUES ('119','blog','update','5','1289401710','1289401710','1');
INSERT INTO `test_logs` VALUES ('120','cronjob','create','0','1289471535','1289471535','0');
INSERT INTO `test_logs` VALUES ('121','user','create','23','1289483131','1289483131','0');
INSERT INTO `test_logs` VALUES ('122','user','create','24','1289483171','1289483171','0');
INSERT INTO `test_logs` VALUES ('123','user','create','25','1289483604','1289483604','0');
INSERT INTO `test_logs` VALUES ('124','cronjob','create','0','1289559529','1289559529','24');
INSERT INTO `test_logs` VALUES ('125','comment','create','54','1289561567','1289561567','24');
INSERT INTO `test_logs` VALUES ('126','comment','create','55','1289561721','1289561721','1');
INSERT INTO `test_logs` VALUES ('127','blog','create','18','1289561741','1289561741','1');
INSERT INTO `test_logs` VALUES ('128','gallery','create','26','1289561755','1289561755','1');
INSERT INTO `test_logs` VALUES ('129','gallery','createfile','26','1289561767','1289561767','1');
INSERT INTO `test_logs` VALUES ('130','gallery','createfile','26','1289561767','1289561767','1');
INSERT INTO `test_logs` VALUES ('131','gallery','destroyfile','128','1289561775','1289561775','1');
INSERT INTO `test_logs` VALUES ('132','gallery','destroy','26','1289561780','1289561780','1');
INSERT INTO `test_logs` VALUES ('133','user','update','1','1289561802','1289561802','1');
INSERT INTO `test_logs` VALUES ('134','user','destroy','16','1289561818','1289561818','1');
INSERT INTO `test_logs` VALUES ('135','blog','update','18','1289570105','1289570105','1');
INSERT INTO `test_logs` VALUES ('136','cronjob','create','0','1290011691','1290011692','0');
INSERT INTO `test_logs` VALUES ('137','cronjob','create','0','1290427561','1290427562','0');
INSERT INTO `test_logs` VALUES ('138','blog','update','18','1290511159','1290511159','1');
INSERT INTO `test_logs` VALUES ('139','blog','update','18','1290511189','1290511189','1');
INSERT INTO `test_logs` VALUES ('140','cronjob','create','0','1290517613','1290517614','1');
INSERT INTO `test_logs` VALUES ('141','cronjob','create','0','1290604747','1290604748','0');
INSERT INTO `test_logs` VALUES ('142','cronjob','create','0','1291378164','1291378165','0');
INSERT INTO `test_logs` VALUES ('143','blog','create','19','1291382449','1291382449','1');
INSERT INTO `test_logs` VALUES ('144','blog','update','19','1291383131','1291383131','1');
INSERT INTO `test_logs` VALUES ('145','blog','update','19','1291383152','1291383152','1');
INSERT INTO `test_logs` VALUES ('146','blog','update','19','1291383313','1291383313','1');
INSERT INTO `test_logs` VALUES ('147','blog','update','19','1291383325','1291383325','1');
INSERT INTO `test_logs` VALUES ('148','blog','update','16','1291383746','1291383746','1');
INSERT INTO `test_logs` VALUES ('149','blog','update','16','1291383886','1291383886','1');
INSERT INTO `test_logs` VALUES ('150','cronjob','create','0','1291634489','1291634490','0');
INSERT INTO `test_logs` VALUES ('151','cronjob','create','0','1291898630','1291898631','0');
INSERT INTO `test_logs` VALUES ('152','cronjob','create','0','1292512657','1292512660','0');
INSERT INTO `test_logs` VALUES ('153','cronjob','create','0','1294236816','1294236818','0');
INSERT INTO `test_logs` VALUES ('154','cronjob','create','0','1294323220','1294323221','0');
INSERT INTO `test_logs` VALUES ('155','cronjob','create','0','1294410073','1294410075','0');
INSERT INTO `test_logs` VALUES ('156','cronjob','create','0','1294670331','1294670333','0');
INSERT INTO `test_logs` VALUES ('157','cronjob','create','0','1294924669','1294924669','0');
INSERT INTO `test_logs` VALUES ('158','cronjob','create','0','1294924669','1294924669','0');
INSERT INTO `test_logs` VALUES ('159','cronjob','create','0','1295535151','1295535153','0');
INSERT INTO `test_logs` VALUES ('160','cronjob','create','0','1295876948','1295876949','0');
INSERT INTO `test_logs` VALUES ('161','cronjob','create','0','1295966565','1295966567','0');
INSERT INTO `test_logs` VALUES ('162','cronjob','create','0','1296059780','1296059786','0');
INSERT INTO `test_logs` VALUES ('163','cronjob','create','0','1296211480','1296211481','0');
INSERT INTO `test_logs` VALUES ('164','cronjob','create','0','1296469763','1296469763','0');
INSERT INTO `test_logs` VALUES ('165','cronjob','create','0','1296562490','1296562491','0');
INSERT INTO `test_logs` VALUES ('166','cronjob','create','0','1296656426','1296656426','0');
INSERT INTO `test_logs` VALUES ('167','projects','update','7','1296659744','1296659744','1');
INSERT INTO `test_logs` VALUES ('168','projects','update','7','1296659834','1296659834','1');
INSERT INTO `test_logs` VALUES ('169','projects','update','7','1296659862','1296659862','1');
INSERT INTO `test_logs` VALUES ('170','projects','update','7','1296660142','1296660142','1');
INSERT INTO `test_logs` VALUES ('171','projects','update','7','1296660193','1296660193','1');
INSERT INTO `test_logs` VALUES ('172','projects','update','7','1296660216','1296660216','1');
INSERT INTO `test_logs` VALUES ('173','projects','update','7','1296660228','1296660228','1');
INSERT INTO `test_logs` VALUES ('174','projects','destroy','6','1296660440','1296660440','1');
INSERT INTO `test_logs` VALUES ('175','projects','create','12','1296661740','1296661740','1');
INSERT INTO `test_logs` VALUES ('176','projects','update','15','1296662321','1296662321','1');
INSERT INTO `test_logs` VALUES ('177','projects','create','16','1296662999','1296662999','1');
INSERT INTO `test_logs` VALUES ('178','projects','create','17','1296663014','1296663014','1');
INSERT INTO `test_logs` VALUES ('179','projects','create','19','1296663177','1296663177','1');
INSERT INTO `test_logs` VALUES ('180','projects','create','22','1296663225','1296663225','1');
INSERT INTO `test_logs` VALUES ('181','projects','create','23','1296663259','1296663259','1');
INSERT INTO `test_logs` VALUES ('182','projects','create','24','1296663313','1296663313','1');
INSERT INTO `test_logs` VALUES ('183','projects','create','25','1296663403','1296663403','1');
INSERT INTO `test_logs` VALUES ('184','projects','create','26','1296663430','1296663430','1');
INSERT INTO `test_logs` VALUES ('185','projects','update','26','1296663764','1296663764','1');
INSERT INTO `test_logs` VALUES ('186','projects','update','26','1296664138','1296664138','1');
INSERT INTO `test_logs` VALUES ('187','projects','create','27','1296664375','1296664375','1');
INSERT INTO `test_logs` VALUES ('188','projects','update','24','1296725474','1296725474','1');
INSERT INTO `test_logs` VALUES ('189','projects','update','25','1296725502','1296725502','1');
INSERT INTO `test_logs` VALUES ('190','projects','update','25','1296725581','1296725581','1');
INSERT INTO `test_logs` VALUES ('191','projects','update','25','1296725616','1296725616','1');
INSERT INTO `test_logs` VALUES ('192','projects','create','28','1296725645','1296725645','1');
INSERT INTO `test_logs` VALUES ('193','projects','create','29','1296725659','1296725659','1');
INSERT INTO `test_logs` VALUES ('194','projects','update','29','1296726746','1296726746','1');
INSERT INTO `test_logs` VALUES ('195','projects','update','29','1296726805','1296726805','1');
INSERT INTO `test_logs` VALUES ('196','projects','update','29','1296726937','1296726937','1');
INSERT INTO `test_logs` VALUES ('197','projects','update','29','1296726972','1296726972','1');
INSERT INTO `test_logs` VALUES ('198','projects','update','28','1296727046','1296727046','1');
INSERT INTO `test_logs` VALUES ('199','projects','update','27','1296727476','1296727476','1');
INSERT INTO `test_logs` VALUES ('200','projects','update','26','1296728478','1296728478','1');
INSERT INTO `test_logs` VALUES ('201','user','update','1','1296730959','1296730959','1');
INSERT INTO `test_logs` VALUES ('202','cronjob','create','0','1296742929','1296742930','1');
INSERT INTO `test_logs` VALUES ('203','user','create','26','1296761282','1296761282','0');
INSERT INTO `test_logs` VALUES ('204','user','update','26','1296761757','1296761757','26');
INSERT INTO `test_logs` VALUES ('205','user','update','26','1296761772','1296761772','26');
INSERT INTO `test_logs` VALUES ('206','user','update','26','1296761860','1296761860','26');
INSERT INTO `test_logs` VALUES ('207','user','update','26','1296761871','1296761871','26');
INSERT INTO `test_logs` VALUES ('208','user','update','26','1296761913','1296761913','26');
INSERT INTO `test_logs` VALUES ('209','user','update','26','1296761939','1296761939','26');
INSERT INTO `test_logs` VALUES ('210','user','update','26','1296761960','1296761960','26');
INSERT INTO `test_logs` VALUES ('211','user','update','26','1296762006','1296762006','26');
INSERT INTO `test_logs` VALUES ('212','user','update','26','1296762022','1296762022','26');
INSERT INTO `test_logs` VALUES ('213','user','update','26','1296762052','1296762052','26');
INSERT INTO `test_logs` VALUES ('214','user','update','26','1296762072','1296762072','26');
INSERT INTO `test_logs` VALUES ('215','user','update','26','1296762191','1296762191','26');
INSERT INTO `test_logs` VALUES ('216','projects','create','30','1296773041','1296773041','26');
INSERT INTO `test_logs` VALUES ('217','projects','update','30','1296773073','1296773073','26');
INSERT INTO `test_logs` VALUES ('218','projects','update','4','1296773114','1296773114','26');
INSERT INTO `test_logs` VALUES ('219','cronjob','create','0','1296831083','1296831083','1');
INSERT INTO `test_logs` VALUES ('220','contact','create','0','1296912967','1296912967','1');
INSERT INTO `test_logs` VALUES ('221','cronjob','create','0','1296918041','1296918044','1');
INSERT INTO `test_logs` VALUES ('222','mail','create','1','1296918052','1296918052','1');
INSERT INTO `test_logs` VALUES ('223','cronjob','create','0','1297156998','1297157000','1');
INSERT INTO `test_logs` VALUES ('224','projects','create','1','1297158245','1297158245','1');
INSERT INTO `test_logs` VALUES ('225','projects','update','1','1297158309','1297158309','1');
INSERT INTO `test_logs` VALUES ('226','projects','update','1','1297158431','1297158431','1');
INSERT INTO `test_logs` VALUES ('227','projects','update','1','1297158463','1297158463','1');
INSERT INTO `test_logs` VALUES ('228','projects','create','2','1297158552','1297158552','1');
INSERT INTO `test_logs` VALUES ('229','projects','create','3','1297158667','1297158667','1');
INSERT INTO `test_logs` VALUES ('230','projects','create','4','1297158732','1297158732','1');
INSERT INTO `test_logs` VALUES ('231','projects','create','5','1297158837','1297158837','1');
INSERT INTO `test_logs` VALUES ('232','projects','create','6','1297158889','1297158889','1');
INSERT INTO `test_logs` VALUES ('233','projects','create','7','1297158970','1297158970','1');
INSERT INTO `test_logs` VALUES ('234','projects','create','8','1297159043','1297159043','1');
INSERT INTO `test_logs` VALUES ('235','projects','create','9','1297159103','1297159103','1');
INSERT INTO `test_logs` VALUES ('236','projects','create','10','1297159183','1297159183','1');
INSERT INTO `test_logs` VALUES ('237','projects','create','11','1297159651','1297159651','1');
INSERT INTO `test_logs` VALUES ('238','projects','create','12','1297159733','1297159733','1');
INSERT INTO `test_logs` VALUES ('239','projects','create','13','1297159760','1297159760','1');
INSERT INTO `test_logs` VALUES ('240','projects','create','14','1297159783','1297159783','1');
INSERT INTO `test_logs` VALUES ('241','projects','create','15','1297159800','1297159800','1');
INSERT INTO `test_logs` VALUES ('242','projects','create','16','1297159816','1297159816','1');
INSERT INTO `test_logs` VALUES ('243','projects','create','17','1297159851','1297159851','1');
INSERT INTO `test_logs` VALUES ('244','projects','update','11','1297160034','1297160034','1');
INSERT INTO `test_logs` VALUES ('245','projects','update','1','1297169273','1297169273','1');
INSERT INTO `test_logs` VALUES ('246','cronjob','create','0','1297328756','1297328757','0');
INSERT INTO `test_logs` VALUES ('247','projects','update','10','1297353803','1297353803','1');
INSERT INTO `test_logs` VALUES ('248','cronjob','create','0','1297419845','1297419846','1');
INSERT INTO `test_logs` VALUES ('249','comment','create','56','1297437116','1297437116','0');
INSERT INTO `test_logs` VALUES ('250','cronjob','create','0','1297772352','1297772353','0');
INSERT INTO `test_logs` VALUES ('251','cronjob','create','0','1298032110','1298032110','0');
INSERT INTO `test_logs` VALUES ('252','contact','create','0','1298042282','1298042282','0');
INSERT INTO `test_logs` VALUES ('253','contact','create','0','1298042474','1298042474','0');
INSERT INTO `test_logs` VALUES ('254','content','update','1','1298049061','1298049061','1');
INSERT INTO `test_logs` VALUES ('255','cronjob','create','0','1298304497','1298304500','1');
INSERT INTO `test_logs` VALUES ('256','cronjob','create','0','1298892401','1298892401','0');
INSERT INTO `test_logs` VALUES ('257','cronjob','create','0','1299058886','1299058887','0');
INSERT INTO `test_logs` VALUES ('258','blog','update','19','1299058931','1299058931','1');
INSERT INTO `test_logs` VALUES ('259','cronjob','create','0','1299505926','1299505927','0');
INSERT INTO `test_logs` VALUES ('260','cronjob','create','0','1299668783','1299668783','0');
INSERT INTO `test_logs` VALUES ('261','cronjob','create','0','1299761010','1299761011','0');
INSERT INTO `test_logs` VALUES ('262','cronjob','create','0','1299855682','1299855686','0');
INSERT INTO `test_logs` VALUES ('263','blog','update','19','1299855807','1299855807','1');
INSERT INTO `test_logs` VALUES ('264','blog','update','19','1299855995','1299855995','1');
INSERT INTO `test_logs` VALUES ('265','cronjob','create','0','1300100618','1300100619','0');
INSERT INTO `test_logs` VALUES ('266','blog','update','19','1300104449','1300104449','1');
INSERT INTO `test_logs` VALUES ('267','cronjob','create','0','1300197449','1300197450','1');
INSERT INTO `test_logs` VALUES ('268','cronjob','create','0','1300361354','1300361356','1');
INSERT INTO `test_logs` VALUES ('269','blog','update','15','1300361426','1300361426','1');
INSERT INTO `test_logs` VALUES ('270','cronjob','create','0','1300808697','1300808698','0');
INSERT INTO `test_logs` VALUES ('271','cronjob','create','0','1300895147','1300895149','0');
INSERT INTO `test_logs` VALUES ('272','cronjob','create','0','1301051263','1301051272','0');
INSERT INTO `test_logs` VALUES ('273','cronjob','create','0','1301490010','1301490013','0');
INSERT INTO `test_logs` VALUES ('274','cronjob','create','0','1301996142','1301996144','0');
INSERT INTO `test_logs` VALUES ('275','cronjob','create','0','1302167748','1302167753','0');
INSERT INTO `test_logs` VALUES ('276','cronjob','create','0','1302269152','1302269153','0');
INSERT INTO `test_logs` VALUES ('277','cronjob','create','0','1302529345','1302529347','0');
INSERT INTO `test_logs` VALUES ('278','cronjob','create','0','1302615819','1302615820','0');
INSERT INTO `test_logs` VALUES ('279','cronjob','create','0','1302702300','1302702301','0');
INSERT INTO `test_logs` VALUES ('280','cronjob','create','0','1302789015','1302789016','0');
INSERT INTO `test_logs` VALUES ('281','cronjob','create','0','1303118778','1303118779','1');
INSERT INTO `test_logs` VALUES ('282','blog','update','19','1303202879','1303202879','1');
INSERT INTO `test_logs` VALUES ('283','blog','update','19','1303202897','1303202897','1');
INSERT INTO `test_logs` VALUES ('284','user','update','1','1303204793','1303204793','1');
INSERT INTO `test_logs` VALUES ('285','user','update','1','1303204838','1303204838','1');
INSERT INTO `test_logs` VALUES ('286','cronjob','create','0','1303205189','1303205190','1');
INSERT INTO `test_logs` VALUES ('287','blog','update','18','1303207970','1303207970','1');
INSERT INTO `test_logs` VALUES ('288','blog','update','18','1303208022','1303208022','1');
INSERT INTO `test_logs` VALUES ('289','blog','update','18','1303208157','1303208157','1');
INSERT INTO `test_logs` VALUES ('290','blog','update','18','1303208310','1303208310','1');
INSERT INTO `test_logs` VALUES ('291','blog','update','18','1303208617','1303208617','1');
INSERT INTO `test_logs` VALUES ('292','cronjob','create','0','1303292175','1303292177','0');
INSERT INTO `test_logs` VALUES ('293','blog','update','19','1303292487','1303292487','1');
INSERT INTO `test_logs` VALUES ('294','gallery','createfile','25','1303306755','1303306755','1');
INSERT INTO `test_logs` VALUES ('295','gallery','createfile','25','1303306777','1303306777','1');
INSERT INTO `test_logs` VALUES ('296','gallery','createfile','25','1303306837','1303306837','1');
INSERT INTO `test_logs` VALUES ('297','gallery','createfile','25','1303306889','1303306889','1');
INSERT INTO `test_logs` VALUES ('298','gallery','createfile','25','1303306911','1303306911','1');
INSERT INTO `test_logs` VALUES ('299','gallery','createfile','25','1303307023','1303307023','1');
INSERT INTO `test_logs` VALUES ('300','gallery','createfile','25','1303307054','1303307054','1');
INSERT INTO `test_logs` VALUES ('301','user','update','1','1303307392','1303307392','1');
INSERT INTO `test_logs` VALUES ('302','user','update','1','1303307431','1303307431','1');
INSERT INTO `test_logs` VALUES ('303','user','update','1','1303307585','1303307585','1');
INSERT INTO `test_logs` VALUES ('304','user','update','1','1303307596','1303307596','1');
INSERT INTO `test_logs` VALUES ('305','user','update','1','1303307646','1303307646','1');
INSERT INTO `test_logs` VALUES ('306','user','update','1','1303307703','1303307703','1');
INSERT INTO `test_logs` VALUES ('307','user','update','1','1303307726','1303307726','1');
INSERT INTO `test_logs` VALUES ('308','user','update','1','1303308122','1303308122','1');
INSERT INTO `test_logs` VALUES ('309','mail','create','1','1303308557','1303308557','1');
INSERT INTO `test_logs` VALUES ('310','blog','','57','1303377390','1303377390','1');
INSERT INTO `test_logs` VALUES ('311','blog','create','58','1303377427','1303377427','1');
INSERT INTO `test_logs` VALUES ('312','comment','create','59','1303377456','1303377456','1');
INSERT INTO `test_logs` VALUES ('313','comment','create','60','1303377598','1303377598','1');
INSERT INTO `test_logs` VALUES ('314','comment','create','61','1303377767','1303377767','1');
INSERT INTO `test_logs` VALUES ('315','comment','destroy','61','1303378102','1303378102','1');
INSERT INTO `test_logs` VALUES ('316','comment','destroy','61','1303378103','1303378103','1');
INSERT INTO `test_logs` VALUES ('317','comment','destroy','61','1303378130','1303378130','1');
INSERT INTO `test_logs` VALUES ('318','comment','create','61','1303378142','1303378142','1');
INSERT INTO `test_logs` VALUES ('319','gallery','createfile','25','1303378198','1303378198','1');
INSERT INTO `test_logs` VALUES ('320','comment','create','63','1303378378','1303378378','1');
INSERT INTO `test_logs` VALUES ('321','comment','create','64','1303378393','1303378393','1');
INSERT INTO `test_logs` VALUES ('322','cronjob','create','0','1303378622','1303378623','1');
INSERT INTO `test_logs` VALUES ('323','comment','create','65','1303378623','1303378623','1');
INSERT INTO `test_logs` VALUES ('324','comment','create','66','1303378783','1303378783','0');
INSERT INTO `test_logs` VALUES ('325','comment','create','67','1303389801','1303389801','0');
INSERT INTO `test_logs` VALUES ('326','comment','create','68','1303390157','1303390157','0');
INSERT INTO `test_logs` VALUES ('327','user','create','27','1303390276','1303390276','0');
INSERT INTO `test_logs` VALUES ('328','user','create','28','1303391509','1303391509','0');
INSERT INTO `test_logs` VALUES ('329','cronjob','create','0','1303805458','1303805460','1');
INSERT INTO `test_logs` VALUES ('330','user','create','29','1303809901','1303809901','1');
INSERT INTO `test_logs` VALUES ('331','blog','update','19','1303810159','1303810159','1');
INSERT INTO `test_logs` VALUES ('332','comment','destroy','57','1303810396','1303810396','1');
INSERT INTO `test_logs` VALUES ('333','blog','create','20','1303825359','1303825359','1');
INSERT INTO `test_logs` VALUES ('334','blog','update','20','1303825375','1303825375','1');
INSERT INTO `test_logs` VALUES ('335','blog','destroy','20','1303825409','1303825409','1');
INSERT INTO `test_logs` VALUES ('336','gallery','create','27','1303825421','1303825421','1');
INSERT INTO `test_logs` VALUES ('337','gallery','update','27','1303825545','1303825545','1');
INSERT INTO `test_logs` VALUES ('338','gallery','createfile','27','1303825585','1303825585','1');
INSERT INTO `test_logs` VALUES ('339','gallery','destroy','27','1303825668','1303825668','1');
INSERT INTO `test_logs` VALUES ('340','content','create','6','1303826170','1303826170','1');
INSERT INTO `test_logs` VALUES ('341','content','update','6','1303826177','1303826177','1');
INSERT INTO `test_logs` VALUES ('342','content','destroy','6','1303826183','1303826183','1');
INSERT INTO `test_logs` VALUES ('343','newsletter','create','0','1303826255','1303826255','1');
INSERT INTO `test_logs` VALUES ('344','comment','create','69','1303827965','1303827965','1');
INSERT INTO `test_logs` VALUES ('345','comment','create','70','1303827969','1303827969','1');
INSERT INTO `test_logs` VALUES ('346','comment','create','71','1303827972','1303827972','1');
INSERT INTO `test_logs` VALUES ('347','comment','create','72','1303827975','1303827975','1');
INSERT INTO `test_logs` VALUES ('348','comment','create','73','1303827996','1303827996','1');
INSERT INTO `test_logs` VALUES ('349','blog','create','21','1303829666','1303829666','1');
INSERT INTO `test_logs` VALUES ('350','blog','update','21','1303829762','1303829762','1');
INSERT INTO `test_logs` VALUES ('351','blog','update','21','1303829778','1303829778','1');
INSERT INTO `test_logs` VALUES ('352','blog','update','19','1303830303','1303830303','1');
INSERT INTO `test_logs` VALUES ('353','blog','update','19','1303830888','1303830888','1');
INSERT INTO `test_logs` VALUES ('354','blog','update','19','1303831085','1303831085','1');
INSERT INTO `test_logs` VALUES ('355','comment','create','74','1303831295','1303831295','1');
INSERT INTO `test_logs` VALUES ('356','cronjob','create','0','1303898437','1303898438','1');
INSERT INTO `test_logs` VALUES ('357','comment','create','75','1303903194','1303903194','0');
INSERT INTO `test_logs` VALUES ('358','comment','create','76','1303906991','1303906991','0');
INSERT INTO `test_logs` VALUES ('359','cronjob','create','0','1303911584','1303911584','0');
INSERT INTO `test_logs` VALUES ('360','cronjob','create','0','1303911585','1303911585','0');
INSERT INTO `test_logs` VALUES ('361','cronjob','create','0','1303911675','1303911675','0');
INSERT INTO `test_logs` VALUES ('362','cronjob','create','0','1303911676','1303911676','0');
INSERT INTO `test_logs` VALUES ('363','comment','create','77','1303979407','1303979407','0');
INSERT INTO `test_logs` VALUES ('364','comment','create','78','1303980377','1303980377','1');
INSERT INTO `test_logs` VALUES ('365','gallery','updatefile','83','1303990144','1303990144','1');
INSERT INTO `test_logs` VALUES ('366','gallery','updatefile','83','1303996130','1303996130','1');
INSERT INTO `test_logs` VALUES ('367','gallery','destroyfile','150','1303996365','1303996365','1');
INSERT INTO `test_logs` VALUES ('368','gallery','updatefile','84','1303996388','1303996388','1');
INSERT INTO `test_logs` VALUES ('369','gallery','updatefile','83','1303996832','1303996832','1');
INSERT INTO `test_logs` VALUES ('370','cronjob','create','0','1303998094','1303998095','0');
INSERT INTO `test_logs` VALUES ('371','cronjob','create','0','1304085020','1304085021','0');
INSERT INTO `test_logs` VALUES ('372','cronjob','create','0','1304330153','1304330154','1');
INSERT INTO `test_logs` VALUES ('373','cronjob','create','0','1304425721','1304425722','0');
INSERT INTO `test_logs` VALUES ('374','cronjob','create','0','1304515139','1304515140','0');
INSERT INTO `test_logs` VALUES ('375','blog','update','21','1304520211','1304520211','1');
INSERT INTO `test_logs` VALUES ('376','content','update','1','1304522807','1304522807','1');
INSERT INTO `test_logs` VALUES ('377','cronjob','create','0','1304604288','1304604288','1');
INSERT INTO `test_logs` VALUES ('378','cronjob','create','0','1304937903','1304937905','0');
INSERT INTO `test_logs` VALUES ('379','cronjob','create','0','1305631207','1305631208','0');
INSERT INTO `test_logs` VALUES ('380','blog','update','21','1305631364','1305631364','1');
INSERT INTO `test_logs` VALUES ('381','blog','update','21','1305631421','1305631421','1');
INSERT INTO `test_logs` VALUES ('382','cronjob','create','0','1306143816','1306143817','0');
INSERT INTO `test_logs` VALUES ('383','cronjob','create','0','1306230233','1306230234','0');
INSERT INTO `test_logs` VALUES ('384','cronjob','create','0','1306322201','1306322202','0');
INSERT INTO `test_logs` VALUES ('385','cronjob','create','0','1306411355','1306411356','0');
INSERT INTO `test_logs` VALUES ('386','cronjob','create','0','1306754322','1306754323','0');
INSERT INTO `test_logs` VALUES ('387','cronjob','create','0','1306844640','1306844641','0');
INSERT INTO `test_logs` VALUES ('388','comment','create','79','1306851080','1306851080','0');
INSERT INTO `test_logs` VALUES ('389','comment','create','80','1306851331','1306851331','0');
INSERT INTO `test_logs` VALUES ('390','cronjob','create','0','1306938786','1306938789','0');
INSERT INTO `test_logs` VALUES ('391','cronjob','create','0','1307436192','1307436193','0');
INSERT INTO `test_logs` VALUES ('392','cronjob','create','0','1307532165','1307532166','0');
INSERT INTO `test_logs` VALUES ('393','cronjob','create','0','1307631512','1307631513','0');
INSERT INTO `test_logs` VALUES ('394','cronjob','create','0','1308062798','1308062802','0');
INSERT INTO `test_logs` VALUES ('395','comment','create','81','1308063149','1308063149','0');
INSERT INTO `test_logs` VALUES ('396','cronjob','create','0','1308216147','1308216148','0');
INSERT INTO `test_logs` VALUES ('397','user','destroy','1','1308216523','1308216523','1');
INSERT INTO `test_logs` VALUES ('398','cronjob','create','0','1308306070','1308306071','1');
INSERT INTO `test_logs` VALUES ('399','user','update','1','1308306749','1308306749','1');
INSERT INTO `test_logs` VALUES ('400','cronjob','create','0','1310569007','1310569008','0');
INSERT INTO `test_logs` VALUES ('401','mail','create','1','1310569692','1310569692','0');
INSERT INTO `test_logs` VALUES ('402','mail','create','1','1310569973','1310569973','0');
INSERT INTO `test_logs` VALUES ('403','mail','create','1','1310570058','1310570058','0');
INSERT INTO `test_logs` VALUES ('404','comment','create','82','1310570922','1310570922','0');
INSERT INTO `test_logs` VALUES ('405','comment','create','83','1310571014','1310571014','0');
INSERT INTO `test_logs` VALUES ('406','mail','create','1','1310571468','1310571468','0');
INSERT INTO `test_logs` VALUES ('407','user','update','1','1310631086','1310631086','1');
INSERT INTO `test_logs` VALUES ('408','user','update','1','1310631190','1310631190','1');
INSERT INTO `test_logs` VALUES ('409','user','update','1','1310631217','1310631217','1');
INSERT INTO `test_logs` VALUES ('410','user','update','1','1310631254','1310631254','1');
INSERT INTO `test_logs` VALUES ('411','user','update','1','1310631264','1310631264','1');
INSERT INTO `test_logs` VALUES ('412','user','update','1','1310631276','1310631276','1');
INSERT INTO `test_logs` VALUES ('413','user','update','1','1310631298','1310631298','1');
INSERT INTO `test_logs` VALUES ('414','user','update','1','1310631300','1310631300','1');
INSERT INTO `test_logs` VALUES ('415','user','update','1','1310631312','1310631312','1');
INSERT INTO `test_logs` VALUES ('416','user','update','1','1310631425','1310631425','1');
INSERT INTO `test_logs` VALUES ('417','user','update','1','1310631440','1310631440','1');
INSERT INTO `test_logs` VALUES ('418','comment','create','84','1310631739','1310631739','1');
INSERT INTO `test_logs` VALUES ('419','cronjob','create','0','1310991905','1310991906','0');
INSERT INTO `test_logs` VALUES ('420','cronjob','create','0','1311082267','1311082268','0');
INSERT INTO `test_logs` VALUES ('421','comment','create','85','1311091382','1311091382','0');
INSERT INTO `test_logs` VALUES ('422','comment','create','86','1311091393','1311091393','0');
INSERT INTO `test_logs` VALUES ('423','user','create','30','1311092362','1311092362','0');
INSERT INTO `test_logs` VALUES ('424','user','create','31','1311092385','1311092385','0');
INSERT INTO `test_logs` VALUES ('425','mail','create','2','1311168890','1311168890','0');
INSERT INTO `test_logs` VALUES ('426','mail','create','2','1311169913','1311169913','0');
INSERT INTO `test_logs` VALUES ('427','mail','create','2','1311170005','1311170005','0');
INSERT INTO `test_logs` VALUES ('428','cronjob','create','0','1311238231','1311238243','0');
INSERT INTO `test_logs` VALUES ('429','blog','update','19','1311240267','1311240267','1');
INSERT INTO `test_logs` VALUES ('430','cronjob','create','0','1311341802','1311341804','0');
INSERT INTO `test_logs` VALUES ('431','blog','update','21','1311758037','1311758037','1');
INSERT INTO `test_logs` VALUES ('432','cronjob','create','0','1311841120','1311841122','0');
INSERT INTO `test_logs` VALUES ('433','blog','update','21','1312273227','1312273227','1');
INSERT INTO `test_logs` VALUES ('434','blog','update','21','1312289295','1312289295','1');
INSERT INTO `test_logs` VALUES ('435','blog','update','21','1312289812','1312289812','1');
INSERT INTO `test_logs` VALUES ('436','blog','update','21','1312294782','1312294782','1');
INSERT INTO `test_logs` VALUES ('437','blog','update','21','1312294978','1312294978','1');
INSERT INTO `test_logs` VALUES ('438','blog','update','21','1312295057','1312295057','1');
INSERT INTO `test_logs` VALUES ('439','blog','update','21','1312295083','1312295083','1');
INSERT INTO `test_logs` VALUES ('440','blog','update','21','1312295498','1312295498','1');
INSERT INTO `test_logs` VALUES ('441','blog','update','21','1312295706','1312295706','1');
INSERT INTO `test_logs` VALUES ('442','blog','update','21','1312374394','1312374394','1');
INSERT INTO `test_logs` VALUES ('443','blog','update','21','1312375092','1312375092','1');
INSERT INTO `test_logs` VALUES ('444','blog','update','21','1312375165','1312375165','1');
INSERT INTO `test_logs` VALUES ('445','blog','update','21','1312375210','1312375210','1');
INSERT INTO `test_logs` VALUES ('446','comment','create','87','1312902222','1312902222','0');
INSERT INTO `test_logs` VALUES ('447','comment','create','88','1312902261','1312902261','0');
INSERT INTO `test_logs` VALUES ('448','blog','create','0','1318346894','1318346894','1');
INSERT INTO `test_logs` VALUES ('449','blog','create','0','1318346928','1318346928','1');
INSERT INTO `test_logs` VALUES ('450','blog','create','0','1318346932','1318346932','1');
INSERT INTO `test_logs` VALUES ('451','projects','create','0','1318346945','1318346945','1');
INSERT INTO `test_logs` VALUES ('452','projects','create','0','1318347037','1318347037','1');
INSERT INTO `test_logs` VALUES ('453','projects','create','0','1318347086','1318347086','1');
INSERT INTO `test_logs` VALUES ('454','projects','create','0','1318422156','1318422156','1');
INSERT INTO `test_logs` VALUES ('455','projects','create','0','1318422218','1318422218','1');
INSERT INTO `test_logs` VALUES ('456','projects','create','0','1318422755','1318422755','1');
INSERT INTO `test_logs` VALUES ('457','projects','create','0','1318422808','1318422808','1');
INSERT INTO `test_logs` VALUES ('458','projects','update','0','1318422826','1318422826','1');
INSERT INTO `test_logs` VALUES ('459','projects','update','9','1318422886','1318422886','1');
INSERT INTO `test_logs` VALUES ('460','projects','update','9','1318422893','1318422893','1');
INSERT INTO `test_logs` VALUES ('461','projects','update','9','1318422970','1318422970','1');
INSERT INTO `test_logs` VALUES ('462','projects','update','9','1318422970','1318422970','1');
INSERT INTO `test_logs` VALUES ('463','projects','update','12','1318423052','1318423052','1');
INSERT INTO `test_logs` VALUES ('464','projects','update','12','1318423059','1318423059','1');
INSERT INTO `test_logs` VALUES ('465','projects','update','12','1318423059','1318423059','1');
INSERT INTO `test_logs` VALUES ('466','comment','create','89','1318424756','1318424756','0');
INSERT INTO `test_logs` VALUES ('467','user','update','1','1318431401','1318431401','1');
INSERT INTO `test_logs` VALUES ('468','projects','update','12','1318528165','1318528165','1');
INSERT INTO `test_logs` VALUES ('469','projects','update','12','1318528192','1318528192','1');
INSERT INTO `test_logs` VALUES ('470','projects','update','12','1318528192','1318528192','1');
INSERT INTO `test_logs` VALUES ('471','projects','update','12','1318528299','1318528299','1');
INSERT INTO `test_logs` VALUES ('472','projects','update','12','1318528305','1318528305','1');
INSERT INTO `test_logs` VALUES ('473','projects','update','12','1318528321','1318528321','1');
INSERT INTO `test_logs` VALUES ('474','projects','update','12','1318528321','1318528321','1');
INSERT INTO `test_logs` VALUES ('475','projects','update','12','1318528408','1318528408','1');
INSERT INTO `test_logs` VALUES ('476','projects','update','12','1318528414','1318528414','1');
INSERT INTO `test_logs` VALUES ('477','projects','update','12','1318528414','1318528414','1');
INSERT INTO `test_logs` VALUES ('478','projects','update','12','1318528472','1318528472','1');
INSERT INTO `test_logs` VALUES ('479','projects','update','12','1318528481','1318528481','1');
INSERT INTO `test_logs` VALUES ('480','projects','update','12','1318528481','1318528481','1');
INSERT INTO `test_logs` VALUES ('481','projects','update','12','1318528517','1318528517','1');
INSERT INTO `test_logs` VALUES ('482','projects','update','12','1318528523','1318528523','1');
INSERT INTO `test_logs` VALUES ('483','projects','update','12','1318528537','1318528537','1');
INSERT INTO `test_logs` VALUES ('484','projects','update','12','1318528544','1318528544','1');
INSERT INTO `test_logs` VALUES ('485','projects','update','12','1318528552','1318528552','1');
INSERT INTO `test_logs` VALUES ('486','projects','update','12','1318528552','1318528552','1');
INSERT INTO `test_logs` VALUES ('487','projects','update','12','1318528637','1318528637','1');
INSERT INTO `test_logs` VALUES ('488','projects','update','12','1318528646','1318528646','1');
INSERT INTO `test_logs` VALUES ('489','projects','update','12','1318528646','1318528646','1');
INSERT INTO `test_logs` VALUES ('490','projects','update','12','1318863203','1318863203','1');
INSERT INTO `test_logs` VALUES ('491','projects','update','3','1319532613','1319532613','1');
INSERT INTO `test_logs` VALUES ('492','projects','destroy','3','1319532619','1319532619','1');
INSERT INTO `test_logs` VALUES ('493','projects','destroy','3','1319532619','1319532619','1');
INSERT INTO `test_logs` VALUES ('494','comment','create','90','1320337615','1320337615','0');
INSERT INTO `test_logs` VALUES ('495','contact','create','0','1321520354','1321520354','0');
INSERT INTO `test_logs` VALUES ('496','contact','create','0','1321520393','1321520393','0');
INSERT INTO `test_logs` VALUES ('497','contact','create','0','1321520461','1321520461','0');
INSERT INTO `test_logs` VALUES ('498','comment','create','91','1321520514','1321520514','0');
INSERT INTO `test_logs` VALUES ('499','projects','create','0','1325693279','1325693279','1');
INSERT INTO `test_logs` VALUES ('500','blog','update','21','1325693305','1325693305','1');
INSERT INTO `test_logs` VALUES ('501','blog','update','21','1325693385','1325693385','1');
INSERT INTO `test_logs` VALUES ('502','content','update','1','1325693432','1325693432','1');
INSERT INTO `test_logs` VALUES ('503','content','update','1','1325693435','1325693435','1');
INSERT INTO `test_logs` VALUES ('504','content','update','1','1325693435','1325693435','1');
INSERT INTO `test_logs` VALUES ('505','blog','update','21','1325693533','1325693533','1');
INSERT INTO `test_logs` VALUES ('506','blog','update','21','1325693541','1325693541','1');
INSERT INTO `test_logs` VALUES ('507','blog','update','21','1325693541','1325693541','1');
INSERT INTO `test_logs` VALUES ('508','projects','create','0','1325695484','1325695484','1');
INSERT INTO `test_logs` VALUES ('509','comment','create','92','1325696026','1325696026','1');
INSERT INTO `test_logs` VALUES ('510','user','update','1','1326112168','1326112168','1');
INSERT INTO `test_logs` VALUES ('511','user','update','1','1326112176','1326112176','1');
INSERT INTO `test_logs` VALUES ('512','comment','create','93','1326198600','1326198600','1');
INSERT INTO `test_logs` VALUES ('513','comment','create','94','1326198644','1326198644','0');
INSERT INTO `test_logs` VALUES ('514','projects','create','0','1326199899','1326199899','1');
INSERT INTO `test_logs` VALUES ('515','projects','create','0','1326199936','1326199936','1');
INSERT INTO `test_logs` VALUES ('516','projects','create','18','1326199936','1326199936','0');
INSERT INTO `test_logs` VALUES ('517','projects','create','0','1326199984','1326199984','1');
INSERT INTO `test_logs` VALUES ('518','projects','create','19','1326199984','1326199984','0');
INSERT INTO `test_logs` VALUES ('520','download','destroy','0','1326201893','1326201893','0');
INSERT INTO `test_logs` VALUES ('521','comment','create','95','1326358338','1326358338','0');
INSERT INTO `test_logs` VALUES ('522','blog','update','21','1326804587','1326804587','1');
INSERT INTO `test_logs` VALUES ('523','blog','update','21','1326804598','1326804598','1');
INSERT INTO `test_logs` VALUES ('524','blog','update','21','1326804598','1326804598','1');
INSERT INTO `test_logs` VALUES ('525','projects','create','20','1330425268','1330425268','1');
INSERT INTO `test_logs` VALUES ('526','projects','create','21','1330425288','1330425288','1');
INSERT INTO `test_logs` VALUES ('527','projects','update','21','1330425610','1330425610','1');
INSERT INTO `test_logs` VALUES ('528','projects','update','21','1330425631','1330425631','1');
INSERT INTO `test_logs` VALUES ('529','projects','update','21','1330425703','1330425703','1');
INSERT INTO `test_logs` VALUES ('530','projects','update','21','1330425734','1330425734','1');
INSERT INTO `test_logs` VALUES ('531','projects','update','21','1330426681','1330426681','1');

#---------------------------------------------------------------#
# Table: test_migrations, Columns: 3
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_migrations`;
CREATE TABLE `test_migrations` (
`id` int(11) NOT NULL,
`file` varchar(100) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_migrations, Rows: 7
#---------------------------------------------------------------#
INSERT INTO `test_migrations` VALUES ('1','20091122_longer_filename.sql','1283338660');
INSERT INTO `test_migrations` VALUES ('2','20100714_authorID_to_gallery_file.sql','1283338660');
INSERT INTO `test_migrations` VALUES ('3','20100724_author_name_to_comments.sql ','1283338660');
INSERT INTO `test_migrations` VALUES ('4','20100905_rename_sql_tables.sql','1283775900');
INSERT INTO `test_migrations` VALUES ('5','20101104_add_facebook_support.sql','1288950912');
INSERT INTO `test_migrations` VALUES ('6','20110408_remove_parent_category.sql','1303911420');
INSERT INTO `test_migrations` VALUES ('7','20110815_alter_description_length.sql','1318504274');

#---------------------------------------------------------------#
# Table: test_projects, Columns: 13
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_projects`;
CREATE TABLE `test_projects` (
`id` int(11) NOT NULL,
`title` varchar(128) NOT NULL,
`teaser` varchar(140) default NULL,
`content` text NOT NULL,
`date` int(11) default NULL,
`client` varchar(128) default NULL,
`designer` varchar(128) default NULL,
`tasks` varchar(128) default NULL,
`tools` varchar(128) default NULL,
`url` varchar(128) default NULL,
`project_type` varchar(12) NOT NULL,
`published` tinyint(1) NOT NULL,
`start_page` tinyint(1) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_projects, Rows: 20
#---------------------------------------------------------------#
INSERT INTO `test_projects` VALUES ('1','EVENTIZE','EVENTIZE ist ein Veranstaltungsplaner für Kiel','<p>2006 mussten wir feststellen, dass die damaligen Eventkalender für Kiel unseres Erachtens nach nicht ausreichend waren und begannen mit der Programmierung einer eigenen Veranstaltungsseite.</p>
<p>Anfang 2010veröffentlichten wir die mittlerweile vierte Version, sowie eine dazugehörige iPhone-Applikation. Wir mögen Kiel und wollten dieser schönen Stadt auf unsere Art und Weise etwas zurückgeben.</p>
<p>Im Februar 2011 wurde das Projekt von uns eingestellt.</p>','1297158245','','Bernard Teske','','Ruby on Rails','sdfsdfsdfsfdsfs','intern','1','0');
INSERT INTO `test_projects` VALUES ('2','CAUntdown','','<p>Für den 2009 veranstalteten Kieler Universitäts-Feiertag „CAUntdown“  diente unsere EVENTIZE-Software als CMS. Außerdem programmierten wir für  das unter anderem bei studiVZ beworbene Festival den gesamten  Onlinevorverkauf. Dafür durften wir dann Clueso, Fettes Brot, Dennis  Lisk und Pohlmann aus der Nähe bejubeln.</p>','1297158552','Uni Kiel','Viktor Dik','Online-VVK, CMS und Umsetzung des Layouts','Ruby on Rails','','extern','1','1');
INSERT INTO `test_projects` VALUES ('18','Neues Projekt','Teaser','Beschreibung','1326199936','Kunde','Designer','Aufgaben','Werkzeuge','URL','extern','1','0');
INSERT INTO `test_projects` VALUES ('19','Neues Projekt','Teaser','Beschreibung','1326199984','Kunde','Designer','Aufgaben','Werkzeuge','URL','extern','1','0');
INSERT INTO `test_projects` VALUES ('4','ergovia','','<p>asdasd</p>','1297158732','ergovia GmbH','Florian Sell / bit.flare','CMS, Flash-Animationen','Ruby on Rails, Flash','','extern','1','0');
INSERT INTO `test_projects` VALUES ('5','SHISHA Online-Store','','<p>sdfsdf</p>','1297158837','7OFOUR GmbH','','Unterstützung bei der Programmierung','Ruby on Rails','','extern','1','0');
INSERT INTO `test_projects` VALUES ('6','Hansapark Online-VVK','','<p>asdfsd</p>','1297158889','New Communications / Hansapark','New Communications','Online-VVK, CMS und Umsetzung des Layouts','Ruby on Rails','','extern','1','0');
INSERT INTO `test_projects` VALUES ('7','Beramis','','<p>sdfsdf</p>','1297158970','Kleinhempel GmbH','Jan Volkert Ulrich','CMS, Umsetzung des Layouts','Ruby on Rails','','extern','1','0');
INSERT INTO `test_projects` VALUES ('8','360°','','<p>sdfsd</p>','1297159043','Kleinhempel GmbH','','CMS, Umsetzung des Layouts','Ruby on Rails','','extern','1','0');
INSERT INTO `test_projects` VALUES ('9','Kleinhempel Tapetenshop','','<p>dsfs</p>','1297159103','Kleinhempel GmbH','Jan Volkert Ulrich','Erstellung eines Konzepts, Umsetzung des Layouts, Programmierung','Ruby on Rails','sdfs','extern','1','1');
INSERT INTO `test_projects` VALUES ('10','BauföG','','<p>adadsf</p>','1297159183','Uni Kiel','Eigenes Layout','Erstellung eines Konzepts, Umsetzung des Layouts, Programmierung','Ruby on Rails','','intern','1','1');
INSERT INTO `test_projects` VALUES ('11','ICS Festivalmanager','','<p>sdfs</p>','1297158836','ICS Festivalgesellschaft mbH','','CMS, Umsetzung des Layouts','Ruby on Rails','','extern','1','1');
INSERT INTO `test_projects` VALUES ('12','Mobilfunkexperten','test','<p>asdasdasda sfgsd</p>','1297159180','brandslisten GmbH','','Fortführung der Umsetzung','Ruby on Rails','','extern','1','1');
INSERT INTO `test_projects` VALUES ('13','Vob SH','','<p>sdfsd</p>','1297159102','FH Kiel','','CMS, Umsetzung des Layouts','','','extern','1','0');
INSERT INTO `test_projects` VALUES ('14','CandyCMS','','<p>sdsdf</p>','1297159852','','','','PHP, MySQL','','intern','1','0');
INSERT INTO `test_projects` VALUES ('15','Snaptury','','<p>sdfsd</p>','1297159780','','','','','','intern','1','0');
INSERT INTO `test_projects` VALUES ('16','Fancygrid','','<p>sdfsd</p>','1297159853','','','','','','intern','1','0');
INSERT INTO `test_projects` VALUES ('17','Spriteskin','','<p>sdfsdf</p>','1297159851','','','','','','intern','1','0');
INSERT INTO `test_projects` VALUES ('20','Marco','Marco','<p>Marco</p>','1330425268','Marco','Marco','Marco','Marco','Marco','extern','0','0');
INSERT INTO `test_projects` VALUES ('21','Marco 1','Marco 2','<p>Marco 3</p>','1330425288','Marco 4','Marco 5','Marco 6','Marco 7','Marco 8','extern','1','0');

#---------------------------------------------------------------#
# Table: test_sessions, Columns: 5
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_sessions`;
CREATE TABLE `test_sessions` (
`id` int(11) unsigned NOT NULL,
`user_id` int(11) NOT NULL,
`session` varchar(32) default NULL,
`ip` varchar(15) default NULL,
`date` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_sessions, Rows: 9
#---------------------------------------------------------------#
INSERT INTO `test_sessions` VALUES ('1','1','qe9hbtjveu2p18r8o95571rme4','127.0.0.1','1325693070');
INSERT INTO `test_sessions` VALUES ('2','1','NULL','127.0.0.1','1326108968');
INSERT INTO `test_sessions` VALUES ('3','1','NULL','127.0.0.1','1326199771');
INSERT INTO `test_sessions` VALUES ('4','33','NULL','','1326201886');
INSERT INTO `test_sessions` VALUES ('5','33','NULL','','1326201886');
INSERT INTO `test_sessions` VALUES ('6','1','85ehlj7gu9dlti4dd6s63spoq5','127.0.0.1','1326374052');
INSERT INTO `test_sessions` VALUES ('7','1','sgkvk7ams6n89btiuhu6mrdld7','127.0.0.1','1326728330');
INSERT INTO `test_sessions` VALUES ('8','1','ler2t553qh3jh87iq688e96ap3','127.0.0.1','1326804581');
INSERT INTO `test_sessions` VALUES ('9','1','rmh5ocbnb706f7dimk4vmctpa2','127.0.0.1','1330424510');

#---------------------------------------------------------------#
# Table: test_users, Columns: 12
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `test_users`;
CREATE TABLE `test_users` (
`id` int(9) NOT NULL,
`name` varchar(32) NOT NULL,
`surname` varchar(32) default NULL,
`password` varchar(32) NOT NULL,
`email` varchar(64) NOT NULL,
`role` tinyint(1) NOT NULL default '1',
`date` int(11) default NULL,
`verification_code` varchar(12) default NULL,
`receive_newsletter` tinyint(1) default NULL,
`content` varchar(1000) default NULL,
`use_gravatar` tinyint(1) default NULL,
`api_token` varchar(32) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE email (`email`),
 UNIQUE name (`name`),
 UNIQUE userright (`role`)
) AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: test_users, Rows: 16
#---------------------------------------------------------------#
INSERT INTO `test_users` VALUES ('1','Marco','Raddatz','50c156e1f84949d05bc8c9d9bdafc5f4','marco@empuxa.com','4','1303390275','','1','werwerew','0','');
INSERT INTO `test_users` VALUES ('26','Dennis','Lizarzaburu','50c156e1f84949d05bc8c9d9bdafc5f4','dennis@empuxa.com','4','1296761282','','1','ööööffs4442asd','0','');
INSERT INTO `test_users` VALUES ('17','asdasd','asdasd','844dc8632ba73962e7b7df5581be3ccb','asdasd@plantk4.de','1','1288607650','152848397706','1','','0','');
INSERT INTO `test_users` VALUES ('18','asdasd','asdasd','844dc8632ba73962e7b7df5581be3ccb','asdasdas@plantk4.de','1','1288607673','653624419991','1','','0','');
INSERT INTO `test_users` VALUES ('19','asdasd','asdasd','844dc8632ba73962e7b7df5581be3ccb','asdasdsdas@plantk4.de','1','1288607815','559680871142','1','','0','');
INSERT INTO `test_users` VALUES ('20','asdasd','asdasd','844dc8632ba73962e7b7df5581be3ccb','asdasdsdas@planetk4.de','1','1288607914','489560456054','1','','0','');
INSERT INTO `test_users` VALUES ('21','sdfsdf','sdfsdfsd','534b837994ef0260872875c8c828028f','marco@marcoraddatz.com','1','1288607947','391994173493','1','','0','');
INSERT INTO `test_users` VALUES ('22','asdasd','sadas','844dc8632ba73962e7b7df5581be3ccb','marcoempuxa.com','1','1288954665','517067417531','1','','0','');
INSERT INTO `test_users` VALUES ('23','asdasd','sadasdsa','c141561fc3c60e85e8361cd6b06e08de','dennis@delite-media.de','1','1289483131','896814966852','1','','0','');
INSERT INTO `test_users` VALUES ('24','sadas','sadasdas','c141561fc3c60e85e8361cd6b06e08de','asdasdasd@planetk4.de','1','1289483171','','1','','0','');
INSERT INTO `test_users` VALUES ('25','sdf','dsfsdf','c141561fc3c60e85e8361cd6b06e08de','info@planetk4.de','1','1289483604','','1','','0','');
INSERT INTO `test_users` VALUES ('28','test','test','534b837994ef0260872875c8c828028f','test@marcoraddatz.com','1','1303391509','713268604657','1','','0','');
INSERT INTO `test_users` VALUES ('29','Henning','Thies','432343a58f4dee0a759ed19c0201bd56','h@planetk4.de','1','1303809901','204303390282','1','','0','');
INSERT INTO `test_users` VALUES ('30','123','','c141561fc3c60e85e8361cd6b06e08de','123@planetk4.de','1','1311092361','257282547551','1','','0','');
INSERT INTO `test_users` VALUES ('31','123','','c141561fc3c60e85e8361cd6b06e08de','erwer@planetk4.de','1','1311092385','373985384870','1','','0','');
INSERT INTO `test_users` VALUES ('32','','','','','1','','','0','','0','');

#---------------------------------------------------------------#
# Table: users, Columns: 12
#---------------------------------------------------------------#
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id` int(9) NOT NULL,
`name` varchar(32) NOT NULL,
`surname` varchar(32) default NULL,
`password` varchar(32) NOT NULL,
`email` varchar(64) NOT NULL,
`content` varchar(1000) default NULL,
`receive_newsletter` tinyint(1) default NULL,
`use_gravatar` tinyint(1) default NULL,
`role` tinyint(1) NOT NULL default '1',
`date` int(11) default NULL,
`verification_code` varchar(12) default NULL,
`api_token` varchar(32) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE email (`email`),
 UNIQUE name (`name`)
) AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

#---------------------------------------------------------------#
# Data: users, Rows: 11
#---------------------------------------------------------------#
INSERT INTO `users` VALUES ('1','Marcos','Raddatz','1fa1e3a56f96b5109ab9d9639571ced0','marco@empuxa.com','Test','1','0','4','1289832797','','534b837994ef0260872875c8c828028f');
INSERT INTO `users` VALUES ('2','sdfsdfsdf','sdfsfsd','ceae60a7926f100080b5de48a20d9070','mr@planetk4.de','Cos tits.','1','0','4','1297450813','622466611696','');
INSERT INTO `users` VALUES ('3','test','Test','534b837994ef0260872875c8c828028f','test@planetk4.de','','0','0','1','1315497583','217271414480','');
INSERT INTO `users` VALUES ('4','Marcusa','Raddatzus','534b837994ef0260872875c8c828028f','mr2@planetk4.de','','1','0','1','1322740072','345345345454','');
INSERT INTO `users` VALUES ('5','Max','Mustermannasd','534b837994ef0260872875c8c828028f','max@planetk4.de','','0','0','2','1322740323','345345453453','');
INSERT INTO `users` VALUES ('6','testt','testse','534b837994ef0260872875c8c828028f','eventizae@marcoraddatz.com','test','1','1','4','1323255617','','');
INSERT INTO `users` VALUES ('7','M','R','534b837994ef0260872875c8c828028f','asd@planetk4.de','','1','1','3','1323257648','','');
INSERT INTO `users` VALUES ('9','Marco','Raddatz','534b837994ef0260872875c8c828028f','maaa@planetk4.de','','1','0','1','1323260133','','');
INSERT INTO `users` VALUES ('94','Ma','Ra','534b837994ef0260872875c8c828028f','testestsetest@planetk4.de','','0','0','1','1325065140','fkGDVUwZJeSH','fad2387956a2b31f7f1259eb8a770879');
INSERT INTO `users` VALUES ('119','Marcotest','Raddatztest','534b837994ef0260872875c8c828028f','marcotest@marcoraddatz.com','','1','0','1','1326214250','','bde8181866a1e1dc752e840bb1a2f74f');
INSERT INTO `users` VALUES ('120','de','de','e3b4d9b31af2052cbfb4d6e54a79c607','de@planetk4.de','','0','0','1','1326111955','','2f9fa8df48f9421ce7ec5b7334899cf0');

