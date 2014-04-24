# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.12)
# Database: avante
# Generation Time: 2014-04-23 22:06:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table block_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `block_detail`;

CREATE TABLE `block_detail` (
  `blockID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `testID` int(11) DEFAULT NULL,
  `block_type` int(11) DEFAULT NULL,
  `block_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`blockID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `block_detail` WRITE;
/*!40000 ALTER TABLE `block_detail` DISABLE KEYS */;

INSERT INTO `block_detail` (`blockID`, `testID`, `block_type`, `block_number`)
VALUES
	(1,1,3,1),
	(2,2,1,1),
	(3,3,3,1),
	(4,4,4,1),
	(5,5,1,1),
	(6,6,2,1),
	(7,7,2,1),
	(8,8,2,1),
	(9,9,1,1),
	(10,10,3,1),
	(11,11,1,1),
	(12,12,1,1),
	(13,12,1,2),
	(14,12,1,3);

/*!40000 ALTER TABLE `block_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table display_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `display_type`;

CREATE TABLE `display_type` (
  `evaltypeID` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(250) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor1` varchar(20) DEFAULT NULL,
  `valor2` varchar(20) DEFAULT NULL,
  `valor3` varchar(20) DEFAULT NULL,
  `valor4` varchar(20) DEFAULT NULL,
  `valor5` varchar(20) DEFAULT NULL,
  `valor6` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`evaltypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `display_type` WRITE;
/*!40000 ALTER TABLE `display_type` DISABLE KEYS */;

INSERT INTO `display_type` (`evaltypeID`, `details`, `cantidad`, `valor1`, `valor2`, `valor3`, `valor4`, `valor5`, `valor6`)
VALUES
	(1,'1 Valor',1,'1',NULL,NULL,NULL,NULL,NULL),
	(2,'2 Valores',2,'V','F',NULL,NULL,NULL,NULL),
	(3,'2 Valores',2,'Verdadero','Falso',NULL,NULL,NULL,NULL),
	(4,'2 Valores',2,'Si','No',NULL,NULL,NULL,NULL),
	(5,'2 Valores',2,'Correcto','Incorrecto',NULL,NULL,NULL,NULL),
	(6,'2 Valores',2,'Cierto','No es cierto',NULL,NULL,NULL,NULL),
	(7,'4 Valores',4,'0','1','2','3',NULL,NULL),
	(8,'4 Valores',4,'A','B','C','D',NULL,NULL),
	(9,'5 Valores',5,'0','1','2','3','4',NULL),
	(10,'5 Valores',5,'A','B','C','D','E',NULL);

/*!40000 ALTER TABLE `display_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table evaluation_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `evaluation_type`;

CREATE TABLE `evaluation_type` (
  `resptypeID` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(250) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `value1` tinyint(1) DEFAULT NULL,
  `value2` tinyint(1) DEFAULT NULL,
  `value3` tinyint(1) DEFAULT NULL,
  `value4` tinyint(1) DEFAULT NULL,
  `vaue5` tinyint(1) DEFAULT NULL,
  `value6` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`resptypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `evaluation_type` WRITE;
/*!40000 ALTER TABLE `evaluation_type` DISABLE KEYS */;

INSERT INTO `evaluation_type` (`resptypeID`, `details`, `cantidad`, `value1`, `value2`, `value3`, `value4`, `vaue5`, `value6`)
VALUES
	(1,'1 Valor',NULL,1,NULL,NULL,NULL,NULL,NULL),
	(2,'2 Valores V=1, F=0',NULL,1,0,NULL,NULL,NULL,NULL),
	(3,'2 Valores V=0, F=1',NULL,0,1,NULL,NULL,NULL,NULL),
	(4,'4 Valores 0 1 2 3',NULL,0,1,2,3,NULL,NULL),
	(5,'4 Valores 3 2 1 0',NULL,3,2,1,0,NULL,NULL),
	(6,'4 Valores 1 2 3 4',NULL,1,2,3,4,NULL,NULL),
	(7,'4 Valores 4 3 2 1 ',NULL,4,3,2,1,NULL,NULL),
	(8,'5 Valores 0 1 2 3 4',NULL,0,1,2,3,4,NULL),
	(9,'5 Valores 4 3 2 1 0',NULL,4,3,2,1,0,NULL);

/*!40000 ALTER TABLE `evaluation_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table group_test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group_test`;

CREATE TABLE `group_test` (
  `grouptestID` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(300) DEFAULT NULL,
  `history` varchar(500) DEFAULT NULL,
  `references` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`grouptestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `group_test` WRITE;
/*!40000 ALTER TABLE `group_test` DISABLE KEYS */;

INSERT INTO `group_test` (`grouptestID`, `details`, `history`, `references`)
VALUES
	(1,'group 1','aa','aa'),
	(2,'group 2','aa','aaa'),
	(3,'grupo 3','sss','fdfd'),
	(4,'group 4','sdfs','fdgf'),
	(5,'Instrumentos de evaluaci&oacute;n para los transtornos del humor','aaa','aa'),
	(6,'Instrumentos de evaluaci&oacute;n de ideaci&oacute;n y comportamiento suicida','assdads','dsfd'),
	(7,'Instrumentos de evaluaci&oacute;n para los transtornos neur&oacute;ticos y secundarios a situaciones estresantes','sdsd','dsfsf'),
	(8,'grupo 8','sdfds','sdfsd'),
	(9,'Instrumentos de evaluaci&oacute;n para la personalidad y sus transtornos','asda','sfd'),
	(10,'grupo 10','dsf','sdfs'),
	(11,'grupo 11','sdf','svsd'),
	(12,'grupo 12','sdf','sdfds'),
	(13,'Instrumentos de evaluaci&oacute;n de la calidad de vida relacionada con la salud','asda','sdfgsd');

/*!40000 ALTER TABLE `group_test` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `logID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `actionID` int(11) DEFAULT NULL,
  `action_datetime1` datetime DEFAULT NULL,
  PRIMARY KEY (`logID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table login_attempts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;

INSERT INTO `login_attempts` (`id`, `userID`, `time`)
VALUES
	(1,1,'1398229622'),
	(2,1,'1398231697'),
	(3,1,'1398232505');

/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `salt` varchar(128) DEFAULT NULL,
  `usrType` int(11) NOT NULL DEFAULT '0',
  `idNumber` varchar(50) DEFAULT NULL,
  `firstname` varchar(30) NOT NULL,
  `sec_name` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `sec_lastname` varchar(30) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `ciudadID` int(11) DEFAULT NULL,
  `homephone` varchar(30) DEFAULT NULL,
  `homephone_alt` varchar(30) DEFAULT NULL,
  `workphone` varchar(30) DEFAULT NULL,
  `workphone_alt` varchar(30) DEFAULT NULL,
  `cellphone` varchar(30) DEFAULT NULL,
  `cellphone_alt` varchar(30) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_alt` varchar(100) DEFAULT NULL,
  `bbpin` varchar(8) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `linked` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `twiter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `pinterest` varchar(100) DEFAULT NULL,
  `tumblr` varchar(100) DEFAULT NULL,
  `vk` varchar(100) DEFAULT NULL,
  `flickr` varchar(100) DEFAULT NULL,
  `myspace` varchar(100) DEFAULT NULL,
  `tagged` varchar(100) DEFAULT NULL,
  `askfm` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `secname` (`sec_name`),
  UNIQUE KEY `sec_name` (`sec_name`),
  UNIQUE KEY `sec_name_2` (`sec_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;

INSERT INTO `members` (`userID`, `username`, `password`, `salt`, `usrType`, `idNumber`, `firstname`, `sec_name`, `lastname`, `sec_lastname`, `companyID`, `address`, `ciudadID`, `homephone`, `homephone_alt`, `workphone`, `workphone_alt`, `cellphone`, `cellphone_alt`, `photo`, `email`, `email_alt`, `bbpin`, `facebook`, `googleplus`, `linked`, `whatsapp`, `instagram`, `twiter`, `skype`, `pinterest`, `tumblr`, `vk`, `flickr`, `myspace`, `tagged`, `askfm`)
VALUES
	(1,'joshepw','86abc31fcd8fa29076c3479efef8f65626b671268628f1e52fec80c3849747ef574419f00e6581a7fb0b7a451485543cec6d2ab03d5534a6389d31a920e2169c','6546cd0960fecd84dde9251918acc0aeac554187e7ee07618a9f9ae80ed7f5e721cbb4aec5929705f8740e3d7676bb63b397ef27663eebf3ccd720ce9ef0b1a9',1,'0501198903958','Jose','Ivan','Suazo','Espinoza',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'isuazo@netsti.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table patience
# ------------------------------------------------------------

DROP TABLE IF EXISTS `patience`;

CREATE TABLE `patience` (
  `patienceID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`patienceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table psyco_test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `psyco_test`;

CREATE TABLE `psyco_test` (
  `psycotestID` int(11) NOT NULL AUTO_INCREMENT,
  `grouptestID` int(11) DEFAULT NULL,
  `index` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `instructions` varchar(500) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`psycotestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table question
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `questionID` int(11) NOT NULL AUTO_INCREMENT,
  `testID` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `question` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`questionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;

INSERT INTO `question` (`questionID`, `testID`, `index`, `question`)
VALUES
	(1,1,1,'Separación o divorcio'),
	(2,1,2,'Proceso judicial o problemas legales graves pudiendo terminar en encarcelamiento.'),
	(3,1,0,'Muerte del cónyuge.');

/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table response
# ------------------------------------------------------------

DROP TABLE IF EXISTS `response`;

CREATE TABLE `response` (
  `respID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `resptypeID` int(11) DEFAULT NULL,
  `evaltypeID` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`respID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;

INSERT INTO `response` (`respID`, `questionID`, `resptypeID`, `evaltypeID`, `value`)
VALUES
	(1,1,4,NULL,NULL);

/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table response_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `response_values`;

CREATE TABLE `response_values` (
  `respvalueID` int(11) NOT NULL AUTO_INCREMENT,
  `responseID` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`respvalueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table result_test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `result_test`;

CREATE TABLE `result_test` (
  `resultID` int(11) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL,
  `sessionID` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `sessionID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `session_datetime` datetime DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `session_time` time DEFAULT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table test_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_detail`;

CREATE TABLE `test_detail` (
  `testID` int(11) NOT NULL,
  `test_name` varchar(300) DEFAULT NULL,
  `test_instructions` varchar(500) DEFAULT NULL,
  `test_num_questions` int(11) DEFAULT NULL,
  `test_details` varchar(500) DEFAULT NULL,
  `test_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`testID`),
  UNIQUE KEY `test_id` (`testID`),
  UNIQUE KEY `test_name` (`test_name`),
  UNIQUE KEY `test_name_2` (`test_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `test_detail` WRITE;
/*!40000 ALTER TABLE `test_detail` DISABLE KEYS */;

INSERT INTO `test_detail` (`testID`, `test_name`, `test_instructions`, `test_num_questions`, `test_details`, `test_type`)
VALUES
	(1,'Escala de  Estrés psicosocial (Holmes y Rahe)','Conteste con franquesa las preguntas que se le presentan a continuacion. ',47,'Este test forma parte de la evaluacion psicologica preliminar.',NULL),
	(2,'Escala  Autoaplicada para la Medida de la Depresíon de Zung y Conde','A continuacion se expresan varias respuestas posibles a cada uno de los 20 apartados. Detras de cada frase marque con una cruz la casilla que mejor refleje su situacion actual.',20,'Este test forma parte de la evaluacion psicologica preliminar.',NULL),
	(3,'Cuestionario de Trastornos del Humor',NULL,17,NULL,NULL),
	(4,'Escala de Desesperanza de Beck',NULL,20,NULL,NULL),
	(5,'Escala  de Riesgo de Violencia de Plutchik ',NULL,12,NULL,NULL),
	(6,'Escala de Hamilton para la Ansiedad',NULL,13,NULL,NULL),
	(7,'Inventario de Fobia Social',NULL,17,NULL,NULL),
	(8,'Inventario de evaluación del TAG',NULL,22,NULL,NULL),
	(9,'Escala de Impulsividad de Plutchik (EI)',NULL,15,NULL,NULL),
	(10,'Escala de Calidad de Vida para la Depresión',NULL,34,NULL,NULL),
	(11,'Inventario de Pensamientos Automaticos',NULL,45,NULL,NULL),
	(12,'Cuestionario de Personalidad (IE)',NULL,130,NULL,NULL);

/*!40000 ALTER TABLE `test_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_history`;

CREATE TABLE `test_history` (
  `testhistoryID` int(11) NOT NULL AUTO_INCREMENT,
  `psycotestID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `sessionID` int(11) DEFAULT NULL,
  `motive` varchar(5000) DEFAULT NULL,
  `observations` varchar(4999) DEFAULT NULL,
  PRIMARY KEY (`testhistoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table tests_questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tests_questions`;

CREATE TABLE `tests_questions` (
  `questionID` int(11) NOT NULL,
  `testID` int(11) NOT NULL,
  `test_index` int(11) NOT NULL,
  `question_text` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `blockID` int(11) DEFAULT NULL,
  PRIMARY KEY (`questionID`),
  UNIQUE KEY `question_id` (`questionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `tests_questions` WRITE;
/*!40000 ALTER TABLE `tests_questions` DISABLE KEYS */;

INSERT INTO `tests_questions` (`questionID`, `testID`, `test_index`, `question_text`, `blockID`)
VALUES
	(0,1,1,'Muerte del cónyuge',NULL),
	(1,1,2,'Separación o divorcio',NULL),
	(2,1,3,'Proceso judicial o problemas legales graves pudiendo terminar en encarcelamiento',NULL),
	(3,1,4,'Muerte de un familiar cercano',NULL),
	(4,1,5,'Enfermedad o accidente que requiere guardar cama',NULL),
	(5,1,6,'Contraer matrimonio',NULL),
	(6,1,7,'Quedarse sin trabajo',NULL),
	(7,1,8,'Retiro laboral',NULL),
	(8,1,9,'Reconciliación con el cónyuge',NULL),
	(9,1,10,'Problemas sexuales ( impotencia, trastornos eyaculatorios, anorgasmia, fobias, crisis de identidad sexual ).',NULL),
	(10,1,11,'Enfermedad de un miembro de la familia o mejoría marcada de una enfermedad crónica en un miembro de la familia',NULL),
	(11,1,12,'Rotura de un noviazgo o relación similar',NULL),
	(12,1,13,'Embarazo',NULL),
	(13,1,14,'Incorporación de un nuevo miembro a la familia',NULL),
	(14,1,15,'Muerte de un amigo',NULL),
	(15,1,16,'Cambio brusco de las finanzas familiares (en más o en menos)',NULL),
	(16,1,17,'Reajuste en la empresa o conflictividad laboral en la empresa en que trabaja',NULL),
	(17,1,18,'Cambio en el tipo de actividad laboral',NULL),
	(18,1,19,'Empréstito o hipoteca de más de seis mil euros',NULL),
	(19,1,20,'La esposa se queda embarazada',NULL),
	(20,1,21,'Cambio radical (en más o en menos) en el número de disputas familiares',NULL),
	(21,1,22,'Enamorarse o iniciar una nueva amistad íntima y profunda',NULL),
	(22,1,23,'El marido o la esposa pierde su empleo',NULL),
	(23,1,24,'Mudanza',NULL),
	(24,1,25,'Cambio de lugar de trabajo',NULL),
	(25,1,26,'Accidente o situación de violencia física',NULL),
	(26,1,27,'Un miembro de la familia deja de vivir en la casa familiar',NULL),
	(27,1,28,'Inseguridad en el barrio donde vive o trabaja.',NULL),
	(28,1,29,'La esposa comienza a dejar de trabajar fuera de casa',NULL),
	(29,1,30,'Peleas o desacuerdos con vecinos o familiares no residentes en la casa familiar (o desaparición de un estado de conflictividad habitual)',NULL),
	(30,1,31,'Éxito personal de gran envergadura',NULL),
	(31,1,32,'Exámenes',NULL),
	(32,1,33,'Promoción en el trabajo',NULL),
	(33,1,34,'Peleas o desacuerdos con colegas y compañeros de trabajo (o desaparición de un estado de conflictividad habitual)',NULL),
	(34,1,35,'Reformas en la casa (importantes)',NULL),
	(35,1,36,'Deterioro notable de la vivienda o del vecindario',NULL),
	(36,1,37,'Cambio en las costumbres personales (de salir, vestir, de estilo de vida, etc.)',NULL),
	(37,1,38,'Cambio importante en las horas o condiciones de trabajo',NULL),
	(38,1,39,'Cambio en las opiniones religiosas',NULL),
	(39,1,40,'Cambio en las opiniones políticas',NULL),
	(40,1,41,'Modificaciones en la vida social (en más o en menos) aparte de los posibles cambios en las costumbres o hábitos personales',NULL),
	(41,1,42,'Cambio en la manera o duración del sueño.',NULL),
	(42,1,43,'Cambio en la frecuencia de reuniones familiares',NULL),
	(43,1,44,'Cambio en las costumbres alimenticias o apetito',NULL),
	(44,1,45,'Vacaciones fuera de casa',NULL),
	(45,1,46,'Fiestas de Navidad y Reyes o su equivalente',NULL),
	(46,1,47,'Problemas legales menores (incluyendo sanciones de tráfico)',NULL),
	(47,2,1,'Me siento triste y deprimido',NULL),
	(48,2,2,'Por las mañanas me siento mejor que por las tardes.',NULL),
	(49,2,3,'Frecuentemente tengo ganas de llorar y a veces lloro.',NULL),
	(50,2,4,'Me cuesta mucho dormir o duermo mal por la noche.',NULL),
	(51,2,5,'Ahora tengo tanto apetito como antes.',NULL),
	(52,2,6,'Todavía me siento atraído por el sexo opuesto.',NULL),
	(53,2,7,'Creo que estoy adelgazando',NULL),
	(54,2,8,'Estoy estreñido',NULL),
	(55,2,9,'Tengo palpitaciones.',NULL),
	(56,2,10,'Me canso por cualquier cosa',NULL),
	(57,2,11,'Mi cabeza está tan despejada como antes.',NULL),
	(58,2,12,'Hago las cosas con la misma facilidad de antes.',NULL),
	(59,2,13,'Me siento agitado e intranquilo y no puedo estar quieto.',NULL),
	(60,2,14,'Tengo esperanza y confianza en el futuro.',NULL),
	(61,2,15,'Me siento más irritable que habitualmente.',NULL),
	(62,2,16,'Encuentro fácil tomar decisiones',NULL),
	(63,2,17,'Me creo útil y necesario para la gente.',NULL),
	(64,2,18,'Encuentro agradable vivir, mi vida es plena.',NULL),
	(65,2,19,'creo que sería mejor para los demás si me muriera.',NULL),
	(66,2,20,'Me gustan las mismas cosas que habitualmente me agradaban.',NULL),
	(67,3,1,'se sintiera tan bien o tan hiperactivo que otras personas han pensado que no estaba en su estado normal o que estaba tan hiperactivo que tenía problemas.',NULL),
	(68,3,2,'estaba tan irritable que gritaba a la gente o se ha peleado o discutido.',NULL),
	(69,3,3,'se sentía mucho más seguro que normalmente.',NULL),
	(70,3,4,'dormía mucho menos de lo habitual y creía que realmente no era importante.',NULL),
	(71,3,5,'Estaba más hablador y hablaba mucho más rápido de lo habitual.',NULL),
	(72,3,6,'Sus pensamientos iban más rápidos en su cabeza o no podía frenar su mente.',NULL),
	(73,3,7,'Se distraía fácilmente por las cosas de alrededor o ha tenido problemas para concentrarse  o seguir el hilo.',NULL),
	(74,3,8,'Tenía mucha más energía de la habitual.',NULL),
	(75,3,9,'Estaba mucho más activo o hacía muchas más cosas de lo habitual.',NULL),
	(76,3,10,'Era mucho más social o extrovertido de lo habitual, por ejemplo, llamaba a los amigos en plena noche.',NULL),
	(77,3,11,'Tenía mucho más interés de lo habitual por el sexo.',NULL),
	(78,3,12,'Hizo cosas que eran inusuales para usted o que otras personas pudieran pensar que eran excesivas, estupidas o arriesgadas.',NULL),
	(79,3,13,'Ha gastado dinero que le trajera a problemas a usted o a su familia.',NULL),
	(80,3,14,'Si ha respondido SÍ a más de una de las cuestiones anteriores, ¿han ocurrido varias de estas durante el mismo período?',NULL),
	(81,3,15,'¿Cuánto problema le han causado alguna de estas cosas – en el trabajo; problemas con la familia,el dinero o legales; metiéndose en discusiones o peleas? Por favor señale una sola respuesta.',NULL),
	(82,3,16,'¿Ha tenido alguno de sus parientes (p. ej., hijos, hermanos, padres, abuelos, tías, tíos) una enfermedad de tipo maníaco-depresiva o trastorno bipolar?',NULL),
	(83,3,17,'¿Le ha dicho alguna vez un profesional de la salud que usted tiene una enfermedad maníaco-depresiva o trastorno bipolar?',NULL),
	(84,4,1,'Espero el futuro con esperanza y entusiasmo.',NULL),
	(85,4,2,'Puedo darme por vencido, renunciar, ya que no puedo hacer mejor  las cosas por mí mismo.',NULL),
	(86,4,3,'Cuando las cosas van mal, me alivia saber que las cosas no pueden permanecer tiempo así',NULL),
	(87,4,4,'No puedo imaginar cómo será mi vida dentro de 10 años.',NULL),
	(88,4,5,'Tengo bastante tiempo para llevar a cabo las cosas que quisiera poder hacer.',NULL),
	(89,4,6,'En el futuro, espero conseguir lo que me pueda interesar.',NULL),
	(90,4,7,'Mi futuro parece oscuro.',NULL),
	(91,4,8,'Espero más cosas buenas de la vida que lo que la gente suele conseguir por término medio.',NULL),
	(92,4,9,'No logro hacer que las cosas cambien, y no existen razones para creer que pueda en el futuro.',NULL),
	(93,4,10,'Mis pasadas experiencias me han preparado bien para mi futuro.',NULL),
	(94,4,11,'Todo lo que puedo ver por delante de mi es más desagradable que agradable.',NULL),
	(95,4,12,'No espero conseguir lo que realmente deseo.',NULL),
	(96,4,13,'Cuando miro hacia el futuro, espero que seré más feliz de lo que soy ahora.',NULL),
	(97,4,14,'Las cosas no marchan como yo quisiera.',NULL),
	(98,4,15,'Tengo una gran confianza en el futuro.',NULL),
	(99,4,16,'Nunca consigo lo que deseo, por lo que es absurdo desear cualquier cosa.',NULL),
	(100,4,17,'Es muy improbable que pueda lograr una satisfacción real en el futuro.',NULL),
	(101,4,18,'El futuro me parece vago e incierto.',NULL),
	(102,4,19,'Espero más bien épocas buenas que malas.',NULL),
	(103,4,20,'No merece la pena que intente conseguir algo que desee, porque probablemente no lo lograré.',NULL),
	(104,5,1,'¿Se enfada con facilidad?',NULL),
	(105,5,2,'¿Se enfada continuamente con la gente?',NULL),
	(106,5,3,'¿Se enfurece sin motivo?',NULL),
	(107,5,4,'¿Cuándo se enfada coge un arma?',NULL),
	(108,5,5,'¿Ha lastimado alguna vez  a alguien en una pelea?',NULL),
	(109,5,6,'¿Ha pegado o atacado alguna vez a algún familiar suyo?',NULL),
	(110,5,7,'¿Ha pegado o atacado alguna vez a alguien que no sea familiar suyo?',NULL),
	(111,5,8,'¿Ha usado alguna vez un objeto para agredir a alguien?',NULL),
	(112,5,9,'¿Podría conseguir un arma con facilidad?',NULL),
	(113,5,10,'¿Cuántas veces ha sido usted detenido por delitos no violentos como irse de una tienda o falsificar documentos?',NULL),
	(114,5,11,'¿Cuántas veces ha sido usted detenido por delitos como robo a mano armada o agresión violenta?',NULL),
	(115,5,12,'¿Guarda o colecciona armas en su casa y sabe cómo utilizarlas?',NULL),
	(116,6,1,'Humor ansioso (inquietud, espera de lo peor, aprensión[ anticipación temerosa], irritabilidad)',NULL),
	(117,6,2,'Tensión (sensación de tensión, fatigabilidad, imposibilidad de relajarse, llanto fácil, temblor, sensación de no poder quedarse en un lugar)',NULL),
	(118,6,3,'Miedos ( a la oscuridad, a la gente desconocida, a quedarse solo, a los animales grandes, a las multitudes, etc.)',NULL),
	(119,6,4,'Insomnio (dificultad para conciliar el sueño, sueño interrumpido, sueño no satisfactorio con cansancio al despertar, malos sueños, pesadillias, terrores nocturnos)',NULL),
	(120,6,5,'Funciones Intelectuales (dificultad de concentracion, mala memoria)',NULL),
	(121,6,6,'Humor deprimido (falta de interés, no disfruta con sus pasatiempos, depresión, despertar precoz, variaciones del humor a lo largo del día)',NULL),
	(122,6,7,'Síntomas somáticos generales (musculares) (dolores y molestias musculares, rigidez muscular, sacudidas clónicas, rechinar de dientes, voz poco firme o insegura)',NULL),
	(123,6,8,'Síntomas somáticos  generales (sensoriales) (zumbidos de oídos, visión borrosa, sofocos o escalofríos, sensación de debilidad, sensación de hormigueo)',NULL),
	(124,6,9,'Síntomas cardiovasculares (taquicardia, palpitaciones, dolores en el pecho, latidos vasculares, extrasístoles)',NULL),
	(125,6,10,'Síntomas respiratorios (peso en el pecho o sensación de opresión torácica, sensación de ahogo, suspiros, falta de aire)',NULL),
	(126,6,11,'Síntomas gastrointestinales (dificultad para tragar, meteorismo, dispepsia, dolor antes o después de comer, sensación de ardor, distensión abdominal, pirosis, náuseas, vómitos, sensación de estómago vacío, cólicos abdominales, borborigmos, diarrea, estreñimiento)',NULL),
	(127,6,12,'Síntomas genitourinarios (amenorrea, metrorragia, micciones frecuentes, urgencia de la micción, desarrollo de frigidez, eyaculación precoz, impotencia)',NULL),
	(128,6,13,'Síntomas del sistema nervioso autónomo (sequedad de boca, enrojecimiento, palidez, sudoración excesiva, vértigos, cefaleas de tensíon, piloerección)',NULL),
	(129,7,1,'Tengo miedo a la persona con autoridad.',NULL),
	(130,7,2,'Me molesta  ruborizarme delante de la gente.',NULL),
	(131,7,3,'Las fiestas y acontecimientos sociales me dan miedo.',NULL),
	(132,7,4,'Evito hablar con desconocidos',NULL),
	(133,7,5,'Me da mucho miedo ser criticado.',NULL),
	(134,7,6,'Por temor al ridiculo evito hacer cosas o hablar con la gente.',NULL),
	(135,7,7,'Sudar en público me produce malestar.',NULL),
	(136,7,8,'Evito ir a fiestas.',NULL),
	(137,7,9,'Evito actividades en las que soy el centro de atención.',NULL),
	(138,7,10,'Hablar con extraños me atemoriza.',NULL),
	(139,7,11,'Evito dar discursos.',NULL),
	(140,7,12,'Haría culaquier cosa para evitar ser criticado.',NULL),
	(141,7,13,'Me dan miedo las palpitaciones cuando estoy con gente.',NULL),
	(142,7,14,'Temo hacer las cosas cuando la gente puede estar mirándome.',NULL),
	(143,7,15,'Entre mis mayores miedos están hacer el ridículo o parecer estúpido.',NULL),
	(144,7,16,'Evito hablar con cualquiera que tenga autoridad.',NULL),
	(145,7,17,'Temblar o presentar sacudidas delante de otros me produce malestar.',NULL),
	(146,8,1,'Estoy ansioso/a la mayoría de los dias.',NULL),
	(147,8,2,'Me canso fácilmente.',NULL),
	(148,8,3,'Me preocupo por los acontecimientos cotidianos.',NULL),
	(149,8,4,'Encuentro dificultad para relajarme.',NULL),
	(150,8,5,'Me siento \"al límite\".',NULL),
	(151,8,6,'Me despierto por la noche.',NULL),
	(152,8,7,'Esperimento sofocos o escalofríos.',NULL),
	(153,8,8,'Tengo malestar por mi ansiedad.',NULL),
	(154,8,9,'Tengo la boca seca.',NULL),
	(155,8,10,'Temo perder el control, desmayarme o volverme loco/a.',NULL),
	(156,8,11,'Estoy molesto/a por la inquietud.',NULL),
	(157,8,12,'Sufro mareos.',NULL),
	(158,8,13,'Estoy molesto/a por tener temblores y sacudidas.',NULL),
	(159,8,14,'Tengo dificultad para coger el sueño.',NULL),
	(160,8,15,'Sufro por la tensión o dolor de los músculos.',NULL),
	(161,8,16,'Estoy molesto/a por la dificultad con la respiración.',NULL),
	(162,8,17,'Me asusto f\'ácilmente.',NULL),
	(163,8,18,'Tengo dificultad para concentrarme.',NULL),
	(164,8,19,'Tengo dificultad para controlar mi ansiedad.',NULL),
	(165,8,20,'Estoy molesto/a por hormigueos o insensibilidad en las manos.',NULL),
	(166,8,21,'Me preocupo excesivamente.',NULL),
	(167,8,22,'Estoy irritable.',NULL),
	(168,9,1,'¿Le resulta difícil esperar en una cola?',NULL),
	(169,9,2,'¿Hace cosas impulsivamente?',NULL),
	(170,9,3,'¿Gasta dinero impulsivamente?',NULL),
	(171,9,4,'¿Planea cosas con anticipación?',NULL),
	(172,9,5,'¿Pierde la paciencia a menudo?',NULL),
	(173,9,6,'¿Le resulta fácil concentrarse?',NULL),
	(174,9,7,'¿Le resulta difícil controlar los impulsos sexuales?',NULL),
	(175,9,8,'¿Dice usted lo primero que le viene a la cabeza?',NULL),
	(176,9,9,'¿Acostumbra a comer aun cuando no tenga hambre?',NULL),
	(177,9,10,'¿Es usted impulsivo/a?',NULL),
	(178,9,11,'¿Termina las cosas que empieza?',NULL),
	(179,9,12,'¿Le resulta difícil controlar las emociones?',NULL),
	(180,9,13,'¿Se distrae fácilmente?',NULL),
	(181,9,14,'¿Le resulta difícil quedarse quieto?',NULL),
	(182,9,15,'¿Es usted cuidadoso o cauteloso?',NULL),
	(183,10,1,'Sólo quiero que pase el tiempo.',NULL),
	(184,10,2,'Tengo esperanza en el futuro.',NULL),
	(185,10,3,'Me cuesta mantener una conversación.',NULL),
	(186,10,4,'Me gusta estar al corriente de las cosas.',NULL),
	(187,10,5,'Siento que mi vida se está perdiendo.',NULL),
	(188,10,6,'Siento como si no controlara mi vida.',NULL),
	(189,10,7,'Me cuesta salir de casa.',NULL),
	(190,10,8,'En general, disfruto con lo que hago.',NULL),
	(191,10,9,'Le he perdido el gusto a la vida.',NULL),
	(192,10,10,'Siento que no aporto nada a los demás.',NULL),
	(193,10,11,'No puedo abrirme a la gente que quiero.',NULL),
	(194,10,12,'Atiendo mis necesidades (aseo, alimentación, descanso, etc.).',NULL),
	(195,10,13,'Soy capaz de pensar en el futuro.',NULL),
	(196,10,14,'Sólo quiero pasar desapercibido/a.',NULL),
	(197,10,15,'Hay cosas que me ilusionan.',NULL),
	(198,10,16,'Ya no me divierte nada.',NULL),
	(199,10,17,'No me ocupo de mis amigos.',NULL),
	(200,10,18,'No me cuesta hacer mis tareas diarias.',NULL),
	(201,10,19,'Me aíslo de la gente.',NULL),
	(202,10,20,'Me cuesta decidir hasta en lo más sencillo.',NULL),
	(203,10,21,'Me siento una carga para los demás.',NULL),
	(204,10,22,'La mayor parte del tiempo estoy como ausente, con la mirada perdida.',NULL),
	(205,10,23,'Me cuesta el trato con los demás.',NULL),
	(206,10,24,'Me encierro en mi mismo/a.',NULL),
	(207,10,25,'Descuido mi aspecto.',NULL),
	(208,10,26,'Puedo ver el lado divertido de las cosas.',NULL),
	(209,10,27,'No me entero de lo que me dice la gente.',NULL),
	(210,10,28,'Creo que decepciono a todo el mundo.',NULL),
	(211,10,29,'Me agobia cada nuevo día.',NULL),
	(212,10,30,'Disfruto de la comida.',NULL),
	(213,10,31,'Trato de evitar a la gente.',NULL),
	(214,10,32,'Soy reacio/a a contestar al teléfono y abrir la puerta.',NULL),
	(215,10,33,'Mi vida no tiene sentido.',NULL),
	(216,10,34,'Soy capaz de afrontar los problemas cotidianos.',NULL),
	(217,11,1,'No puedo soportar cuertas cosas que me pasan.',NULL),
	(218,11,2,'Solamente me pasan cosas malas.',NULL),
	(219,11,3,'Todo lo que hago me sale mal.',NULL),
	(220,11,4,'Sé que piensan mal de mi.',NULL),
	(221,11,5,'¿Y si tengo alguna enfermedad grave?',NULL),
	(222,11,6,'Soy inferior a la gente en casi todo.',NULL),
	(223,11,7,'Si otros cambiaran su actitud yo me sentiría mejor.',NULL),
	(224,11,8,'¡No hay derecho a que me traten así!',NULL),
	(225,11,9,'Si me siento triste es porque soy un enfermo mental.',NULL),
	(226,11,10,'Mis problemas dependen de los que me rodean.',NULL),
	(227,11,11,'Soy un desastre como persona.',NULL),
	(228,11,12,'Yo tengo la culpa de todo lo que me pasa.',NULL),
	(229,11,13,'Debería de estar bien y no tener estos problemas.',NULL),
	(230,11,14,'Sé que tengo la razón y no me entienden.',NULL),
	(231,11,15,'Aunque ahora sufra, algún día tendré mi recompenza.',NULL),
	(232,11,16,'Es horrible que me pase esto.',NULL),
	(233,11,17,'Mi vida es un continuo fracaso.',NULL),
	(234,11,18,'Siempre tendré este problema.',NULL),
	(235,11,19,'Sé que me están mintiendo y engañando',NULL),
	(236,11,20,'¿Y si me vuelvo loco y pierdo la cabeza?',NULL),
	(237,11,21,'Soy superior a la gente en casi todo.',NULL),
	(238,11,22,'Yo soy responsable del sufrimiento de los que me rodean.',NULL),
	(239,11,23,'Si me quisieran de verdad no me tratarían así.',NULL),
	(240,11,24,'Me siento culpable, y es porque he hecho algo malo.',NULL),
	(241,11,25,'Si tuviera más apoyo no tendría estos problemas.',NULL),
	(242,11,26,'Alguien que conozco es un imbecíl.',NULL),
	(243,11,27,'Otros tienen la culpa de lo que me pasa.',NULL),
	(244,11,28,'No debería de cometer estos errores.',NULL),
	(245,11,29,'No quiere reconocer que estoy en lo cierto.',NULL),
	(246,11,30,'ya vendrán mejores tiempos.',NULL),
	(247,11,31,'Es insoportable, no puedo aguantar más.',NULL),
	(248,11,32,'Soy incompetente e inútil.',NULL),
	(249,11,33,'Nunca podré salir de esta situación.',NULL),
	(250,11,34,'Quieren hacerme daño',NULL),
	(251,11,35,'¿Y si les pasa algo malo a las personas a quienes quiero?',NULL),
	(252,11,36,'La gente hace las cosas mejor que yo.',NULL),
	(253,11,37,'Soy una victima de mis circunstancias.',NULL),
	(254,11,38,'No me tratan como deberían hacerlo y me merezco.',NULL),
	(255,11,39,'Si tengo estos síntomas es porque soy un enfermo.',NULL),
	(256,11,40,'Si tuviera mejor situación económica no tendría estos problemas.',NULL),
	(257,11,41,'Soy un neurótico.',NULL),
	(258,11,42,'Lo que me pasa es un castigo que merezco.',NULL),
	(259,11,43,'Debería recibir mas atención y cariño de otros.',NULL),
	(260,11,44,'Tengo razón, y voy a hacer lo que me da la gana.',NULL),
	(261,11,45,'Tarde o temprano me irán las cosas mejor.',NULL),
	(262,12,1,'Me preocupo fácilmente por los demás.',NULL),
	(263,12,2,'Los demás opinan de mi que soy muy atento y servicial.',NULL),
	(264,12,3,'Me considero una persona feliz si los que están a mi alrededor son felices.',NULL),
	(265,12,4,'Me considero que soy una persona entregada a mis amistades y relaciones personales.',NULL),
	(266,12,5,'Prefiero estar acompañado que estar solo.',NULL),
	(267,12,6,'Prefiero trabajar en grupo siempre y cuando alguien más tenga la responsabilidad de dirigir.',NULL),
	(268,12,7,'Siempre que tomo alguna decisión, consulto con alguien para recibir consejo.',NULL),
	(269,12,8,'Me gusta ser atento y complacer las necesidades de los demás.',NULL),
	(270,12,9,'Se me dificulta expresar mis sentimientos y gustos, especialmente cuando estos van en contra a los de los demás.',NULL),
	(271,12,10,'Se me es difícil decir que \"NO\" a las peticiones y deseos de los demás.',NULL),
	(272,12,11,'Las demás personas opinan que le dedico más tiempo a mi trabajo que a mi mismo.',NULL),
	(273,12,12,'Me considero que las cosas para que salgan bien, tengo que hacerlas yo mismo.',NULL),
	(274,12,13,'Me considero una persona perfeccionista con todo lo que hago.',NULL),
	(275,12,14,'Mi ambiente y mi persona debe estar siempre ordenado y limpio.',NULL),
	(276,12,15,'Me considero que soy una persona muy detallista.',NULL),
	(277,12,16,'Me considero una persona precavida, ya que guardo todo lo que pueda necesitar para el futuro.',NULL),
	(278,12,17,'Cuando inicio un trabajo, no puedo parar hasta terminarlo.',NULL),
	(279,12,18,'En una discusión, siempre me gusta tener la razón, y si no la tengo me molesto.',NULL),
	(280,12,19,'Me desagrada enormemente cuando las cosas no salen como lo he planificado.',NULL),
	(281,12,20,'He llegado a tener ciertas dificultades con los demás por enfatizarme en pequeños detalles que considero que tienen mucha relevancia.',NULL),
	(282,12,21,'Las demás personas se refieren constantemente hacia mi como una persona \"comoda\".',NULL),
	(283,12,22,'Dedico el tiempo necesario a mis obligaciones (trabajo, estudio), cuando me solicitan dar más de lo que he dado me molesta.',NULL),
	(284,12,23,'A los demás muchas veces les molesta como dedico tiempo en disfrutar actividades que me provocan placer. (P.ej. Ver televisión, leer un libro, dedicarle el tiempo a mi jardin, ir de compras, etc.).',NULL),
	(285,12,24,'Muchas veces dejo para el día siguiente actividades u obligaciones.',NULL),
	(286,12,25,'Considero tener una vida plácida y confortable, sin mayores preocupaciones.',NULL),
	(287,12,26,'Me molesto y me incomoda cuando alguien me pide que cambie mis prioridades.',NULL),
	(288,12,27,'Trato en todo lo posible de evitar las tensiones, conflictos y problemas.',NULL),
	(289,12,28,'Las personas me critican de la forma \"Cómoda\" en que veo la vida.',NULL),
	(290,12,29,'Considero que lo más importante de la vida es: \"relajarse, disfrutar y evitar las tensiones\".',NULL),
	(291,12,30,'Soy una persona que fácilmente encuentro tiempo para descansar y disfrutar del tiempo libre.',NULL),
	(292,12,31,'Considero que mi vida esta llena de riesgos.',NULL),
	(293,12,32,'Disfruto mucho de las experiencias nuevas y excitantes.',NULL),
	(294,12,33,'Me gustan los viajes y los nuevos sitios por conocer.',NULL),
	(295,12,34,'La gente reprocha y critica mi forma de gastar el dinero, pues considero que el dinero hay que gastarlo.',NULL),
	(296,12,35,'Los demás consideran que soy una persona valiente e intrépida, con mucho coraje.',NULL),
	(297,12,36,'No se me dificulta expresar mis emociones, sin importar lo que los demás piensen de ello.',NULL),
	(298,12,37,'Los demás me critican por ser una persona rebelde y desafiante.',NULL),
	(299,12,38,'Considero que mi vida esta llena de riesgos.',NULL),
	(300,12,39,'Se me dificulta mantener una relación seria y verdadera.',NULL),
	(301,12,40,'Muchas veces he tenido dificultades con las otras personas por mi impulsividad.',NULL),
	(302,12,41,'Disfruto el mandar y dirigir a otras personas.',NULL),
	(303,12,42,'Me considero una persona bastante competitiva y luchadora.',NULL),
	(304,12,43,'Considero que los demás deben actuar bajo ciertas normas y disciplinas que no se pueden romper.',NULL),
	(305,12,44,'Soy una persona que se altera con facilidad.',NULL),
	(306,12,45,'Los demás me critican de ser muy estricto y rígido con las normas.',NULL),
	(307,12,46,'La mayoría de las veces mis conflictos se resuelven con discusiones bastante confrontativas.',NULL),
	(308,12,47,'He llegado a tener dificultades con las personas que están a mi alrededor por mi carácter explosivo.',NULL),
	(309,12,48,'Me gusta y disfruto controlar a las demás personas.',NULL),
	(310,12,49,'Disfruto mucho de los deportes de contacto físico. (P.ej. Fútbol americano, boxeo, etc.).',NULL),
	(311,12,50,'Las demás personas me temen por mi carácter violento.',NULL),
	(312,12,51,'Mis amigos y familiares me consideran que soy el alma de las fiestas.',NULL),
	(313,12,52,'Me considero una persona que muestra sus sentimientos.',NULL),
	(314,12,53,'Soy una persona activa e impulsiva. Disfruto del momento y puedo sacarle provecho a la situación.',NULL),
	(315,12,54,'Me molesto y me desagrada cuando paso desapercibido ante los demás.',NULL),
	(316,12,55,'Me considero cariñoso y romántico en mis relaciones de pareja.',NULL),
	(317,12,56,'Disfruto mucho de los elogios y aplausos de las demás personas.',NULL),
	(318,12,57,'Me gusta mucho cuidar mi apariencia.',NULL),
	(319,12,58,'Me considero una persona simpática, seductora y éncantadora.',NULL),
	(320,12,59,'Me desagrada la soledad y el aislamiento.',NULL),
	(321,12,60,'Dedico tiempo importante de mi día al cuidado de mi apariencia.',NULL),
	(322,12,61,'Disfruto mucho de los placeres que me da mi familia.',NULL),
	(323,12,62,'El valor de la amistad y la familia son muy importantes para mi.',NULL),
	(324,12,63,'Me preocupa enormemente lo que los demás piensen de mi.',NULL),
	(325,12,64,'Trato de estar preparado para cualquier situación que se presente. (P.ej. Salen con los paraguas cuando hay posibilidades de que llueva; Cuando salgo de viaje, llevo todo lo que podría necesitar).',NULL),
	(326,12,65,'Me provoca mucha tensión enfrentarme a situaciones que desconozco o que son nuevas en mi ambiente.',NULL),
	(327,12,66,'Evito los lugares donde se encuentran muchas personas, especialemente personas que no conozco.',NULL),
	(328,12,67,'Los demás me consideran una persona tímida y reservada.',NULL),
	(329,12,68,'Normalmente me relaciono con unos pocos amigos.',NULL),
	(330,12,69,'Me siento inseguro conmigo mismo.',NULL),
	(331,12,70,'Muchas veces mis sentimientos de inseguridad han hecho que pierda momentos agradables o buenas oportunidades para mi vida.',NULL),
	(332,12,71,'Espero que los demás me traten siempre bien.',NULL),
	(333,12,72,'Cuando tengo alguna diferencia con alguien, me preocupo mucho por tratar de resolverlo.',NULL),
	(334,12,73,'Me considero una persona segura de mi mismo.',NULL),
	(335,12,74,'Reconozco con mucha facilidad cuales son mis cualidades y mis debilidades.',NULL),
	(336,12,75,'Considero que reconozco con mucha facilidad mis propias metas y propósitos de mi vida.',NULL),
	(337,12,76,'Puedo decir con mucha seguridad mis sentimientos a las demás personas.',NULL),
	(338,12,77,'Soy capaz de manejar las criticas de las demás personas de forma favorable.',NULL),
	(339,12,78,'Me agrada ser admirado por otras personas.',NULL),
	(340,12,79,'Me considero una persona carismática y con carácter.',NULL),
	(341,12,80,'Soy una persona bastante sociable. No se me dificulta desenvolverme con otras personas.',NULL),
	(342,12,81,'Me preocupo por los problemas de los demás.',NULL),
	(343,12,82,'Considero que soy una persona desprendida.',NULL),
	(344,12,83,'Considero que la Generosidad es uno de mis puntos fuertes de mi personalidad.',NULL),
	(345,12,84,'Lo más importante en mi vida es ayudar a los demás',NULL),
	(346,12,85,'Me incomoda ser el centro de atención.',NULL),
	(347,12,86,'Los demás consideran que soy una persona servicial y bondadosa.',NULL),
	(348,12,87,'Me considero una persona bastante paciente y tolerante.',NULL),
	(349,12,88,'Soy una persona bastante confiada en las demás personas.',NULL),
	(350,12,89,'Muchas personas me critican por ser demasiado ingenuo y buena persona.',NULL),
	(351,12,90,'Me siento incomodo cuando las personas se preocupan por mi.',NULL),
	(352,12,91,'Me considero una persona mística, soñadora y reservada.',NULL),
	(353,12,92,'Me considero una persona de mente abierta.',NULL),
	(354,12,93,'Me interesan mucho los temas misteriosos, sobrenaturales y ocultos.',NULL),
	(355,12,94,'He tenido ciertas dificultades con otras personas por mi forma de pensar y mis puntos de vista filosóficos.',NULL),
	(356,12,95,'Creo que poseo ciertos dones espirituales especiales y los demás no creen en ello.',NULL),
	(357,12,96,'Creo que el éxito y la felicidad solo se pueden alcanzar mediante el espiritu y no mediante el dinero y los bienes materiales.',NULL),
	(358,12,97,'Me considero una persona emocionalmente intensa.',NULL),
	(359,12,98,'Disfruto mucho las actividades de meditación y reflexión individual.',NULL),
	(360,12,99,'Disfruto mucho de la lectura, arte, música, entre otros.',NULL),
	(361,12,100,'Se me dificultan mis relaciones de pareja por mi forma peculiar de pensar y de disfrutar la vida.',NULL),
	(362,12,101,'Me considero una persona apasionada en mis relaciones.',NULL),
	(363,12,102,'Me considero una persona animosa, creativa y cautivadora.',NULL),
	(364,12,103,'Las demás personas me consideran una persona aventurera, imaginativa y curiosa.',NULL),
	(365,12,104,'Soy una persona dispuesta y lista para afrontar el cambio.',NULL),
	(366,12,105,'Suelo ser impulsivo y exagerado en ciertas situaciones.',NULL),
	(367,12,106,'Se me dificulta la soledad y el aislamiento.',NULL),
	(368,12,107,'se me dificulta planificar y ahorrar dinero.',NULL),
	(369,12,108,'Mi estado de animo es impredecible y reacciona a los cambios inevitables del ambiente.',NULL),
	(370,12,109,'En muchas ocasiones me dejo llevar más por mis sentimientos que por mis pensamientos.',NULL),
	(371,12,110,'Me considero una persona desinhibida, natural y no me asusta el peligro.',NULL),
	(372,12,111,'No se me dificulta tomar decisiones.',NULL),
	(373,12,112,'Considero que no necesito los consejos ni la aprobación de los demás.',NULL),
	(374,12,113,'Me considero una persona cautelosa y  reservada.',NULL),
	(375,12,114,'Muchas veces advierto lo que los demás piensan y sienten respecto a mi persona.',NULL),
	(376,12,115,'Las personas me dicen que me predispongo mucho ante las situaciones.',NULL),
	(377,12,116,'Me angustia mucho el futuro y lo desconocido.',NULL),
	(378,12,117,'Cuando no controlo las situaciones me angustio con facilidad.',NULL),
	(379,12,118,'Se me dificulta tomar riesgos.',NULL),
	(380,12,119,'Me considero una persona precavida.',NULL),
	(381,12,120,'Me desagradan las sorpresas.',NULL),
	(382,12,121,'Disfruto mucho cuando estoy solo.',NULL),
	(383,12,122,'Me consideran una persona rígida y sin emociones.',NULL),
	(384,12,123,'Se me dificulta expresar lo que siento.',NULL),
	(385,12,124,'Se me dificulta el trabajo en equipo.',NULL),
	(386,12,125,'Me molesta que las personas traten de entrometerse en mi vida.',NULL),
	(387,12,126,'Se me dificulta el entablar conversación.',NULL),
	(388,12,127,'Evito muchas veces reuniones y compromisos sociales.',NULL),
	(389,12,128,'Me considero una persona independiente.',NULL),
	(390,12,129,'Muy raras veces me aburro.',NULL),
	(391,12,130,'Las personas me consideran que soy una persona cerrada, reservada y callada.',NULL);

/*!40000 ALTER TABLE `tests_questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table therapist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `therapist`;

CREATE TABLE `therapist` (
  `therapistID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`therapistID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table therapist_patience
# ------------------------------------------------------------

DROP TABLE IF EXISTS `therapist_patience`;

CREATE TABLE `therapist_patience` (
  `therapatID` int(11) NOT NULL,
  `therapistID` int(11) DEFAULT NULL,
  `patienceID` int(11) DEFAULT NULL,
  PRIMARY KEY (`therapatID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table user_answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_answers`;

CREATE TABLE `user_answers` (
  `responseID` int(11) NOT NULL AUTO_INCREMENT,
  `testID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `test_index` int(11) NOT NULL,
  `response` varchar(30) CHARACTER SET utf8 NOT NULL,
  `session_id` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`responseID`),
  UNIQUE KEY `responseid` (`responseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;

INSERT INTO `user_answers` (`responseID`, `testID`, `userID`, `test_index`, `response`, `session_id`)
VALUES
	(614,1,1,1,'si','220g1hi2i4lnigl6flgf56cg06'),
	(615,1,1,2,'no','220g1hi2i4lnigl6flgf56cg06'),
	(616,1,1,3,'si','220g1hi2i4lnigl6flgf56cg06'),
	(617,1,1,4,'si','220g1hi2i4lnigl6flgf56cg06'),
	(618,1,1,5,'si','220g1hi2i4lnigl6flgf56cg06'),
	(619,1,1,6,'no','220g1hi2i4lnigl6flgf56cg06'),
	(620,1,1,7,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(621,1,1,8,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(622,1,1,9,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(623,1,1,10,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(624,1,1,11,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(625,1,1,12,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(626,1,1,13,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(627,1,1,14,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(628,1,1,15,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(629,1,1,16,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(630,1,1,17,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(631,1,1,18,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(632,1,1,19,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(633,1,1,20,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(634,1,1,21,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(635,1,1,22,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(636,1,1,23,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(637,1,1,24,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(638,1,1,25,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(639,1,1,26,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(640,1,1,27,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(641,1,1,28,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(642,1,1,29,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(643,1,1,30,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(645,2,1,1,'si','220g1hi2i4lnigl6flgf56cg06'),
	(646,2,1,2,'no','220g1hi2i4lnigl6flgf56cg06'),
	(647,1,1,31,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(648,1,1,32,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(649,1,1,33,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(650,1,1,34,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(651,1,1,35,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(652,1,1,36,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(653,1,1,37,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(654,1,1,38,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(655,1,1,39,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(656,1,1,40,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(657,1,1,41,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(658,1,1,42,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(659,1,1,43,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(660,1,1,44,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(661,1,1,45,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(662,1,1,46,'si','lvrm2fiq1nal7dtb80bqhe05l4'),
	(663,1,1,47,'no','lvrm2fiq1nal7dtb80bqhe05l4'),
	(664,4,1,1,'si','5bffs651h2jgt2a6ksrp3jtu87'),
	(665,4,1,2,'si','5bffs651h2jgt2a6ksrp3jtu87'),
	(666,4,1,3,'no','5bffs651h2jgt2a6ksrp3jtu87'),
	(667,6,1,1,'d','220g1hi2i4lnigl6flgf56cg06'),
	(668,6,1,2,'d','220g1hi2i4lnigl6flgf56cg06'),
	(669,6,1,3,'c','220g1hi2i4lnigl6flgf56cg06'),
	(670,6,1,4,'b','220g1hi2i4lnigl6flgf56cg06'),
	(671,6,1,5,'a','220g1hi2i4lnigl6flgf56cg06'),
	(672,6,1,6,'c','220g1hi2i4lnigl6flgf56cg06'),
	(673,6,1,7,'d','220g1hi2i4lnigl6flgf56cg06'),
	(674,2,1,3,'b','220g1hi2i4lnigl6flgf56cg06'),
	(675,2,1,4,'d','220g1hi2i4lnigl6flgf56cg06'),
	(676,2,1,5,'c','220g1hi2i4lnigl6flgf56cg06');

/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
