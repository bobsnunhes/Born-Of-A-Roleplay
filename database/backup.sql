-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.38-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para esx
CREATE DATABASE IF NOT EXISTS `esx` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `esx`;

-- Copiando estrutura para tabela esx.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.addon_account: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'Cuidado', 0),
	('property_black_money', 'Corretor Imobiliário', 0),
	('society_ambulance', 'Hospital', 1),
	('society_cardealer', 'Vendedor de Carros', 1),
	('society_mechanic', 'Mecânico', 1),
	('society_police', 'Polícia', 1),
	('society_taxi', 'Taxi', 1),
	('society_thelostmc', 'Hell Angel´s Motoclube', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.addon_account_data: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'society_ambulance', 0, NULL),
	(2, 'society_cardealer', 0, NULL),
	(3, 'society_mechanic', 0, NULL),
	(4, 'society_police', 12250, NULL),
	(5, 'caution', 0, 'steam:1100001001920e7'),
	(6, 'property_black_money', 12823, 'steam:1100001001920e7'),
	(7, 'society_taxi', 0, NULL),
	(8, 'property_black_money', 0, 'steam:1100001192311d5'),
	(9, 'caution', 0, 'steam:1100001192311d5'),
	(10, 'caution', 0, 'steam:1100001345e10be'),
	(11, 'property_black_money', 0, 'steam:1100001345e10be'),
	(12, 'caution', 0, 'steam:11000010e63ff4e'),
	(13, 'property_black_money', 0, 'steam:11000010e63ff4e'),
	(14, 'caution', 0, 'steam:110000111b10f75'),
	(15, 'property_black_money', 0, 'steam:110000111b10f75'),
	(16, 'caution', 0, 'steam:11000011b37eb98'),
	(17, 'property_black_money', 0, 'steam:11000011b37eb98'),
	(18, 'property_black_money', 0, 'steam:1100001149efc7d'),
	(19, 'caution', 0, 'steam:1100001149efc7d'),
	(20, 'property_black_money', 0, 'steam:1100001066e49c0'),
	(21, 'caution', 0, 'steam:1100001066e49c0'),
	(22, 'society_thelostmc', 0, NULL),
	(23, 'caution', 0, 'steam:110000134207034'),
	(24, 'property_black_money', 0, 'steam:110000134207034');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.addon_inventory: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Propriedade', 0),
	('society_ambulance', 'Hospital', 1),
	('society_cardealer', 'Vendedor de Carros', 1),
	('society_mechanic', 'Mecânico', 1),
	('society_police', 'Polícia', 1),
	('society_taxi', 'Taxi', 1),
	('society_thelostmc', 'Hell Angel´s Motoclube', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.addon_inventory_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(1, 'society_police', 'radio', 1, NULL);
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.billing: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.cardealer_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.characters: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
	(1, 'steam:1100001001920e7', 'Bob', 'Nunhes', '16161985', 'M', '11'),
	(2, 'steam:1100001192311d5', 'Erick ', 'Vieira', '17031997', 'M', '17'),
	(3, 'steam:110000111b10f75', 'D', 'K3', '1990', 'M', '18'),
	(4, 'steam:11000011b37eb98', 'Roberto', 'Robert', '2/8/1960', 'M', '185'),
	(5, 'steam:1100001149efc7d', 'Henrique', 'Fortunato', '16/05/2000', 'M', '182'),
	(6, 'steam:1100001066e49c0', 'Sdsda', 'Ddad', 'Dasds', 'M', '150'),
	(7, 'steam:110000134207034', 'Victor', 'Rodrigues', '06/10/1995', 'M', '180');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.datastore: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Propriedade', 0),
	('society_ambulance', 'Hospital', 1),
	('society_police', 'Polícia', 1),
	('society_taxi', 'Taxi', 1),
	('society_thelostmc', 'Hell Angel´s Motoclube', 1),
	('user_ears', 'Brincos', 0),
	('user_glasses', 'Óculos', 0),
	('user_helmet', 'Capacete', 0),
	('user_mask', 'Máscara', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  KEY `index_datastore_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.datastore_data: ~49 rows (aproximadamente)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'society_ambulance', NULL, '{}'),
	(2, 'society_police', NULL, '{"weapons":[{"name":"WEAPON_ASSAULTRIFLE","count":6},{"name":"WEAPON_NIGHTSTICK","count":0},{"name":"WEAPON_COMBATPISTOL","count":7},{"name":"WEAPON_ASSAULTSMG","count":1},{"name":"WEAPON_PUMPSHOTGUN","count":0},{"name":"WEAPON_STUNGUN","count":0},{"name":"WEAPON_PISTOL","count":2}]}'),
	(3, 'user_glasses', 'steam:1100001001920e7', '{}'),
	(4, 'user_helmet', 'steam:1100001001920e7', '{}'),
	(5, 'user_mask', 'steam:1100001001920e7', '{}'),
	(6, 'user_ears', 'steam:1100001001920e7', '{}'),
	(7, 'property', 'steam:1100001001920e7', '{}'),
	(8, 'society_taxi', NULL, '{}'),
	(9, 'user_helmet', 'steam:1100001192311d5', '{}'),
	(10, 'user_glasses', 'steam:1100001192311d5', '{}'),
	(11, 'user_mask', 'steam:1100001192311d5', '{}'),
	(12, 'user_ears', 'steam:1100001192311d5', '{}'),
	(13, 'property', 'steam:1100001192311d5', '{"dressing":[{"skin":{"eyebrows_3":6,"makeup_1":4,"lipstick_2":2,"hair_1":55,"glasses_1":5,"pants_2":0,"beard_2":10,"tshirt_2":0,"blush_3":0,"torso_2":2,"beard_4":8,"age_1":0,"sex":0,"decals_2":0,"age_2":0,"lipstick_3":8,"ears_2":9,"makeup_4":0,"bracelets_1":-1,"arms":0,"sun_1":0,"bodyb_2":0,"blemishes_2":0,"moles_1":0,"bracelets_2":0,"bags_2":0,"watches_2":0,"hair_color_2":6,"helmet_2":0,"decals_1":0,"complexion_2":0,"makeup_3":0,"mask_1":0,"ears_1":5,"tshirt_1":28,"eyebrows_2":10,"face":0,"glasses_2":5,"chest_1":0,"eye_color":0,"blush_1":0,"beard_3":3,"chain_2":2,"lipstick_4":7,"bags_1":0,"mask_2":0,"arms_2":0,"shoes_1":1,"makeup_2":3,"chain_1":17,"helmet_1":-1,"hair_2":0,"beard_1":0,"lipstick_1":4,"watches_1":-1,"blush_2":0,"hair_color_1":7,"complexion_1":0,"blemishes_1":0,"shoes_2":2,"eyebrows_1":12,"torso_1":72,"sun_2":0,"chest_2":0,"eyebrows_4":0,"bproof_2":0,"bproof_1":0,"pants_1":24,"chest_3":0,"skin":0,"bodyb_1":0,"moles_2":0},"label":"estiloso"},{"skin":{"eyebrows_3":6,"makeup_1":4,"lipstick_1":4,"hair_1":55,"glasses_1":5,"pants_2":0,"beard_2":10,"tshirt_2":0,"blush_3":0,"torso_2":2,"beard_4":8,"age_1":0,"sex":0,"decals_2":0,"age_2":0,"lipstick_3":8,"ears_2":9,"makeup_4":0,"bracelets_1":-1,"arms":0,"sun_1":0,"bodyb_2":0,"blemishes_2":0,"moles_1":0,"bracelets_2":0,"bags_2":0,"watches_2":0,"hair_color_2":6,"helmet_2":0,"decals_1":0,"complexion_2":0,"moles_2":0,"mask_1":0,"ears_1":5,"watches_1":-1,"eyebrows_2":10,"face":0,"glasses_2":5,"chest_1":0,"eye_color":0,"blush_1":0,"beard_3":3,"chain_2":2,"lipstick_4":7,"bags_1":0,"mask_2":0,"arms_2":0,"shoes_1":1,"makeup_2":3,"tshirt_1":27,"chain_1":17,"pants_1":24,"beard_1":0,"bodyb_1":0,"helmet_1":-1,"hair_2":0,"lipstick_2":2,"complexion_1":0,"blush_2":0,"hair_color_1":7,"blemishes_1":0,"torso_1":72,"sun_2":0,"skin":0,"eyebrows_4":0,"chest_2":0,"eyebrows_1":12,"shoes_2":2,"chest_3":0,"bproof_2":0,"bproof_1":0,"makeup_3":0},"label":"asdaw"}]}'),
	(14, 'user_mask', 'steam:1100001345e10be', '{}'),
	(15, 'user_helmet', 'steam:1100001345e10be', '{}'),
	(16, 'user_glasses', 'steam:1100001345e10be', '{}'),
	(17, 'user_ears', 'steam:1100001345e10be', '{}'),
	(18, 'property', 'steam:1100001345e10be', '{}'),
	(19, 'user_mask', 'steam:11000010e63ff4e', '{}'),
	(20, 'user_helmet', 'steam:11000010e63ff4e', '{}'),
	(21, 'user_glasses', 'steam:11000010e63ff4e', '{}'),
	(22, 'user_ears', 'steam:11000010e63ff4e', '{}'),
	(23, 'property', 'steam:11000010e63ff4e', '{}'),
	(24, 'user_mask', 'steam:110000111b10f75', '{}'),
	(25, 'user_helmet', 'steam:110000111b10f75', '{}'),
	(26, 'user_glasses', 'steam:110000111b10f75', '{}'),
	(27, 'user_ears', 'steam:110000111b10f75', '{}'),
	(28, 'property', 'steam:110000111b10f75', '{}'),
	(29, 'property', 'steam:11000011b37eb98', '{}'),
	(30, 'user_glasses', 'steam:11000011b37eb98', '{}'),
	(31, 'user_mask', 'steam:11000011b37eb98', '{}'),
	(32, 'user_helmet', 'steam:11000011b37eb98', '{}'),
	(33, 'user_ears', 'steam:11000011b37eb98', '{}'),
	(34, 'user_mask', 'steam:1100001149efc7d', '{}'),
	(35, 'user_helmet', 'steam:1100001149efc7d', '{}'),
	(36, 'user_glasses', 'steam:1100001149efc7d', '{}'),
	(37, 'user_ears', 'steam:1100001149efc7d', '{}'),
	(38, 'property', 'steam:1100001149efc7d', '{"weapons":[]}'),
	(39, 'user_mask', 'steam:1100001066e49c0', '{}'),
	(40, 'user_helmet', 'steam:1100001066e49c0', '{}'),
	(41, 'property', 'steam:1100001066e49c0', '{}'),
	(42, 'user_glasses', 'steam:1100001066e49c0', '{"skin":{"glasses_2":3,"glasses_1":5},"hasGlasses":true}'),
	(43, 'user_ears', 'steam:1100001066e49c0', '{"hasEars":true,"skin":{"ears_1":-1,"ears_2":0}}'),
	(44, 'society_thelostmc', NULL, '{"garage":[{"modOrnaments":-1,"modDashboard":-1,"modArchCover":-1,"modStruts":-1,"neonEnabled":[false,false,false,false],"modTurbo":1,"plateIndex":3,"modFender":-1,"modEngineBlock":-1,"modSpoilers":-1,"dirtLevel":3.2002687454224,"model":301427732,"modFrontWheels":-1,"plate":"05QIR042","modEngine":2,"pearlescentColor":11,"modDial":-1,"modVanityPlate":-1,"modHydrolic":-1,"neonColor":[255,0,255],"modPlateHolder":-1,"modRearBumper":-1,"modAerials":-1,"modSuspension":-1,"modTank":-1,"modTrimA":-1,"modXenon":false,"modBrakes":2,"modShifterLeavers":-1,"modAPlate":-1,"modArmor":-1,"modRoof":-1,"modFrame":-1,"modSteeringWheel":-1,"modRightFender":-1,"modSideSkirt":-1,"modFrontBumper":-1,"color1":61,"modTrunk":-1,"windowTint":-1,"modAirFilter":-1,"tyreSmokeColor":[255,255,255],"modSmokeEnabled":false,"wheels":6,"modSeats":-1,"modLivery":-1,"modWindows":-1,"modHood":-1,"modGrille":-1,"modHorns":-1,"wheelColor":156,"modSpeakers":-1,"modTransmission":2,"modTrimB":-1,"modBackWheels":-1,"health":1000,"modDoorSpeaker":-1,"modExhaust":-1,"color2":111}]}'),
	(45, 'property', 'steam:110000134207034', '{"dressing":[{"label":"LSPD","skin":{"arms_2":0,"eyebrows_1":0,"beard_1":0,"moles_2":0,"ears_1":2,"shoes_2":0,"watches_1":-1,"helmet_1":106,"tshirt_2":0,"chest_1":0,"blush_2":0,"sun_1":0,"torso_1":55,"lipstick_1":0,"chain_1":58,"bodyb_2":0,"makeup_1":0,"chain_2":0,"torso_2":0,"pants_2":0,"eyebrows_4":0,"bodyb_1":0,"age_1":0,"decals_2":0,"moles_1":0,"glasses_2":0,"complexion_1":0,"blemishes_1":0,"blush_1":0,"mask_2":0,"decals_1":0,"age_2":0,"bracelets_1":-1,"skin":0,"eyebrows_3":0,"lipstick_3":0,"sun_2":0,"glasses_1":5,"lipstick_2":0,"bproof_2":1,"tshirt_1":58,"makeup_3":0,"shoes_1":25,"eyebrows_2":0,"bracelets_2":0,"face":37,"hair_1":0,"hair_color_1":0,"ears_2":0,"sex":0,"watches_2":0,"helmet_2":20,"arms":41,"beard_2":0,"bproof_1":11,"makeup_4":0,"chest_3":0,"mask_1":0,"chest_2":0,"beard_4":0,"blemishes_2":0,"pants_1":25,"eye_color":0,"hair_color_2":0,"lipstick_4":0,"hair_2":0,"bags_2":0,"bags_1":0,"complexion_2":0,"makeup_2":0,"blush_3":0,"beard_3":0}},{"label":"LSDP","skin":{"arms_2":0,"eyebrows_1":0,"beard_1":18,"moles_2":0,"ears_1":2,"shoes_2":0,"watches_1":-1,"helmet_1":106,"tshirt_2":0,"bproof_2":1,"blush_2":0,"sun_1":0,"torso_1":55,"sex":0,"chain_1":0,"bodyb_2":0,"makeup_1":0,"chain_2":0,"torso_2":0,"pants_2":0,"eyebrows_4":0,"bodyb_1":0,"age_1":0,"decals_2":0,"moles_1":0,"glasses_2":0,"complexion_1":0,"beard_4":0,"blush_1":0,"mask_2":0,"decals_1":0,"age_2":0,"beard_2":10,"skin":0,"eyebrows_3":0,"lipstick_3":0,"sun_2":0,"glasses_1":5,"lipstick_2":0,"eyebrows_2":0,"tshirt_1":58,"makeup_3":0,"shoes_1":25,"bracelets_1":-1,"lipstick_1":0,"face":37,"helmet_2":20,"hair_color_1":0,"bracelets_2":0,"bags_1":0,"watches_2":0,"arms":41,"ears_2":0,"blemishes_1":0,"bproof_1":11,"chest_1":0,"chest_3":0,"mask_1":0,"chest_2":0,"hair_color_2":0,"blemishes_2":0,"pants_1":25,"complexion_2":0,"eye_color":0,"lipstick_4":0,"hair_2":0,"bags_2":0,"hair_1":0,"makeup_4":0,"makeup_2":0,"blush_3":0,"beard_3":0}}]}'),
	(46, 'user_mask', 'steam:110000134207034', '{}'),
	(47, 'user_helmet', 'steam:110000134207034', '{}'),
	(48, 'user_glasses', 'steam:110000134207034', '{}'),
	(49, 'user_ears', 'steam:110000134207034', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.fine_types: ~46 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Abuso de poder', 30, 0),
	(2, 'Cruzar uma linha continua', 40, 0),
	(3, 'Circular em local proibido / direção oposta', 250, 0),
	(4, 'Retorno não autorizado', 250, 0),
	(5, 'Tráfegar fora da rua', 170, 0),
	(6, 'Desrespeitar distâncias não seguras', 30, 0),
	(7, 'Perigoso / Proibido PARE', 150, 0),
	(8, 'Estacionou incorreto /  Local proibido', 70, 0),
	(9, 'Falha ao respeitar prioridade a direita', 70, 0),
	(10, 'Não conformidade com o veículo prioritário', 90, 0),
	(11, 'Desrespeitar PARE', 105, 0),
	(12, 'Desrespeitar sinal vermelho', 130, 0),
	(13, 'Correndo perigosamente', 100, 0),
	(14, 'Veículo em péssimo estado', 100, 0),
	(15, 'Dirigir sem licensa', 1500, 0),
	(16, 'Bater o carro e se evadir do local', 800, 0),
	(17, 'Velocidade < 5 km / h', 90, 0),
	(18, 'Velocidade 5-15 km / h', 120, 0),
	(19, 'Velocidade 15-30 km / h', 180, 0),
	(20, 'Velocidade > 50 km / h', 300, 0),
	(21, 'Engarrafamento', 110, 1),
	(22, 'Degradação de estrada pública', 90, 1),
	(23, 'Problema a ordem pública', 90, 1),
	(24, 'Interferir em ação policial', 130, 1),
	(25, 'Insulta contra / entre civis', 75, 1),
	(26, 'Desacato à autoridade', 110, 1),
	(27, 'Ameaça verbal ou intimidação a um civil', 90, 1),
	(28, 'Ameaça verbal ou intimidação a um policial', 150, 1),
	(29, 'Protesto Ilegal', 250, 1),
	(30, 'Corrupção Ativa', 1500, 1),
	(31, 'Arma branca', 120, 2),
	(32, 'Soltar arma na cidade', 300, 2),
	(33, 'Porte de armas não permitido (Deferir licença)', 600, 2),
	(34, 'Porte de arma ilegal', 700, 2),
	(35, 'Roubo de carros', 1800, 2),
	(36, 'Venda de drogas', 1500, 2),
	(37, 'Fabricação de drogas', 1500, 2),
	(38, 'Posse de drogas', 650, 2),
	(39, 'Se passar por agente do estado', 2000, 2),
	(40, 'Atirar em um agente do estado', 2500, 3),
	(41, 'Tentativa de homicídio a um civil', 3000, 3),
	(42, 'Tentativa de homicídio a um agente do estado', 5000, 3),
	(43, 'Assassinar um civil', 10000, 3),
	(44, 'Assassinar um agente do estado', 30000, 3),
	(45, 'Homicídio Culposo (Sem intenção)', 1800, 3),
	(46, 'Fraude Empresarial', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.fine_types_thelostmc
CREATE TABLE IF NOT EXISTS `fine_types_thelostmc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.fine_types_thelostmc: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_thelostmc` DISABLE KEYS */;
INSERT INTO `fine_types_thelostmc` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_thelostmc` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela esx.items: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	(1, 'alive_chicken', 'Galinha Viva', 20, 0, 1),
	(2, 'bandage', 'Bandagem', 20, 0, 1),
	(3, 'blowpipe', 'Escapamento', 10, 0, 1),
	(4, 'bread', 'Pão', -1, 0, 1),
	(5, 'cannabis', 'Planta de Maconha', 40, 0, 1),
	(6, 'carokit', 'Kit de Reparos', 3, 0, 1),
	(7, 'carotool', 'Ferramentas de Reparo', 4, 0, 1),
	(8, 'clothe', 'Vestimenta', 40, 0, 1),
	(9, 'copper', 'Cobre', 56, 0, 1),
	(10, 'cutted_wood', 'Madeira Cortada', 20, 0, 1),
	(11, 'diamond', 'Diamante', 50, 0, 1),
	(12, 'essence', 'Essencia', 24, 0, 1),
	(13, 'fabric', 'Tecido', 80, 0, 1),
	(14, 'fish', 'Peixe', 100, 0, 1),
	(15, 'fixkit', 'Kit de Reparo', 5, 0, 1),
	(16, 'fixtool', 'Ferramenta de Reparo', 6, 0, 1),
	(17, 'gazbottle', 'Galão de Gasolina', 11, 0, 1),
	(18, 'gold', 'Ouro', 21, 0, 1),
	(19, 'iron', 'Ferro', 42, 0, 1),
	(20, 'jewels', 'Jóias', 400, 0, 1),
	(21, 'marijuana', 'Maconha', 14, 0, 1),
	(22, 'medikit', 'Kit Médico', 5, 0, 1),
	(23, 'packaged_chicken', 'Galinha Embalada', 100, 0, 1),
	(24, 'packaged_plank', 'Madeira Armazenada', 100, 0, 1),
	(25, 'petrol', 'Petróleo', 24, 0, 1),
	(26, 'petrol_raffin', 'Rafina de Petróleo', 24, 0, 1),
	(27, 'radio', 'Rádio Comunicador', 1, 0, 1),
	(28, 'slaughtered_chicken', 'Galinha Morta', 20, 0, 1),
	(29, 'stone', 'Pedra', 7, 0, 1),
	(30, 'washed_stone', 'Pedra Lavada', 7, 0, 1),
	(31, 'water', 'Água', -1, 0, 1),
	(32, 'wood', 'Madeira', 20, 0, 1),
	(33, 'wool', 'Lã', 40, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela esx.jobs: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'Socorrista - SAMU', 0),
	('banksecurity', 'Transporte de Valores', 0),
	('cardealer', 'Vendedor de Carros', 0),
	('fisherman', 'Pescador', 0),
	('fueler', 'Transportador de Combustível', 1),
	('garbage', 'Coleta de Lixo', 0),
	('lumberjack', 'Lenhador', 0),
	('mechanic', 'Mecânico', 0),
	('miner', 'Mineirador', 0),
	('pizza', 'Entregador de Pizza', 0),
	('police', 'PMSC', 1),
	('reporter', 'Josnalista', 0),
	('slaughterer', 'Açougueiro', 0),
	('tailor', 'Costureiro', 0),
	('taxi', 'Taxista', 0),
	('thelostmc', 'Hell Angel´s Motoclube', 1),
	('traffic', 'Agente de Trânsito', 0),
	('trucker', 'Caminhoneiro', 0),
	('unemployed', 'Desempregado', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8_bin NOT NULL,
  `skin_female` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela esx.job_grades: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Desempregado', 0, '{}', '{}'),
	(2, 'police', 0, 'recruit', 'Recruta', 20, '{}', '{}'),
	(3, 'police', 1, 'officer', 'Oficial', 40, '{}', '{}'),
	(4, 'police', 2, 'sergeant', 'Sargento', 60, '{}', '{}'),
	(5, 'police', 3, 'lieutenant', 'Tenente', 85, '{}', '{}'),
	(6, 'police', 4, 'boss', 'Comandante', 100, '{}', '{}'),
	(7, 'cardealer', 0, 'recruit', 'Estagiário', 10, '{}', '{}'),
	(8, 'cardealer', 1, 'novice', 'Novato', 25, '{}', '{}'),
	(9, 'cardealer', 2, 'experienced', 'Experiente', 40, '{}', '{}'),
	(10, 'cardealer', 3, 'boss', 'Chefe', 0, '{}', '{}'),
	(11, 'lumberjack', 0, 'employee', 'Autônomo', 0, '{}', '{}'),
	(12, 'fisherman', 0, 'employee', 'Autônomo', 0, '{}', '{}'),
	(13, 'fueler', 0, 'employee', 'Autônomo', 0, '{}', '{}'),
	(14, 'reporter', 0, 'employee', 'Autônomo', 0, '{}', '{}'),
	(15, 'tailor', 0, 'employee', 'Autônomo', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(16, 'miner', 0, 'employee', 'Autônomo', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(17, 'slaughterer', 0, 'employee', 'Autônomo', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(18, 'pizza', 0, 'employee', 'Entregador', 200, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":5}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":19}'),
	(19, 'garbage', 0, 'employee', 'Motorista', 750, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":5}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":19}'),
	(20, 'banksecurity', 0, 'employee', 'Motorista', 200, '{"tshirt_1":60,"torso_1":130,"arms":31,"pants_1":25,"glasses_1":0,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":0,"shoes":63,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":65}', '{"tshirt_1":60,"torso_1":0,"arms":68,"pants_1":25,"glasses_1":0,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":0,"shoes":63,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":65}'),
	(26, 'traffic', 0, 'employee', 'Valores', 200, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":5}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":19}'),
	(27, 'trucker', 0, 'employee', 'Motorista', 200, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":5}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":19}'),
	(32, 'mechanic', 0, 'recrue', 'Estagiário', 12, '{}', '{}'),
	(33, 'mechanic', 1, 'novice', 'Novato', 24, '{}', '{}'),
	(34, 'mechanic', 2, 'experimente', 'Experiente', 36, '{}', '{}'),
	(35, 'mechanic', 3, 'chief', 'Chefe de Equipe', 48, '{}', '{}'),
	(36, 'mechanic', 4, 'boss', 'Chefe', 0, '{}', '{}'),
	(37, 'taxi', 0, 'recrue', 'Estagiario', 12, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(38, 'taxi', 1, 'novice', 'Novato', 24, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(39, 'taxi', 2, 'experimente', 'Experiente', 36, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(40, 'taxi', 3, 'uber', 'Uber', 48, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(41, 'taxi', 4, 'boss', 'Chefe', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(42, 'ambulance', 0, 'ambulance', 'Enfermeiro', 20, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(43, 'ambulance', 1, 'doctor', 'Médico', 40, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(44, 'ambulance', 2, 'chief_doctor', 'Médico-Chefe', 60, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(45, 'ambulance', 3, 'boss', 'Cirurgião', 80, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(46, 'thelostmc', 0, 'Rookie', 'Novato', 1500, '{}', '{}'),
	(47, 'thelostmc', 1, 'Trooper', 'Membro', 1800, '{}', '{}'),
	(48, 'thelostmc', 2, 'Vize-Boss', 'Vice Presidente', 2400, '{}', '{}'),
	(49, 'thelostmc', 3, 'Boss', 'Presidente', 2700, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.licenses: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('boat', 'Licensa Marítima'),
	('dmv', 'Permissão para Dirigir'),
	('drive', 'Carteira de Motorista - Carro'),
	('drive_bike', 'Carteira de Motorista - Moto'),
	('drive_truck', 'Carteira de Motorista - Caminhão'),
	('weapon', 'Porte de Armas'),
	('weed_processing', 'Licensa para processar Maconha');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.owned_properties: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1, 'NorthConkerAvenue2044', 1500000, 0, 'steam:1100001345e10be'),
	(2, 'LowEndApartment', 562500, 0, 'steam:1100001149efc7d'),
	(3, 'LowEndApartment', 562500, 0, 'steam:1100001001920e7'),
	(4, 'NorthConkerAvenue2044', 1500000, 0, 'steam:1100001149efc7d'),
	(6, 'NorthConkerAvenue2045', 7500, 1, 'steam:1100001149efc7d'),
	(8, 'NorthConkerAvenue2044', 1500000, 0, 'steam:1100001066e49c0');
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.owned_vehicles: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
	('steam:1100001001920e7', 'BAH 490', '{"health":1000,"model":1171614426,"pearlescentColor":112,"modTrimB":-1,"modTransmission":-1,"neonEnabled":[false,false,false,false],"modSeats":-1,"modGrille":-1,"dirtLevel":4.0,"modShifterLeavers":-1,"modDashboard":-1,"wheelColor":156,"modFrontWheels":-1,"modPlateHolder":-1,"modSpeakers":-1,"modRearBumper":-1,"modSuspension":-1,"modExhaust":-1,"color1":112,"modOrnaments":-1,"modEngine":-1,"modTurbo":false,"modWindows":-1,"plateIndex":4,"modRoof":-1,"windowTint":-1,"modAirFilter":-1,"modHydrolic":-1,"modLivery":-1,"modTank":-1,"modTrunk":-1,"neonColor":[255,0,255],"modEngineBlock":-1,"modSmokeEnabled":false,"modSpoilers":-1,"modDial":-1,"modHorns":-1,"modRightFender":-1,"modFrontBumper":-1,"modBrakes":-1,"modDoorSpeaker":-1,"color2":28,"modArmor":-1,"tyreSmokeColor":[255,255,255],"modXenon":false,"modBackWheels":-1,"modHood":-1,"plate":"BAH 490","modSideSkirt":-1,"modFrame":-1,"modTrimA":-1,"modSteeringWheel":-1,"modAerials":-1,"modArchCover":-1,"modVanityPlate":-1,"modStruts":-1,"modFender":-1,"modAPlate":-1,"wheels":0}', 'car', 'ambulance', 0),
	('steam:1100001149efc7d', 'BDI 958', '{"modTurbo":false,"modAirFilter":-1,"modFrontBumper":-1,"modDial":-1,"modSeats":-1,"modFrontWheels":-1,"modFender":-1,"modHood":-1,"modPlateHolder":-1,"modOrnaments":-1,"modBrakes":-1,"modFrame":-1,"modTrunk":-1,"modSmokeEnabled":false,"plateIndex":0,"modHydrolic":-1,"modArchCover":-1,"modRearBumper":-1,"modWindows":-1,"modSteeringWheel":-1,"modVanityPlate":-1,"modSpeakers":-1,"plate":"BDI 958","modTrimA":-1,"modArmor":-1,"neonEnabled":[false,false,false,false],"color2":14,"modEngine":-1,"modSideSkirt":-1,"modTrimB":-1,"modShifterLeavers":-1,"color1":141,"modAerials":-1,"modHorns":-1,"tyreSmokeColor":[255,255,255],"modGrille":-1,"wheelColor":73,"modXenon":false,"model":1491277511,"modTransmission":-1,"dirtLevel":11.000057220459,"modExhaust":-1,"modRightFender":-1,"modDashboard":-1,"wheels":6,"health":1000,"pearlescentColor":73,"modLivery":-1,"neonColor":[255,0,255],"modSuspension":-1,"modStruts":-1,"modSpoilers":-1,"modAPlate":-1,"modEngineBlock":-1,"modRoof":-1,"modBackWheels":-1,"modTank":-1,"modDoorSpeaker":-1,"windowTint":-1}', 'car', NULL, 0),
	('steam:1100001066e49c0', 'FHT 134', '{"modLivery":-1,"modFrontWheels":-1,"modArmor":-1,"modHydrolic":-1,"modTank":-1,"color1":0,"modSeats":-1,"modFrontBumper":-1,"wheels":0,"modAPlate":-1,"modDial":-1,"modWindows":-1,"modStruts":-1,"neonEnabled":[false,false,false,false],"modDashboard":-1,"dirtLevel":8.0,"modEngine":-1,"modTrimB":-1,"modFender":-1,"wheelColor":156,"modHorns":-1,"model":989294410,"pearlescentColor":18,"modSmokeEnabled":false,"modSpoilers":-1,"modOrnaments":-1,"modXenon":false,"modSpeakers":-1,"modArchCover":-1,"modSideSkirt":-1,"modRoof":-1,"modGrille":-1,"modAirFilter":-1,"neonColor":[255,0,255],"modFrame":-1,"plateIndex":0,"modBackWheels":-1,"modHood":-1,"tyreSmokeColor":[255,255,255],"modTrunk":-1,"modBrakes":-1,"modRightFender":-1,"modDoorSpeaker":-1,"modRearBumper":-1,"modTrimA":-1,"modPlateHolder":-1,"windowTint":-1,"modSuspension":-1,"modSteeringWheel":-1,"plate":"FHT 134","health":1000,"color2":6,"modAerials":-1,"modTurbo":false,"modTransmission":-1,"modShifterLeavers":-1,"modExhaust":-1,"modEngineBlock":-1,"modVanityPlate":-1}', 'car', NULL, 0),
	('steam:1100001001920e7', 'GHB 983', '{"modSuspension":-1,"modBrakes":-1,"modXenon":false,"plateIndex":4,"modTrimB":-1,"modDoorSpeaker":-1,"modPlateHolder":-1,"modWindows":-1,"modBackWheels":-1,"windowTint":-1,"modEngine":-1,"modTurbo":false,"dirtLevel":5.0,"modGrille":-1,"color1":0,"modTrunk":-1,"modDashboard":-1,"modFrontWheels":-1,"modShifterLeavers":-1,"modHood":-1,"tyreSmokeColor":[255,255,255],"modOrnaments":-1,"modHorns":-1,"modTrimA":-1,"health":1000,"modExhaust":-1,"modAerials":-1,"modSeats":-1,"color2":112,"wheelColor":156,"modDial":-1,"modFender":-1,"modTank":-1,"pearlescentColor":0,"modFrame":-1,"modStruts":-1,"modEngineBlock":-1,"modSmokeEnabled":false,"model":745926877,"plate":"GHB 983","modSideSkirt":-1,"wheels":0,"modArchCover":-1,"modHydrolic":-1,"modSteeringWheel":-1,"modVanityPlate":-1,"modRoof":-1,"modFrontBumper":-1,"modArmor":-1,"modRearBumper":-1,"modSpeakers":-1,"neonEnabled":[false,false,false,false],"modAirFilter":-1,"modSpoilers":-1,"modLivery":-1,"modRightFender":-1,"modAPlate":-1,"modTransmission":-1,"neonColor":[255,0,255]}', 'helicopter', 'ambulance', 0),
	('steam:110000134207034', 'GSA 223', '{"modTrimA":-1,"modSpeakers":-1,"modEngine":-1,"model":2123327359,"modRearBumper":-1,"modFender":-1,"pearlescentColor":5,"dirtLevel":7.0000052452087,"modSideSkirt":-1,"plateIndex":0,"modStruts":-1,"modSeats":-1,"modBackWheels":-1,"modTrimB":-1,"color2":27,"modXenon":false,"modLivery":-1,"modDoorSpeaker":-1,"modAirFilter":-1,"modOrnaments":-1,"modAPlate":-1,"modVanityPlate":-1,"modGrille":-1,"modTrunk":-1,"modTurbo":false,"health":1000,"modSteeringWheel":-1,"modPlateHolder":-1,"modHydrolic":-1,"modArchCover":-1,"modSpoilers":-1,"modEngineBlock":-1,"neonEnabled":[false,false,false,false],"modSmokeEnabled":false,"modWindows":-1,"modShifterLeavers":-1,"modRoof":-1,"tyreSmokeColor":[255,255,255],"modFrame":-1,"modHood":-1,"modDashboard":-1,"color1":6,"modTransmission":-1,"wheels":7,"modFrontWheels":-1,"plate":"GSA 223","modSuspension":-1,"neonColor":[255,0,255],"modTank":-1,"windowTint":-1,"wheelColor":0,"modExhaust":-1,"modArmor":-1,"modFrontBumper":-1,"modRightFender":-1,"modDial":-1,"modBrakes":-1,"modAerials":-1,"modHorns":-1}', 'car', NULL, 0),
	('steam:1100001001920e7', 'GVJ 840', '{"modFrame":-1,"modPlateHolder":-1,"dirtLevel":9.0000009536743,"modSmokeEnabled":false,"model":15219735,"modArmor":-1,"modSideSkirt":-1,"modTank":-1,"modSteeringWheel":-1,"modBrakes":-1,"color1":107,"modSpoilers":-1,"modFrontBumper":-1,"modAerials":-1,"modShifterLeavers":-1,"modDashboard":-1,"modTurbo":false,"modAPlate":-1,"tyreSmokeColor":[255,255,255],"modOrnaments":-1,"modExhaust":-1,"modFender":-1,"health":1000,"neonEnabled":[false,false,false,false],"color2":120,"modSuspension":-1,"plateIndex":0,"neonColor":[255,0,255],"modSpeakers":-1,"modXenon":false,"modEngineBlock":-1,"wheelColor":0,"modLivery":-1,"modTransmission":-1,"modHood":-1,"modStruts":-1,"modRoof":-1,"modDial":-1,"modRightFender":-1,"modHorns":-1,"modBackWheels":-1,"modDoorSpeaker":-1,"modTrimA":-1,"plate":"GVJ 840","modAirFilter":-1,"modWindows":-1,"modGrille":-1,"modTrunk":-1,"modSeats":-1,"modArchCover":-1,"pearlescentColor":129,"wheels":1,"windowTint":-1,"modFrontWheels":-1,"modTrimB":-1,"modEngine":-1,"modHydrolic":-1,"modVanityPlate":-1,"modRearBumper":-1}', 'car', NULL, 0),
	('steam:1100001192311d5', 'JIP 314', '{"modBackWheels":-1,"modArmor":-1,"plateIndex":0,"modRearBumper":-1,"modAPlate":-1,"neonEnabled":[false,false,false,false],"color2":30,"wheelColor":156,"plate":"JIP 314","health":1000,"modHydrolic":-1,"tyreSmokeColor":[255,255,255],"wheels":7,"dirtLevel":3.0000092983246,"modHorns":-1,"modVanityPlate":-1,"modDial":-1,"modFrame":-1,"modGrille":-1,"modRightFender":-1,"modShifterLeavers":-1,"modFender":-1,"modDashboard":-1,"modStruts":-1,"modExhaust":-1,"color1":5,"modLivery":-1,"pearlescentColor":111,"modSpoilers":-1,"modTrimB":-1,"modFrontBumper":-1,"modDoorSpeaker":-1,"modPlateHolder":-1,"modXenon":false,"modSideSkirt":-1,"modBrakes":-1,"modTrunk":-1,"modFrontWheels":-1,"modSteeringWheel":-1,"windowTint":-1,"modAirFilter":-1,"modEngineBlock":-1,"modSeats":-1,"modAerials":-1,"modSmokeEnabled":false,"modTurbo":false,"modHood":-1,"modTank":-1,"model":-1216765807,"neonColor":[255,0,255],"modSpeakers":-1,"modTrimA":-1,"modOrnaments":-1,"modWindows":-1,"modSuspension":-1,"modTransmission":-1,"modRoof":-1,"modEngine":-1,"modArchCover":-1}', 'car', NULL, 0),
	('steam:1100001149efc7d', 'KFV 799', '{"modTransmission":2,"modDoorSpeaker":-1,"neonColor":[255,0,255],"modSeats":-1,"modRearBumper":-1,"modSmokeEnabled":1,"modSpeakers":-1,"windowTint":-1,"modFrontWheels":-1,"modHydrolic":-1,"dirtLevel":14.273642539978,"modWindows":-1,"modSteeringWheel":-1,"modAPlate":-1,"wheels":6,"modBrakes":2,"modExhaust":-1,"modShifterLeavers":-1,"modStruts":-1,"modHorns":0,"modPlateHolder":-1,"modRightFender":-1,"modRoof":-1,"modFrontBumper":-1,"modTrimA":-1,"modTank":-1,"modSuspension":-1,"modXenon":false,"modDial":-1,"modTrunk":-1,"modAirFilter":-1,"modSpoilers":-1,"modEngine":3,"wheelColor":156,"pearlescentColor":5,"modOrnaments":-1,"modBackWheels":-1,"modFender":-1,"modSideSkirt":-1,"modArmor":-1,"modTurbo":1,"modArchCover":-1,"plateIndex":0,"modAerials":-1,"modTrimB":-1,"modHood":-1,"modEngineBlock":-1,"model":86520421,"tyreSmokeColor":[255,255,255],"modFrame":-1,"modVanityPlate":-1,"health":1000,"modGrille":-1,"color2":12,"modDashboard":-1,"plate":"KFV 799","color1":12,"modLivery":0,"neonEnabled":[false,false,false,false]}', 'car', NULL, 0),
	('steam:1100001066e49c0', 'KGZ 292', '{"modRoof":-1,"modDoorSpeaker":2,"neonColor":[0,255,0],"modSteeringWheel":2,"modRearBumper":5,"modSmokeEnabled":1,"modTurbo":1,"plate":"KGZ 292","modAirFilter":6,"modTrunk":-1,"dirtLevel":8.2935266494751,"tyreSmokeColor":[0,255,0],"pearlescentColor":70,"modHydrolic":-1,"wheels":0,"modBrakes":2,"modWindows":2,"modShifterLeavers":-1,"modStruts":8,"modXenon":1,"modSpoilers":11,"modPlateHolder":-1,"modVanityPlate":-1,"modFrontBumper":7,"modSeats":13,"modTank":-1,"modSuspension":3,"modAPlate":-1,"modDial":4,"modSideSkirt":-1,"model":-295689028,"modRightFender":-1,"modEngine":-1,"modTrimB":-1,"modOrnaments":1,"modTrimA":0,"modBackWheels":-1,"modFender":5,"neonEnabled":[1,1,1,1],"plateIndex":0,"modArmor":-1,"modArchCover":0,"modSpeakers":-1,"modAerials":1,"wheelColor":132,"modHood":5,"modEngineBlock":2,"modFrontWheels":12,"modHorns":-1,"modFrame":4,"modTransmission":-1,"health":1000,"modGrille":0,"modExhaust":3,"modDashboard":4,"color2":111,"color1":92,"modLivery":1,"windowTint":1}', 'car', NULL, 0),
	('steam:1100001001920e7', 'OYS 536', '{"color2":28,"plateIndex":4,"modWindows":-1,"plate":"OYS 536","modVanityPlate":-1,"wheels":0,"modArmor":-1,"pearlescentColor":112,"modStruts":-1,"modFrontBumper":-1,"modGrille":-1,"modArchCover":-1,"windowTint":-1,"modTransmission":-1,"neonEnabled":[false,false,false,false],"modLivery":-1,"modDial":-1,"wheelColor":156,"modExhaust":-1,"modShifterLeavers":-1,"modDashboard":-1,"modFrame":-1,"modBrakes":-1,"modFrontWheels":-1,"modTrimA":-1,"modTrimB":-1,"modRearBumper":-1,"modXenon":false,"model":1171614426,"modEngineBlock":-1,"modAirFilter":-1,"modSmokeEnabled":false,"health":1000,"modHydrolic":-1,"modSpoilers":-1,"color1":112,"modSeats":-1,"modRoof":-1,"modSuspension":-1,"modHood":-1,"neonColor":[255,0,255],"modAPlate":-1,"modTank":-1,"modBackWheels":-1,"modSteeringWheel":-1,"modSideSkirt":-1,"dirtLevel":8.0,"modSpeakers":-1,"tyreSmokeColor":[255,255,255],"modDoorSpeaker":-1,"modHorns":-1,"modRightFender":-1,"modTurbo":false,"modFender":-1,"modAerials":-1,"modTrunk":-1,"modOrnaments":-1,"modPlateHolder":-1,"modEngine":-1}', 'car', 'ambulance', 0),
	('steam:1100001066e49c0', 'QGM 533', '{"modTurbo":false,"modAirFilter":-1,"modVanityPlate":-1,"modDial":-1,"modSeats":-1,"modFender":-1,"modTransmission":-1,"modHood":-1,"neonColor":[255,0,255],"modFrontWheels":-1,"modSpeakers":-1,"modFrame":-1,"modTrunk":-1,"modAPlate":-1,"plateIndex":0,"modHydrolic":-1,"modArchCover":-1,"modAerials":-1,"modWindows":-1,"model":819197656,"modEngine":-1,"wheelColor":111,"plate":"QGM 533","modArmor":-1,"modSideSkirt":-1,"modPlateHolder":-1,"color2":5,"modHorns":-1,"modRightFender":-1,"modTrimB":-1,"modOrnaments":-1,"color1":27,"health":1000,"modRearBumper":-1,"modRoof":-1,"modGrille":-1,"modBrakes":-1,"modXenon":false,"dirtLevel":3.0000050067902,"modFrontBumper":-1,"modEngineBlock":-1,"modExhaust":-1,"tyreSmokeColor":[255,255,255],"modShifterLeavers":-1,"wheels":7,"modSteeringWheel":-1,"pearlescentColor":38,"modLivery":-1,"modSmokeEnabled":false,"modSuspension":-1,"modStruts":-1,"modSpoilers":-1,"neonEnabled":[false,false,false,false],"modTrimA":-1,"modDashboard":-1,"modBackWheels":-1,"modTank":-1,"modDoorSpeaker":-1,"windowTint":-1}', 'car', NULL, 0),
	('steam:1100001149efc7d', 'SCP 452', '{"neonColor":[255,0,255],"modHydrolic":-1,"modEngine":3,"modTransmission":2,"pearlescentColor":12,"modArmor":-1,"modFrame":-1,"modSuspension":-1,"wheels":6,"modArchCover":-1,"modLivery":-1,"modSmokeEnabled":1,"modHood":-1,"modShifterLeavers":-1,"plateIndex":0,"modDoorSpeaker":-1,"modGrille":-1,"neonEnabled":[false,false,false,false],"modAerials":-1,"modTrimA":-1,"plate":"SCP 452","modSideSkirt":-1,"modTrunk":-1,"modTurbo":1,"modAPlate":-1,"modRoof":-1,"modSteeringWheel":-1,"modEngineBlock":-1,"model":390201602,"modSpoilers":-1,"modWindows":-1,"modTrimB":-1,"modFender":-1,"modVanityPlate":-1,"modSeats":-1,"modStruts":-1,"modExhaust":-1,"modFrontWheels":-1,"modDial":-1,"modRearBumper":-1,"modSpeakers":-1,"windowTint":-1,"color2":3,"modPlateHolder":-1,"modRightFender":-1,"modDashboard":-1,"modBackWheels":-1,"wheelColor":156,"modFrontBumper":-1,"modAirFilter":-1,"tyreSmokeColor":[255,255,255],"modOrnaments":-1,"modXenon":false,"dirtLevel":10.662532806396,"health":1000,"modBrakes":2,"modTank":-1,"color1":12,"modHorns":-1}', 'car', NULL, 0),
	('steam:1100001192311d5', 'SSK 768', '{"modBackWheels":-1,"modArmor":-1,"plateIndex":0,"modRearBumper":-1,"modAPlate":-1,"neonEnabled":[false,false,false,false],"color2":41,"wheelColor":156,"plate":"SSK 768","health":1000,"modHydrolic":-1,"tyreSmokeColor":[255,255,255],"wheels":7,"dirtLevel":8.0000085830688,"modHorns":-1,"modVanityPlate":-1,"modDial":-1,"modFrame":-1,"modGrille":-1,"modRightFender":-1,"modShifterLeavers":-1,"modFender":-1,"modDashboard":-1,"modStruts":-1,"modExhaust":-1,"color1":0,"modLivery":-1,"pearlescentColor":3,"modSpoilers":-1,"modTrimB":-1,"modFrontBumper":-1,"modDoorSpeaker":-1,"modPlateHolder":-1,"modXenon":false,"modSideSkirt":-1,"modBrakes":-1,"modTrunk":-1,"modFrontWheels":-1,"modSteeringWheel":-1,"windowTint":-1,"modAirFilter":-1,"modEngineBlock":-1,"modSeats":-1,"modAerials":-1,"modSmokeEnabled":false,"modTurbo":false,"modHood":-1,"modTank":-1,"model":-1216765807,"neonColor":[255,0,255],"modSpeakers":-1,"modTrimA":-1,"modOrnaments":-1,"modWindows":-1,"modSuspension":-1,"modTransmission":-1,"modRoof":-1,"modEngine":-1,"modArchCover":-1}', 'car', NULL, 0),
	('steam:1100001149efc7d', 'TBK 859', '{"plateIndex":3,"modFrontWheels":-1,"modSuspension":-1,"modHydrolic":-1,"modTank":-1,"color1":12,"modSeats":-1,"modFrontBumper":-1,"wheels":1,"modAPlate":-1,"modSpoilers":-1,"modAerials":-1,"modStruts":-1,"modXenon":false,"modDashboard":-1,"dirtLevel":14.000001907349,"modEngine":-1,"modArmor":-1,"modFender":-1,"wheelColor":156,"modTrunk":-1,"pearlescentColor":20,"modVanityPlate":-1,"modSmokeEnabled":false,"modFrame":-1,"modOrnaments":-1,"plate":"TBK 859","modExhaust":-1,"modArchCover":-1,"modBrakes":-1,"modSteeringWheel":-1,"modGrille":-1,"modDial":-1,"neonColor":[255,0,255],"modHorns":-1,"modAirFilter":-1,"modBackWheels":3,"modHood":-1,"tyreSmokeColor":[255,255,255],"modWindows":-1,"modSideSkirt":-1,"modRightFender":-1,"modTransmission":-1,"modRearBumper":-1,"modLivery":-1,"modPlateHolder":-1,"windowTint":-1,"neonEnabled":[false,false,false,false],"modDoorSpeaker":-1,"model":1119641113,"health":1000,"color2":13,"modTrimB":-1,"modTurbo":false,"modSpeakers":-1,"modShifterLeavers":-1,"modRoof":-1,"modEngineBlock":-1,"modTrimA":-1}', 'car', NULL, 0),
	('steam:1100001001920e7', 'TMN 812', '{"health":1000,"model":1171614426,"pearlescentColor":112,"modTrimB":-1,"modTransmission":-1,"neonEnabled":[false,false,false,false],"modSeats":-1,"modGrille":-1,"dirtLevel":4.0,"modShifterLeavers":-1,"modDashboard":-1,"wheelColor":156,"modFrontWheels":-1,"modPlateHolder":-1,"modSpeakers":-1,"modRearBumper":-1,"modSuspension":-1,"modExhaust":-1,"color1":112,"modOrnaments":-1,"modEngine":-1,"modTurbo":false,"modWindows":-1,"plateIndex":4,"modRoof":-1,"windowTint":-1,"modAirFilter":-1,"modHydrolic":-1,"modLivery":-1,"modTank":-1,"modTrunk":-1,"neonColor":[255,0,255],"modEngineBlock":-1,"modSmokeEnabled":false,"modSpoilers":-1,"modDial":-1,"modHorns":-1,"modRightFender":-1,"modFrontBumper":-1,"modBrakes":-1,"modDoorSpeaker":-1,"color2":28,"modArmor":-1,"tyreSmokeColor":[255,255,255],"modXenon":false,"modBackWheels":-1,"modHood":-1,"plate":"TMN 812","modSideSkirt":-1,"modFrame":-1,"modTrimA":-1,"modSteeringWheel":-1,"modAerials":-1,"modArchCover":-1,"modVanityPlate":-1,"modStruts":-1,"modFender":-1,"modAPlate":-1,"wheels":0}', 'car', 'ambulance', 0),
	('steam:1100001001920e7', 'UDU 772', '{"modSuspension":-1,"modBrakes":-1,"modXenon":false,"plateIndex":4,"modTrimB":-1,"modDoorSpeaker":-1,"modPlateHolder":-1,"modWindows":-1,"modBackWheels":-1,"windowTint":-1,"modEngine":-1,"modTurbo":false,"dirtLevel":3.0,"modGrille":-1,"color1":112,"modTrunk":-1,"modDashboard":-1,"modFrontWheels":-1,"modShifterLeavers":-1,"modHood":-1,"tyreSmokeColor":[255,255,255],"modOrnaments":-1,"modHorns":-1,"modTrimA":-1,"health":1000,"modExhaust":-1,"modAerials":-1,"modSeats":-1,"color2":28,"wheelColor":156,"modDial":-1,"modFender":-1,"modTank":-1,"pearlescentColor":112,"modFrame":-1,"modStruts":-1,"modEngineBlock":-1,"modSmokeEnabled":false,"model":1171614426,"plate":"UDU 772","modSideSkirt":-1,"wheels":0,"modArchCover":-1,"modHydrolic":-1,"modSteeringWheel":-1,"modVanityPlate":-1,"modRoof":-1,"modFrontBumper":-1,"modArmor":-1,"modRearBumper":-1,"modSpeakers":-1,"neonEnabled":[false,false,false,false],"modAirFilter":-1,"modSpoilers":-1,"modLivery":-1,"modRightFender":-1,"modAPlate":-1,"modTransmission":-1,"neonColor":[255,0,255]}', 'car', 'ambulance', 0),
	('steam:1100001345e10be', 'UQJ 904', '{"modSuspension":2,"modEngine":3,"plate":"UQJ 904","modXenon":1,"modFender":-1,"modRearBumper":-1,"neonEnabled":[false,false,false,false],"modGrille":-1,"modTransmission":-1,"modBrakes":2,"health":152,"modTrimA":-1,"modSpoilers":-1,"modFrontBumper":-1,"modSteeringWheel":-1,"modTurbo":1,"modBackWheels":-1,"plateIndex":0,"modAerials":-1,"modPlateHolder":-1,"modExhaust":-1,"modVanityPlate":-1,"modArchCover":-1,"modAirFilter":-1,"wheels":1,"windowTint":-1,"modArmor":4,"modStruts":-1,"modSeats":-1,"neonColor":[255,0,255],"modDashboard":-1,"modRoof":3,"modDoorSpeaker":-1,"modFrame":-1,"modHorns":49,"modTank":-1,"modRightFender":-1,"modSpeakers":-1,"pearlescentColor":87,"modTrunk":-1,"modSideSkirt":-1,"dirtLevel":9.3995656967163,"modFrontWheels":-1,"color2":0,"modShifterLeavers":-1,"modDial":-1,"modTrimB":-1,"model":159274291,"modEngineBlock":-1,"tyreSmokeColor":[255,255,255],"modSmokeEnabled":1,"wheelColor":112,"modHydrolic":-1,"modOrnaments":-1,"modHood":-1,"modAPlate":-1,"color1":49,"modWindows":-1,"modLivery":39}', 'car', NULL, 0),
	('steam:1100001066e49c0', 'UVN 260', '{"modLivery":-1,"modFrontWheels":-1,"modArmor":-1,"modHydrolic":-1,"modTank":-1,"color1":0,"modSeats":-1,"modFrontBumper":-1,"wheels":0,"modAPlate":-1,"modDial":-1,"modWindows":-1,"modStruts":-1,"neonEnabled":[false,false,false,false],"modDashboard":-1,"dirtLevel":4.0000071525574,"modEngine":-1,"modTrimB":-1,"modFender":-1,"wheelColor":156,"modHorns":-1,"model":989294410,"pearlescentColor":18,"modSmokeEnabled":false,"modSpoilers":-1,"modOrnaments":-1,"modXenon":false,"modSpeakers":-1,"modArchCover":-1,"modSideSkirt":-1,"modRoof":-1,"modGrille":-1,"modAirFilter":-1,"neonColor":[255,0,255],"modFrame":-1,"plateIndex":0,"modBackWheels":-1,"modHood":-1,"tyreSmokeColor":[255,255,255],"modTrunk":-1,"modBrakes":-1,"modRightFender":-1,"modDoorSpeaker":-1,"modRearBumper":-1,"modTrimA":-1,"modPlateHolder":-1,"windowTint":-1,"modSuspension":-1,"modSteeringWheel":-1,"plate":"UVN 260","health":1000,"color2":6,"modAerials":-1,"modTurbo":false,"modTransmission":-1,"modShifterLeavers":-1,"modExhaust":-1,"modEngineBlock":-1,"modVanityPlate":-1}', 'car', NULL, 0),
	('steam:1100001066e49c0', 'VLH 966', '{"modRearBumper":-1,"modArmor":-1,"modSteeringWheel":-1,"modTurbo":false,"modExhaust":-1,"plate":"VLH 966","modSpoilers":-1,"health":1000,"modAPlate":-1,"plateIndex":4,"modTrimB":-1,"modBackWheels":-1,"modRightFender":-1,"modBrakes":-1,"tyreSmokeColor":[255,255,255],"wheelColor":156,"modSideSkirt":-1,"modAerials":-1,"modWindows":-1,"modXenon":false,"modHydrolic":-1,"modTrunk":-1,"modFrontBumper":-1,"modStruts":-1,"color1":112,"wheels":0,"modSpeakers":-1,"modOrnaments":-1,"modSuspension":-1,"neonColor":[255,0,255],"modEngineBlock":-1,"modVanityPlate":-1,"modFrontWheels":-1,"modAirFilter":-1,"modEngine":-1,"modGrille":-1,"modDial":-1,"windowTint":-1,"modShifterLeavers":-1,"model":1171614426,"modRoof":-1,"dirtLevel":4.0,"modHood":-1,"modLivery":-1,"neonEnabled":[false,false,false,false],"modTank":-1,"pearlescentColor":112,"modTransmission":-1,"modFrame":-1,"modDoorSpeaker":-1,"color2":28,"modHorns":-1,"modSeats":-1,"modTrimA":-1,"modPlateHolder":-1,"modFender":-1,"modSmokeEnabled":false,"modDashboard":-1,"modArchCover":-1}', 'car', 'ambulance', 0),
	('steam:1100001192311d5', 'WWH 395', '{"pearlescentColor":5,"modTrimA":-1,"modBrakes":-1,"modHorns":-1,"modExhaust":-1,"modFrame":-1,"modHydrolic":-1,"modRoof":-1,"modGrille":-1,"modTurbo":false,"modTank":-1,"modVanityPlate":-1,"modRightFender":-1,"modRearBumper":-1,"modEngineBlock":-1,"modSuspension":-1,"health":1000,"modDoorSpeaker":-1,"modFrontBumper":-1,"modEngine":-1,"wheelColor":156,"plateIndex":0,"neonColor":[255,0,255],"modAerials":-1,"modTrunk":-1,"modPlateHolder":-1,"modXenon":false,"modHood":-1,"wheels":7,"modSideSkirt":-1,"modTransmission":-1,"modSteeringWheel":-1,"modShifterLeavers":-1,"modDial":-1,"modDashboard":-1,"modBackWheels":-1,"modSpoilers":-1,"modAPlate":-1,"modOrnaments":-1,"windowTint":-1,"modArmor":-1,"modSpeakers":-1,"modArchCover":-1,"dirtLevel":3.0000019073486,"color2":3,"tyreSmokeColor":[255,255,255],"modWindows":-1,"modAirFilter":-1,"color1":3,"modFender":-1,"modLivery":-1,"modFrontWheels":-1,"neonEnabled":[false,false,false,false],"modTrimB":-1,"modStruts":-1,"model":234062309,"plate":"WWH 395","modSeats":-1,"modSmokeEnabled":false}', 'car', NULL, 0);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela esx.phone_app_chat: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
INSERT INTO `phone_app_chat` (`id`, `channel`, `message`, `time`) VALUES
	(28, 's', 'asdasd', '2019-04-21 02:06:41'),
	(29, 's', 'ssss', '2019-04-21 02:06:45');
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela esx.phone_calls: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(125, '531-3502', '827-5849', 0, '2019-04-21 13:17:09', 1),
	(126, '531-3502', '827-5849', 1, '2019-04-21 13:19:37', 1),
	(130, '531-3502', '827-5849', 0, '2019-04-22 02:52:00', 0),
	(132, '531-3502', '827-5849', 0, '2019-04-22 02:52:09', 1),
	(133, '531-3502', '827-5849', 1, '2019-04-22 02:54:08', 1),
	(135, '531-3502', '827-5849', 1, '2019-04-23 15:21:19', 1),
	(138, '249-9884', '8275849', 1, '2019-04-23 22:07:21', 0),
	(141, '249-9884', '827-5849', 0, '2019-04-23 22:13:00', 1),
	(147, '440-5316', '104', 1, '2019-04-25 00:50:05', 0),
	(148, '440-5316', '104 0089', 1, '2019-04-25 00:52:48', 0),
	(150, '104-0089', '827-5849', 0, '2019-04-25 00:53:10', 1),
	(151, '440-5316', '104 0089', 1, '2019-04-25 00:53:16', 0),
	(152, '440-5316', '104-0089', 1, '2019-04-25 00:54:39', 1),
	(153, '104-0089', '440-5316', 0, '2019-04-25 00:54:39', 1),
	(154, '440-5316', 'teste', 1, '2019-04-25 01:47:33', 0),
	(155, '440-5316', '827-5849', 0, '2019-04-25 03:25:38', 0),
	(158, '104-0089', '827-5849', 0, '2019-04-25 17:04:25', 0),
	(161, '8275849', '104-0089', 1, '2019-04-25 17:37:21', 0),
	(162, '8275849', '104-0089', 1, '2019-04-25 17:39:32', 0),
	(163, '8275849', '104-0089', 1, '2019-04-25 17:40:31', 0),
	(164, '440-5316', '827-5849', 1, '2019-04-25 17:45:42', 0),
	(167, '873-7104', '827-5849', 0, '2019-04-25 21:45:06', 1),
	(171, '440-5316', '827-5849', 0, '2019-04-25 21:53:16', 1),
	(175, '873-7104', '827-5849', 1, '2019-04-25 22:29:04', 0),
	(177, '440-5316', '827-5849', 1, '2019-04-26 18:26:18', 0),
	(184, '827-5849', 'adasdadas', 1, '2019-04-27 13:51:17', 0),
	(185, '827-5849', '911', 1, '2019-04-27 19:33:03', 0),
	(186, '827-5849', '911', 1, '2019-04-27 20:34:55', 0);
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela esx.phone_messages: ~53 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
	(112, 'police', '249-9884', 'De #827-5849 : alooo', '2019-04-23 22:05:04', 1, 0),
	(114, 'police', '249-9884', 'De #249-9884 : Fala comigo ?', '2019-04-23 22:05:51', 1, 0),
	(115, 'police', '249-9884', 'Fala comigo ?', '2019-04-23 22:05:51', 1, 1),
	(116, 'police', '249-9884', 'De #249-9884 : Aqui é o Comando da policia, posso ajudar ?', '2019-04-23 22:06:08', 1, 0),
	(117, 'police', '249-9884', 'Aqui é o Comando da policia, posso ajudar ?', '2019-04-23 22:06:08', 1, 1),
	(121, '827-5849', '104-0089', 'ALOOO', '2019-04-25 00:52:47', 1, 0),
	(123, '440-5316', '104-0089', 'viado demais', '2019-04-25 00:54:14', 1, 0),
	(134, '827-5849', '104-0089', 'alooooo testando', '2019-04-25 15:16:46', 1, 0),
	(136, 'police', '104-0089', 'De #827-5849 : testeeeee', '2019-04-25 15:16:59', 1, 0),
	(141, '827-5849', '104-0089', 'opa', '2019-04-25 15:17:01', 1, 1),
	(145, 'police', '104-0089', 'De #827-5849 : teste', '2019-04-25 15:31:31', 1, 0),
	(150, 'police', '104-0089', 'De #827-5849 : asdasd', '2019-04-25 15:46:07', 1, 0),
	(155, 'police', '104-0089', 'De #827-5849 : teste', '2019-04-25 15:55:15', 1, 0),
	(157, 'police', '104-0089', 'De #827-5849 : teste', '2019-04-25 15:59:02', 1, 0),
	(163, 'police', '827-5849', 'De #827-5849 : asdasd', '2019-04-25 15:59:46', 1, 0),
	(164, 'police', '104-0089', 'De #827-5849 : asdasd', '2019-04-25 15:59:46', 1, 0),
	(165, 'police', '827-5849', 'asdasd', '2019-04-25 15:59:46', 1, 1),
	(167, 'police', '827-5849', 'De #104-0089 : SOCOROOOOOOOOOOOO', '2019-04-25 16:03:29', 1, 0),
	(168, 'police', '104-0089', 'De #104-0089 : SOCOROOOOOOOOOOOO', '2019-04-25 16:03:29', 1, 0),
	(169, 'police', '104-0089', 'SOCOROOOOOOOOOOOO', '2019-04-25 16:03:29', 1, 1),
	(171, 'police', '104-0089', 'De #827-5849 : ASDASJDOAIDJ', '2019-04-25 16:03:48', 1, 0),
	(172, 'police', '827-5849', 'De #827-5849 : ASDASJDOAIDJ', '2019-04-25 16:03:48', 1, 0),
	(173, 'police', '827-5849', 'ASDASJDOAIDJ', '2019-04-25 16:03:48', 1, 1),
	(174, 'police', '104-0089', 'De #104-0089 : chegouuuuu???', '2019-04-25 16:04:41', 1, 0),
	(175, 'police', '827-5849', 'De #104-0089 : chegouuuuu???', '2019-04-25 16:04:41', 1, 0),
	(176, 'police', '104-0089', 'chegouuuuu???', '2019-04-25 16:04:41', 1, 1),
	(177, 'police', '827-5849', 'De #827-5849 : asdasdasd', '2019-04-25 16:25:49', 1, 0),
	(178, 'police', '104-0089', 'De #827-5849 : asdasdasd', '2019-04-25 16:25:49', 1, 0),
	(179, 'police', '827-5849', 'asdasdasd', '2019-04-25 16:25:49', 1, 1),
	(180, '440-5316', '8275849', 'ALO', '2019-04-25 17:38:42', 1, 1),
	(181, '104-0089', '8275849', 'ALO', '2019-04-25 17:39:02', 1, 1),
	(182, '827-5849', '104-0089', 'ALO', '2019-04-25 17:44:38', 1, 0),
	(183, '104-0089', '827-5849', 'ALO', '2019-04-25 17:44:38', 1, 1),
	(185, '440-5316', '827-5849', 'ALO', '2019-04-25 17:44:48', 1, 1),
	(186, '827-5849', '104-0089', 'GPS: 337.63323974609, -1391.6246337891', '2019-04-25 17:47:03', 1, 0),
	(187, '104-0089', '827-5849', 'GPS: 337.63323974609, -1391.6246337891', '2019-04-25 17:47:03', 1, 1),
	(189, '440-5316', '827-5849', 'GPS: 337.63323974609, -1391.6246337891', '2019-04-25 17:47:17', 1, 1),
	(190, 'police', '104-0089', 'De #827-5849 : GPS: 337.63323974609, -1391.6246337891', '2019-04-25 17:47:32', 1, 0),
	(192, 'police', '827-5849', 'De #827-5849 : GPS: 337.63323974609, -1391.6246337891', '2019-04-25 17:47:32', 1, 0),
	(193, 'police', '827-5849', 'GPS: 337.63323974609, -1391.6246337891', '2019-04-25 17:47:33', 1, 1),
	(194, '190', '827-5849', 'ADAS', '2019-04-25 17:47:51', 1, 1),
	(195, 'police', '104-0089', 'De #873-7104 : eae koroi', '2019-04-25 22:29:29', 1, 0),
	(196, 'police', '827-5849', 'De #873-7104 : eae koroi', '2019-04-25 22:29:29', 1, 0),
	(198, 'police', '873-7104', 'De #873-7104 : eae koroi', '2019-04-25 22:29:29', 1, 0),
	(199, 'police', '873-7104', 'eae koroi', '2019-04-25 22:29:29', 1, 1),
	(200, 'taxi', '827-5849', 'GPS: 255.26176452637, -379.7366027832', '2019-04-26 22:18:11', 1, 0),
	(201, 'taxi', '440-5316', 'De #827-5849 :  ', '2019-04-26 22:18:11', 1, 0),
	(202, 'taxi', '827-5849', 'De #827-5849 :  ', '2019-04-26 22:18:11', 1, 0),
	(203, 'taxi', '440-5316', 'GPS: 255.26176452637, -379.7366027832', '2019-04-26 22:18:11', 1, 0),
	(204, 'ambulance', '827-5849', 'De #827-5849 : asdasd', '2019-04-26 22:46:15', 1, 0),
	(205, 'ambulance', '827-5849', 'asdasd', '2019-04-26 22:46:15', 1, 1),
	(206, 'taxi', '104-0089', 'De #827-5849 : aaaaa', '2019-04-26 23:11:04', 1, 0),
	(207, 'taxi', '827-5849', 'aaaaa', '2019-04-26 23:11:04', 1, 1),
	(208, '190', '827-5849', 'sadasdasd', '2019-04-27 13:46:54', 1, 1),
	(209, 'police', '827-5849', 'De #827-5849 : aasasda', '2019-04-27 13:47:08', 1, 0),
	(210, 'police', '827-5849', 'aasasda', '2019-04-27 13:47:08', 1, 1),
	(211, 'police', '827-5849', 'De #827-5849 : GPS: 259.37817382813, -382.62561035156', '2019-04-27 13:47:26', 1, 0),
	(212, 'police', '827-5849', 'GPS: 259.37817382813, -382.62561035156', '2019-04-27 13:47:27', 1, 1),
	(213, 'taxi', '827-5849', 'asdasda', '2019-04-27 13:48:44', 1, 1),
	(214, '827-5849', '440-5316', '121312', '2019-04-27 18:17:29', 0, 0),
	(215, '440-5316', '827-5849', '121312', '2019-04-27 18:17:29', 1, 1),
	(216, 'police', '827-5849', 'De #827-5849 : 11111', '2019-04-27 18:17:46', 1, 0),
	(217, 'police', '827-5849', '11111', '2019-04-27 18:17:46', 1, 1),
	(218, 'taxi', '827-5849', 'aaaaaa', '2019-04-27 18:18:26', 1, 1),
	(219, 'police', '827-5849', 'De #827-5849 : asdad 822.43121337891, -1265.3806152344', '2019-04-27 18:37:11', 1, 0),
	(220, 'ambulance', '827-5849', '151651', '2019-04-27 19:32:37', 1, 1),
	(221, 'police', '827-5849', 'De #827-5849 : 15', '2019-04-27 19:32:44', 1, 0),
	(222, 'police', '827-5849', '15', '2019-04-27 19:32:45', 1, 1),
	(223, 'police', '827-5849', 'De #827-5849 : 111', '2019-04-27 20:12:32', 1, 0),
	(224, 'police', '827-5849', '111', '2019-04-27 20:12:32', 1, 1),
	(225, '827-5849', '104-0089', 'asdasd', '2019-04-27 20:19:58', 0, 0),
	(226, '104-0089', '827-5849', 'asdasd', '2019-04-27 20:19:58', 1, 1),
	(227, 'police', '827-5849', 'De #827-5849 : asdasdad', '2019-04-27 20:20:03', 1, 0),
	(228, 'police', '827-5849', 'asdasdad', '2019-04-27 20:20:03', 1, 1),
	(229, 'police', '827-5849', 'De #827-5849 : ssss', '2019-04-27 20:42:09', 1, 0),
	(230, 'police', '827-5849', 'ssss', '2019-04-27 20:42:09', 1, 1),
	(231, 'ambulance', '827-5849', 'ss', '2019-04-27 20:42:16', 1, 1);
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela esx.phone_users_contacts: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
	(7, 'steam:1100001001920e7', '531-3502', 'RCK'),
	(8, 'steam:1100001192311d5', '827-5849', 'Bob'),
	(10, 'steam:1100001001920e7', '440-5316', 'zimba'),
	(11, 'steam:1100001066e49c0', '104-0089', 'Henrique'),
	(12, 'steam:1100001001920e7', '104-0089', 'FORTUNATO');
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.properties: ~72 rows (aproximadamente)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Apartamento Moderno 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Apartamento Moderno 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Apartamento Moderno 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Apartamento Mody 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Apartamento Mody 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Apartamento Mody 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Apartamento Vibrante 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Apartamento Vibrante 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Apartamento Vibrante 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Apartamento Persa 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Apartamento Persa 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Apartamento Persa 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Apartamento Monocromárico 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Apartamento Monocromárico 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Apartamento Monocromárico 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Apartamento da Sedução 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Apartamento da Sedução 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Apartamento da Sedução 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Apartamento Regal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Apartamento Regal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Apartamento Regal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Apartamento Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Apartamento Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Apartamento Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', 'Apartamento Integrity Way 1', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', 'Apartamento Integrity Way 2', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', 'Apartamento Integrity Way 3', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Apartamento Dell Perro 1', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Apartamento Dell Perro 2', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Apartamento Dell Perro 3', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000),
	(43, 'MazeBankBuilding', 'Predio Maze Bank', '{"x":-79.18,"y":-795.92,"z":43.35}', NULL, NULL, '{"x":-72.50,"y":-786.92,"z":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
	(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(47, 'ExecutiveRich', 'Executivo Rico', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(48, 'ExecutiveCool', 'Executivo Cool', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(49, 'ExecutiveContrast', 'Executive Contraste', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(53, 'LomBank', 'Lom Bank', '{"x":-1581.36,"y":-558.23,"z":34.07}', NULL, NULL, '{"x":-1583.60,"y":-555.12,"z":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
	(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(63, 'MazeBankWest', 'Maze Bank West', '{"x":-1379.58,"y":-499.63,"z":32.22}', NULL, NULL, '{"x":-1378.95,"y":-502.82,"z":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
	(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.rented_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `store` (`store`),
  KEY `FK_ITEMS_SHOPS` (`item_id`),
  CONSTRAINT `FK_ITEMS_SHOPS` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.shops: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` (`id`, `store`, `item_id`, `item`, `price`) VALUES
	(1, 'TwentyFourSeven', 4, 'bread', 30),
	(3, 'TwentyFourSeven', 31, 'water', 15),
	(4, 'RobsLiquor', 4, 'bread', 30),
	(5, 'RobsLiquor', 31, 'water', 15),
	(7, 'LTDgasoline', 4, 'bread', 30),
	(8, 'LTDgasoline', 31, 'water', 15);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.society_moneywash: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela esx.twitter_accounts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela esx.twitter_likes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela esx.twitter_tweets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `warrant` varchar(3) COLLATE utf8mb4_bin NOT NULL DEFAULT 'No',
  `is_dead` tinyint(1) DEFAULT '0',
  `status` longtext COLLATE utf8mb4_bin,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela esx.users: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `warrant`, `is_dead`, `status`, `last_property`, `phone_number`, `jail`) VALUES
	(1, 'steam:1100001001920e7', 'license:9d83959a04c7031d97770c738d5b378e6c9e1bf1', 0, 'pV*', '{"beard_2":8,"watches_1":-1,"chain_2":0,"helmet_2":0,"blemishes_2":0,"pants_2":0,"pants_1":0,"age_1":0,"beard_1":10,"blemishes_1":0,"bracelets_1":-1,"moles_2":0,"makeup_1":0,"hair_color_1":34,"age_2":0,"watches_2":0,"lipstick_4":0,"bracelets_2":0,"moles_1":0,"makeup_2":0,"tshirt_1":0,"arms_2":0,"eye_color":0,"torso_2":0,"makeup_4":0,"blush_1":0,"hair_color_2":11,"hair_2":0,"beard_4":0,"complexion_1":0,"helmet_1":-1,"eyebrows_3":0,"sun_2":0,"eyebrows_2":9,"bags_2":0,"chest_1":0,"makeup_3":0,"bproof_2":0,"chest_2":0,"decals_2":0,"bodyb_2":0,"blush_2":0,"glasses_1":0,"eyebrows_4":0,"beard_3":0,"decals_1":0,"sun_1":0,"face":0,"sex":0,"shoes_1":0,"hair_1":5,"complexion_2":0,"tshirt_2":0,"chest_3":0,"shoes_2":0,"chain_1":0,"glasses_2":0,"bproof_1":0,"blush_3":0,"arms":0,"eyebrows_1":2,"lipstick_1":2,"bodyb_1":0,"mask_1":0,"ears_2":0,"skin":0,"torso_1":0,"lipstick_3":0,"mask_2":0,"bags_1":0,"ears_1":0,"lipstick_2":0}', 'police', 3, '[{"label":"Pistola","ammo":9869,"name":"WEAPON_PISTOL","components":["clip_default"]}]', '{"x":826.8,"y":-1260.1,"z":26.3}', 101241188, 1, 'superadmin', 'Bob', 'Nunhes', '16161985', 'M', '11', 'No', 0, '[{"val":176600,"name":"hunger","percent":17.66},{"val":95750,"name":"thirst","percent":9.575}]', NULL, '827-5849', 0),
	(2, 'steam:1100001192311d5', 'license:9b67253fdba02115b574209c9efdb9754f212b2e', 3005955, 'RCK_GOD', '{"bags_1":0,"eyebrows_3":6,"decals_2":0,"chest_3":0,"beard_1":0,"makeup_2":3,"hair_2":0,"ears_2":9,"lipstick_2":2,"hair_color_1":0,"bodyb_2":0,"watches_1":-1,"bproof_2":0,"makeup_3":0,"torso_2":2,"arms":0,"blush_1":0,"beard_2":10,"ears_1":5,"skin":0,"hair_1":55,"bracelets_1":-1,"chain_2":2,"chest_2":0,"pants_1":24,"mask_2":0,"tshirt_2":0,"tshirt_1":27,"bproof_1":0,"complexion_2":0,"pants_2":0,"age_2":0,"makeup_1":4,"blush_3":0,"blemishes_2":0,"shoes_2":2,"chest_1":0,"beard_3":0,"moles_2":0,"sex":0,"glasses_2":5,"mask_1":0,"bracelets_2":0,"torso_1":72,"lipstick_3":8,"eye_color":0,"lipstick_4":7,"watches_2":0,"decals_1":0,"helmet_2":0,"beard_4":9,"eyebrows_2":10,"helmet_1":-1,"face":0,"eyebrows_1":12,"hair_color_2":6,"sun_1":0,"lipstick_1":4,"makeup_4":0,"glasses_1":5,"blemishes_1":0,"complexion_1":0,"bodyb_1":0,"eyebrows_4":0,"sun_2":0,"arms_2":0,"chain_1":17,"moles_1":0,"blush_2":0,"shoes_1":1,"bags_2":0,"age_1":0}', 'police', 2, '[{"label":"Pistola","ammo":0,"components":["clip_default"],"name":"WEAPON_PISTOL"},{"label":"Sniper rifle","ammo":0,"components":["scope"],"name":"WEAPON_SNIPERRIFLE"}]', '{"y":-135.7,"z":39.0,"x":-338.7}', 66705420, 0, 'superadmin', 'Erick ', 'Vieira', '17031997', 'M', '17', 'No', 0, '[{"percent":47.86,"val":478600,"name":"hunger"},{"percent":47.325,"val":473250,"name":"thirst"}]', NULL, '531-3502', 0),
	(3, 'steam:1100001345e10be', 'license:567780bf5bad113776367bd6b6d3120096fc0046', 2075991207, 'BADANHAA', '{"bags_1":0,"eyebrows_3":0,"decals_2":0,"chest_3":0,"beard_1":0,"makeup_2":0,"hair_2":0,"ears_2":0,"lipstick_2":0,"hair_color_1":0,"bodyb_2":0,"watches_1":-1,"bproof_2":0,"makeup_3":0,"torso_2":2,"arms":0,"blush_1":0,"beard_2":0,"ears_1":-1,"age_2":0,"moles_2":0,"bracelets_1":-1,"chain_2":0,"chest_2":0,"lipstick_3":0,"mask_2":0,"eye_color":0,"tshirt_1":15,"pants_1":43,"complexion_2":0,"pants_2":1,"beard_4":0,"makeup_1":0,"blush_3":0,"blemishes_2":0,"helmet_1":96,"hair_1":0,"beard_3":0,"blush_2":0,"sex":0,"blemishes_1":0,"skin":0,"bracelets_2":0,"age_1":0,"shoes_1":1,"moles_1":0,"glasses_1":0,"watches_2":0,"decals_1":0,"torso_1":86,"chest_1":0,"mask_1":0,"eyebrows_1":0,"face":0,"glasses_2":0,"hair_color_2":0,"sun_1":0,"lipstick_1":0,"makeup_4":0,"tshirt_2":0,"lipstick_4":0,"complexion_1":0,"bodyb_1":0,"eyebrows_4":0,"bproof_1":0,"arms_2":0,"chain_1":0,"shoes_2":8,"bags_2":0,"eyebrows_2":0,"helmet_2":5,"sun_2":0}', 'police', 2, '[{"components":[],"label":"Cacetete","name":"WEAPON_NIGHTSTICK","ammo":0},{"components":[],"label":"Espingarda","name":"WEAPON_PUMPSHOTGUN","ammo":0},{"components":[],"label":"Laterna","name":"WEAPON_FLASHLIGHT","ammo":0}]', '{"x":-29.0,"y":-142.2,"z":57.0}', 152000780, 0, 'admin', 'Murilo', 'Badanha', '01/10/', 'M', '17', 'No', 0, '[{"name":"hunger","percent":49.84,"val":498400},{"name":"thirst","percent":49.8,"val":498000}]', NULL, '906-8228', 0),
	(4, 'steam:11000010e63ff4e', 'license:b7cac8aebb93b943f5ed221667400a6654d1515f', 0, 'GMateus', '{"beard_1":0,"eyebrows_3":0,"skin":0,"beard_3":0,"hair_1":0,"chest_2":0,"lipstick_4":0,"moles_1":0,"blemishes_1":0,"helmet_1":-1,"eyebrows_1":0,"helmet_2":0,"pants_2":0,"chest_3":0,"beard_4":0,"chain_2":0,"blemishes_2":0,"makeup_1":0,"watches_2":0,"ears_1":-1,"hair_2":0,"tshirt_2":0,"bags_1":0,"blush_3":0,"pants_1":0,"chain_1":0,"makeup_3":0,"makeup_4":0,"age_1":0,"tshirt_1":0,"hair_color_2":0,"lipstick_2":0,"glasses_2":0,"bodyb_2":0,"age_2":0,"eyebrows_2":0,"sun_2":0,"ears_2":0,"lipstick_1":0,"sun_1":0,"bproof_2":0,"complexion_2":0,"hair_color_1":0,"bracelets_1":-1,"complexion_1":0,"bags_2":0,"glasses_1":0,"bodyb_1":0,"makeup_2":0,"chest_1":0,"sex":0,"beard_2":0,"bproof_1":0,"eye_color":0,"bracelets_2":0,"arms":0,"blush_1":0,"decals_2":0,"mask_1":0,"arms_2":0,"mask_2":0,"shoes_1":0,"blush_2":0,"lipstick_3":0,"face":0,"watches_1":-1,"shoes_2":0,"torso_1":0,"decals_1":0,"torso_2":0,"moles_2":0,"eyebrows_4":0}', 'police', 3, '[{"components":[],"label":"Cacetete","ammo":0,"name":"WEAPON_NIGHTSTICK"},{"components":["clip_default"],"label":"Pistola","ammo":249,"name":"WEAPON_PISTOL"},{"components":["clip_default"],"label":"Pistola de combate","ammo":249,"name":"WEAPON_COMBATPISTOL"},{"components":["clip_default"],"label":"Assault smg","ammo":217,"name":"WEAPON_ASSAULTSMG"},{"components":[],"label":"Espingarda","ammo":250,"name":"WEAPON_PUMPSHOTGUN"},{"components":["clip_default"],"label":"Assault rifle","ammo":61,"name":"WEAPON_ASSAULTRIFLE"},{"components":["clip_default"],"label":"Carbine rifle","ammo":61,"name":"WEAPON_CARBINERIFLE"},{"components":[],"label":"Bomba pegajosa","ammo":21,"name":"WEAPON_STICKYBOMB"},{"components":[],"label":"Extintor","ammo":2000,"name":"WEAPON_FIREEXTINGUISHER"},{"components":[],"label":"Arma de choque","ammo":250,"name":"WEAPON_STUNGUN"},{"components":[],"label":"Sinalizador","ammo":20,"name":"WEAPON_FLAREGUN"},{"components":[],"label":"Laterna","ammo":0,"name":"WEAPON_FLASHLIGHT"},{"components":[],"label":"Paraquedas","ammo":0,"name":"GADGET_PARACHUTE"}]', '{"z":29.1,"y":-1060.5,"x":87.9}', 340, 0, 'admin', 'Mateus', 'Silva', '25/01/1990', 'M', '17', 'No', 0, '[{"val":336400,"percent":33.64,"name":"hunger"},{"val":295500,"percent":29.55,"name":"thirst"}]', NULL, '249-9884', 0),
	(5, 'steam:110000111b10f75', 'license:f0c882de9b06940cc8037cd269035c150bc7fe6f', 0, 'Xoxotas_Show', '{"bproof_1":0,"eyebrows_3":1,"skin":5,"beard_3":0,"hair_1":2,"chest_2":0,"lipstick_4":0,"moles_1":0,"lipstick_3":0,"helmet_1":-1,"eyebrows_1":2,"helmet_2":0,"pants_2":1,"chest_3":0,"beard_4":0,"decals_2":0,"bags_2":0,"makeup_1":0,"watches_2":0,"ears_1":-1,"hair_2":1,"tshirt_2":0,"bags_1":0,"blush_3":0,"pants_1":1,"chain_1":0,"makeup_3":0,"makeup_4":0,"age_1":0,"tshirt_1":16,"eye_color":2,"lipstick_2":0,"glasses_2":0,"blush_2":0,"age_2":0,"eyebrows_2":0,"sun_2":0,"ears_2":0,"mask_2":0,"sun_1":0,"bproof_2":0,"complexion_2":0,"eyebrows_4":0,"bracelets_1":-1,"complexion_1":0,"blemishes_1":0,"glasses_1":0,"bodyb_1":0,"makeup_2":0,"chest_1":0,"sex":0,"chain_2":0,"lipstick_1":0,"beard_1":0,"blemishes_2":0,"bracelets_2":0,"hair_color_2":2,"beard_2":0,"mask_1":0,"arms_2":0,"blush_1":0,"shoes_1":1,"arms":0,"watches_1":-1,"hair_color_1":3,"face":0,"shoes_2":2,"torso_1":3,"decals_1":0,"torso_2":2,"moles_2":0,"bodyb_2":0}', 'police', 3, '[{"components":["clip_default"],"label":"Pistola","ammo":250,"name":"WEAPON_PISTOL"},{"components":["clip_default"],"label":"Pistola de combate","ammo":250,"name":"WEAPON_COMBATPISTOL"},{"components":[],"label":"Espingarda","ammo":32,"name":"WEAPON_PUMPSHOTGUN"},{"components":["clip_default"],"label":"Assault rifle","ammo":228,"name":"WEAPON_ASSAULTRIFLE"},{"components":[],"label":"Paraquedas","ammo":0,"name":"GADGET_PARACHUTE"}]', '{"z":19.0,"y":-920.9,"x":-713.0}', 85, 0, 'admin', 'D', 'K3', '1990', 'M', '18', 'No', 0, '[{"val":487400,"percent":48.74,"name":"hunger"},{"val":484250,"percent":48.425,"name":"thirst"}]', NULL, '501-1190', 0),
	(6, 'steam:11000011b37eb98', 'license:b2a7250a4ef923b4a630a08ef9901a7d3c8ddd83', 0, 'wincox', '{"torso_1":0,"tshirt_2":0,"helmet_1":-1,"chest_1":0,"ears_1":-1,"lipstick_3":0,"sun_2":0,"hair_color_1":0,"bproof_2":0,"age_1":0,"bracelets_1":-1,"bodyb_1":0,"watches_2":0,"shoes_2":0,"chain_2":0,"glasses_1":0,"blemishes_1":0,"decals_1":0,"face":0,"bracelets_2":0,"age_2":0,"makeup_3":0,"shoes_1":0,"eye_color":0,"skin":0,"torso_2":0,"blush_2":0,"bags_1":0,"bags_2":0,"helmet_2":0,"eyebrows_1":0,"pants_1":0,"mask_1":0,"eyebrows_2":0,"bproof_1":0,"decals_2":0,"beard_1":0,"blemishes_2":0,"sun_1":0,"beard_3":0,"arms_2":0,"glasses_2":0,"chest_2":0,"bodyb_2":0,"makeup_2":0,"hair_color_2":0,"arms":0,"chain_1":0,"beard_4":0,"hair_1":0,"pants_2":0,"moles_1":0,"complexion_2":0,"mask_2":0,"sex":0,"beard_2":0,"lipstick_2":0,"ears_2":0,"blush_1":0,"moles_2":0,"makeup_4":0,"tshirt_1":0,"eyebrows_4":0,"complexion_1":0,"eyebrows_3":0,"hair_2":0,"blush_3":0,"lipstick_4":0,"lipstick_1":0,"watches_1":-1,"makeup_1":0,"chest_3":0}', 'unemployed', 0, '[]', '{"y":1216.9,"z":324.2,"x":680.2}', 0, 0, 'user', 'Roberto', 'Robert', '2/8/1960', 'M', '185', 'No', 0, '[{"percent":92.06,"val":920600,"name":"hunger"},{"percent":90.075,"val":900750,"name":"thirst"}]', NULL, '771-1741', 0),
	(7, 'steam:1100001149efc7d', 'license:5dba1d24023db97f6a4bb4c7797c0bab9dbe9664', 2147483397, '-Fortunato-', '{"skin":0,"shoes_1":25,"sun_2":0,"tshirt_2":0,"arms_2":0,"watches_2":0,"hair_2":3,"mask_1":0,"bags_1":0,"chain_1":0,"decals_2":3,"bodyb_2":0,"eyebrows_1":0,"watches_1":4,"age_1":0,"ears_2":0,"pants_1":31,"bodyb_1":0,"hair_color_2":0,"mask_2":0,"bags_2":0,"hair_1":2,"makeup_1":0,"makeup_2":0,"torso_1":55,"glasses_1":5,"chest_3":0,"arms":41,"bracelets_1":-1,"beard_1":18,"beard_2":10,"beard_4":0,"age_2":0,"bproof_2":1,"bproof_1":11,"complexion_2":0,"sun_1":0,"lipstick_2":0,"makeup_4":0,"glasses_2":5,"eyebrows_2":0,"chest_1":0,"chest_2":0,"eye_color":0,"blemishes_1":0,"moles_1":0,"decals_1":8,"blemishes_2":0,"pants_2":0,"helmet_2":0,"lipstick_3":0,"helmet_1":-1,"makeup_3":0,"lipstick_1":0,"moles_2":0,"torso_2":0,"hair_color_1":0,"eyebrows_4":0,"sex":0,"chain_2":0,"ears_1":2,"bracelets_2":0,"blush_1":0,"beard_3":0,"eyebrows_3":0,"shoes_2":0,"blush_2":0,"complexion_1":0,"face":0,"blush_3":0,"tshirt_1":122,"lipstick_4":0}', 'police', 4, '[{"ammo":81,"components":["clip_default"],"label":"Pistola de combate","name":"WEAPON_COMBATPISTOL"},{"ammo":214,"components":["clip_default"],"label":"Assault rifle","name":"WEAPON_ASSAULTRIFLE"}]', '{"z":98.2,"y":614.3,"x":1167.8}', 2147473559, 0, 'superadmin', 'Henrique', 'Fortunato', '16/05/2000', 'M', '182', 'No', 0, '[{"percent":47.0,"name":"hunger","val":470000},{"percent":46.25,"name":"thirst","val":462500}]', NULL, '104-0089', 0),
	(8, 'steam:1100001066e49c0', 'license:ca5dab445134a22251be2b0072bf1191a950b88e', 5870, 'ZimBa', '{"blemishes_1":0,"watches_2":0,"lipstick_1":0,"makeup_4":0,"complexion_1":0,"bodyb_2":0,"torso_2":0,"beard_1":3,"complexion_2":0,"sun_1":0,"blush_2":0,"decals_1":0,"eyebrows_3":0,"hair_1":0,"pants_1":31,"shoes_1":25,"ears_1":-1,"bracelets_2":0,"face":0,"bodyb_1":0,"age_2":0,"glasses_1":5,"lipstick_3":0,"bproof_1":0,"tshirt_1":129,"skin":0,"torso_1":55,"beard_3":0,"bags_1":0,"hair_2":0,"blush_1":0,"blemishes_2":0,"moles_2":0,"makeup_2":0,"watches_1":-1,"bproof_2":0,"lipstick_2":0,"arms":0,"decals_2":0,"sex":0,"eyebrows_1":29,"eye_color":0,"lipstick_4":0,"mask_1":0,"helmet_2":0,"moles_1":0,"mask_2":0,"eyebrows_4":0,"eyebrows_2":10,"hair_color_1":0,"chain_2":0,"bags_2":0,"chest_2":0,"beard_2":10,"sun_2":0,"helmet_1":-1,"ears_2":0,"beard_4":0,"arms_2":0,"makeup_1":0,"age_1":0,"bracelets_1":-1,"pants_2":0,"chain_1":0,"glasses_2":0,"tshirt_2":0,"chest_1":0,"shoes_2":0,"blush_3":0,"chest_3":0,"makeup_3":0,"hair_color_2":0}', 'taxi', 0, '[]', '{"z":44.4,"y":-376.0,"x":247.2}', 49635, 0, 'admin', 'Sdsda', 'Ddad', 'Dasds', 'M', '150', 'No', 0, '[{"name":"hunger","percent":18.46,"val":184600},{"name":"thirst","percent":10.575,"val":105750}]', NULL, '440-5316', 0),
	(9, 'steam:110000134207034', 'license:c73c14ab7a3a50ffc14271d85a9b50599ac0449f', 0, 'Frost', '{"torso_2":0,"watches_1":-1,"shoes_2":0,"tshirt_1":58,"watches_2":0,"lipstick_2":0,"bracelets_2":0,"chest_1":0,"lipstick_1":0,"bags_1":0,"skin":0,"decals_2":1,"helmet_2":0,"bproof_2":1,"complexion_2":0,"makeup_1":0,"eyebrows_3":0,"torso_1":55,"chain_1":0,"sun_2":0,"blush_1":0,"sun_1":0,"shoes_1":25,"beard_3":0,"hair_color_2":0,"sex":0,"beard_4":0,"chain_2":0,"makeup_3":0,"age_1":0,"blush_2":0,"bracelets_1":-1,"tshirt_2":0,"mask_2":0,"hair_2":0,"bags_2":0,"chest_3":0,"bodyb_1":0,"moles_2":0,"eyebrows_4":0,"blemishes_2":0,"mask_1":0,"beard_1":12,"eyebrows_2":3,"lipstick_3":0,"glasses_1":5,"age_2":0,"pants_1":25,"hair_color_1":0,"makeup_4":0,"ears_1":2,"arms":41,"moles_1":0,"blush_3":0,"bproof_1":11,"eye_color":0,"face":37,"blemishes_1":0,"pants_2":0,"helmet_1":-1,"makeup_2":0,"lipstick_4":0,"decals_1":8,"arms_2":0,"eyebrows_1":0,"beard_2":10,"complexion_1":0,"glasses_2":0,"hair_1":21,"bodyb_2":0,"ears_2":0,"chest_2":0}', 'mechanic', 0, '[{"name":"WEAPON_NIGHTSTICK","components":[],"label":"Cacetete","ammo":0},{"name":"WEAPON_PISTOL","components":["clip_default"],"label":"Pistola","ammo":9987},{"name":"WEAPON_COMBATPISTOL","components":["clip_default"],"label":"Pistola de combate","ammo":9987},{"name":"WEAPON_REVOLVER","components":[],"label":"Heavy revolver","ammo":9987},{"name":"WEAPON_PUMPSHOTGUN","components":[],"label":"Espingarda","ammo":9984},{"name":"WEAPON_SAWNOFFSHOTGUN","components":[],"label":"Sawed off shotgun","ammo":9984},{"name":"WEAPON_STUNGUN","components":[],"label":"Arma de choque","ammo":250},{"name":"WEAPON_HATCHET","components":[],"label":"Machado","ammo":0},{"name":"GADGET_PARACHUTE","components":[],"label":"Paraquedas","ammo":0}]', '{"z":42.3,"y":4968.6,"x":2430.5}', 2144992439, 0, 'user', 'Victor', 'Rodrigues', '06/10/1995', 'M', '180', 'No', 0, '[{"name":"hunger","percent":23.22,"val":232200},{"name":"thirst","percent":4.1,"val":41000}]', NULL, '873-7104', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela esx.user_accounts: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(1, 'steam:1100001001920e7', 'black_money', 0),
	(2, 'steam:1100001192311d5', 'black_money', 91),
	(3, 'steam:1100001345e10be', 'black_money', 182),
	(4, 'steam:11000010e63ff4e', 'black_money', 0),
	(5, 'steam:110000111b10f75', 'black_money', 0),
	(6, 'steam:11000011b37eb98', 'black_money', 0),
	(7, 'steam:1100001149efc7d', 'black_money', 0),
	(8, 'steam:1100001066e49c0', 'black_money', 1859),
	(9, 'steam:110000134207034', 'black_money', 0);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `item` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_inventory_ident_item` (`identifier`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela esx.user_inventory: ~279 rows (aproximadamente)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(1, 'steam:1100001001920e7', 'cutted_wood', 0),
	(2, 'steam:1100001001920e7', 'gazbottle', 0),
	(3, 'steam:1100001001920e7', 'copper', 0),
	(4, 'steam:1100001001920e7', 'packaged_chicken', 0),
	(5, 'steam:1100001001920e7', 'petrol_raffin', 0),
	(6, 'steam:1100001001920e7', 'wood', 0),
	(7, 'steam:1100001001920e7', 'clothe', 0),
	(8, 'steam:1100001001920e7', 'petrol', 0),
	(9, 'steam:1100001001920e7', 'gold', 0),
	(10, 'steam:1100001001920e7', 'diamond', 0),
	(11, 'steam:1100001001920e7', 'carokit', 0),
	(12, 'steam:1100001001920e7', 'water', 16),
	(13, 'steam:1100001001920e7', 'bread', 16),
	(14, 'steam:1100001001920e7', 'fish', 0),
	(15, 'steam:1100001001920e7', 'alive_chicken', 0),
	(16, 'steam:1100001001920e7', 'washed_stone', 0),
	(17, 'steam:1100001001920e7', 'fabric', 0),
	(18, 'steam:1100001001920e7', 'fixkit', 0),
	(19, 'steam:1100001001920e7', 'wool', 0),
	(20, 'steam:1100001001920e7', 'carotool', 0),
	(21, 'steam:1100001001920e7', 'medikit', 0),
	(22, 'steam:1100001001920e7', 'stone', 0),
	(23, 'steam:1100001001920e7', 'blowpipe', 0),
	(24, 'steam:1100001001920e7', 'slaughtered_chicken', 0),
	(25, 'steam:1100001001920e7', 'fixtool', 0),
	(26, 'steam:1100001001920e7', 'cannabis', 0),
	(27, 'steam:1100001001920e7', 'essence', 0),
	(28, 'steam:1100001001920e7', 'iron', 0),
	(29, 'steam:1100001001920e7', 'bandage', 0),
	(30, 'steam:1100001001920e7', 'marijuana', 0),
	(31, 'steam:1100001001920e7', 'packaged_plank', 0),
	(32, 'steam:1100001192311d5', 'marijuana', 0),
	(33, 'steam:1100001192311d5', 'essence', 0),
	(34, 'steam:1100001192311d5', 'bread', 0),
	(35, 'steam:1100001192311d5', 'blowpipe', 0),
	(36, 'steam:1100001192311d5', 'slaughtered_chicken', 0),
	(37, 'steam:1100001192311d5', 'washed_stone', 0),
	(38, 'steam:1100001192311d5', 'alive_chicken', 0),
	(39, 'steam:1100001192311d5', 'medikit', 0),
	(40, 'steam:1100001192311d5', 'bandage', 0),
	(41, 'steam:1100001192311d5', 'fixtool', 0),
	(42, 'steam:1100001192311d5', 'stone', 0),
	(43, 'steam:1100001192311d5', 'fish', 0),
	(44, 'steam:1100001192311d5', 'carotool', 0),
	(45, 'steam:1100001192311d5', 'wool', 0),
	(46, 'steam:1100001192311d5', 'carokit', 0),
	(47, 'steam:1100001192311d5', 'fabric', 0),
	(48, 'steam:1100001192311d5', 'clothe', 0),
	(49, 'steam:1100001192311d5', 'petrol_raffin', 0),
	(50, 'steam:1100001192311d5', 'cutted_wood', 0),
	(51, 'steam:1100001192311d5', 'fixkit', 0),
	(52, 'steam:1100001192311d5', 'water', 0),
	(53, 'steam:1100001192311d5', 'packaged_plank', 0),
	(54, 'steam:1100001192311d5', 'diamond', 0),
	(55, 'steam:1100001192311d5', 'petrol', 0),
	(56, 'steam:1100001192311d5', 'gazbottle', 0),
	(57, 'steam:1100001192311d5', 'packaged_chicken', 0),
	(58, 'steam:1100001192311d5', 'iron', 0),
	(59, 'steam:1100001192311d5', 'gold', 0),
	(60, 'steam:1100001192311d5', 'copper', 0),
	(61, 'steam:1100001192311d5', 'wood', 0),
	(62, 'steam:1100001192311d5', 'cannabis', 0),
	(63, 'steam:1100001345e10be', 'blowpipe', 0),
	(64, 'steam:1100001345e10be', 'fabric', 0),
	(65, 'steam:1100001345e10be', 'alive_chicken', 0),
	(66, 'steam:1100001345e10be', 'clothe', 0),
	(67, 'steam:1100001345e10be', 'washed_stone', 0),
	(68, 'steam:1100001345e10be', 'carokit', 0),
	(69, 'steam:1100001345e10be', 'wood', 0),
	(70, 'steam:1100001345e10be', 'medikit', 0),
	(71, 'steam:1100001345e10be', 'petrol', 0),
	(72, 'steam:1100001345e10be', 'packaged_plank', 0),
	(73, 'steam:1100001345e10be', 'essence', 0),
	(74, 'steam:1100001345e10be', 'wool', 0),
	(75, 'steam:1100001345e10be', 'petrol_raffin', 0),
	(76, 'steam:1100001345e10be', 'bread', 7),
	(77, 'steam:1100001345e10be', 'fixkit', 0),
	(78, 'steam:1100001345e10be', 'water', 2),
	(79, 'steam:1100001345e10be', 'fish', 0),
	(80, 'steam:1100001345e10be', 'slaughtered_chicken', 0),
	(81, 'steam:1100001345e10be', 'marijuana', 0),
	(82, 'steam:1100001345e10be', 'cannabis', 1),
	(83, 'steam:1100001345e10be', 'diamond', 0),
	(84, 'steam:1100001345e10be', 'gazbottle', 0),
	(85, 'steam:1100001345e10be', 'iron', 0),
	(86, 'steam:1100001345e10be', 'copper', 0),
	(87, 'steam:1100001345e10be', 'carotool', 0),
	(88, 'steam:1100001345e10be', 'gold', 0),
	(89, 'steam:1100001345e10be', 'fixtool', 0),
	(90, 'steam:1100001345e10be', 'stone', 0),
	(91, 'steam:1100001345e10be', 'bandage', 20),
	(92, 'steam:1100001345e10be', 'cutted_wood', 0),
	(93, 'steam:1100001345e10be', 'packaged_chicken', 0),
	(94, 'steam:11000010e63ff4e', 'wool', 0),
	(95, 'steam:11000010e63ff4e', 'clothe', 0),
	(96, 'steam:11000010e63ff4e', 'bread', 0),
	(97, 'steam:11000010e63ff4e', 'iron', 0),
	(98, 'steam:11000010e63ff4e', 'fixtool', 0),
	(99, 'steam:11000010e63ff4e', 'medikit', 0),
	(100, 'steam:11000010e63ff4e', 'stone', 0),
	(101, 'steam:11000010e63ff4e', 'blowpipe', 0),
	(102, 'steam:11000010e63ff4e', 'copper', 0),
	(103, 'steam:11000010e63ff4e', 'marijuana', 0),
	(104, 'steam:11000010e63ff4e', 'washed_stone', 0),
	(105, 'steam:11000010e63ff4e', 'petrol', 0),
	(106, 'steam:11000010e63ff4e', 'gold', 0),
	(107, 'steam:11000010e63ff4e', 'petrol_raffin', 0),
	(108, 'steam:11000010e63ff4e', 'packaged_plank', 0),
	(109, 'steam:11000010e63ff4e', 'diamond', 0),
	(110, 'steam:11000010e63ff4e', 'packaged_chicken', 0),
	(111, 'steam:11000010e63ff4e', 'fixkit', 0),
	(112, 'steam:11000010e63ff4e', 'fish', 0),
	(113, 'steam:11000010e63ff4e', 'slaughtered_chicken', 0),
	(114, 'steam:11000010e63ff4e', 'cannabis', 0),
	(115, 'steam:11000010e63ff4e', 'carotool', 0),
	(116, 'steam:11000010e63ff4e', 'water', 0),
	(117, 'steam:11000010e63ff4e', 'fabric', 0),
	(118, 'steam:11000010e63ff4e', 'alive_chicken', 0),
	(119, 'steam:11000010e63ff4e', 'wood', 0),
	(120, 'steam:11000010e63ff4e', 'bandage', 0),
	(121, 'steam:11000010e63ff4e', 'carokit', 0),
	(122, 'steam:11000010e63ff4e', 'gazbottle', 0),
	(123, 'steam:11000010e63ff4e', 'essence', 0),
	(124, 'steam:11000010e63ff4e', 'cutted_wood', 0),
	(125, 'steam:110000111b10f75', 'fixtool', 0),
	(126, 'steam:110000111b10f75', 'clothe', 0),
	(127, 'steam:110000111b10f75', 'wool', 0),
	(128, 'steam:110000111b10f75', 'iron', 0),
	(129, 'steam:110000111b10f75', 'bread', 0),
	(130, 'steam:110000111b10f75', 'stone', 0),
	(131, 'steam:110000111b10f75', 'marijuana', 0),
	(132, 'steam:110000111b10f75', 'copper', 0),
	(133, 'steam:110000111b10f75', 'blowpipe', 0),
	(134, 'steam:110000111b10f75', 'medikit', 0),
	(135, 'steam:110000111b10f75', 'washed_stone', 0),
	(136, 'steam:110000111b10f75', 'petrol', 0),
	(137, 'steam:110000111b10f75', 'gold', 0),
	(138, 'steam:110000111b10f75', 'packaged_plank', 0),
	(139, 'steam:110000111b10f75', 'petrol_raffin', 0),
	(140, 'steam:110000111b10f75', 'diamond', 0),
	(141, 'steam:110000111b10f75', 'fixkit', 0),
	(142, 'steam:110000111b10f75', 'fish', 0),
	(143, 'steam:110000111b10f75', 'packaged_chicken', 0),
	(144, 'steam:110000111b10f75', 'slaughtered_chicken', 0),
	(145, 'steam:110000111b10f75', 'alive_chicken', 0),
	(146, 'steam:110000111b10f75', 'cannabis', 0),
	(147, 'steam:110000111b10f75', 'carotool', 0),
	(148, 'steam:110000111b10f75', 'water', 0),
	(149, 'steam:110000111b10f75', 'fabric', 0),
	(150, 'steam:110000111b10f75', 'wood', 0),
	(151, 'steam:110000111b10f75', 'bandage', 0),
	(152, 'steam:110000111b10f75', 'carokit', 0),
	(153, 'steam:110000111b10f75', 'gazbottle', 0),
	(154, 'steam:110000111b10f75', 'essence', 0),
	(155, 'steam:110000111b10f75', 'cutted_wood', 0),
	(156, 'steam:11000011b37eb98', 'wool', 0),
	(157, 'steam:11000011b37eb98', 'water', 0),
	(158, 'steam:11000011b37eb98', 'washed_stone', 0),
	(159, 'steam:11000011b37eb98', 'medikit', 0),
	(160, 'steam:11000011b37eb98', 'slaughtered_chicken', 0),
	(161, 'steam:11000011b37eb98', 'clothe', 0),
	(162, 'steam:11000011b37eb98', 'stone', 0),
	(163, 'steam:11000011b37eb98', 'wood', 0),
	(164, 'steam:11000011b37eb98', 'packaged_chicken', 0),
	(165, 'steam:11000011b37eb98', 'carotool', 0),
	(166, 'steam:11000011b37eb98', 'cutted_wood', 0),
	(167, 'steam:11000011b37eb98', 'iron', 0),
	(168, 'steam:11000011b37eb98', 'petrol', 0),
	(169, 'steam:11000011b37eb98', 'bandage', 0),
	(170, 'steam:11000011b37eb98', 'carokit', 0),
	(171, 'steam:11000011b37eb98', 'marijuana', 0),
	(172, 'steam:11000011b37eb98', 'bread', 0),
	(173, 'steam:11000011b37eb98', 'gold', 0),
	(174, 'steam:11000011b37eb98', 'fixkit', 0),
	(175, 'steam:11000011b37eb98', 'fixtool', 0),
	(176, 'steam:11000011b37eb98', 'packaged_plank', 0),
	(177, 'steam:11000011b37eb98', 'gazbottle', 0),
	(178, 'steam:11000011b37eb98', 'fish', 0),
	(179, 'steam:11000011b37eb98', 'cannabis', 0),
	(180, 'steam:11000011b37eb98', 'alive_chicken', 0),
	(181, 'steam:11000011b37eb98', 'blowpipe', 0),
	(182, 'steam:11000011b37eb98', 'essence', 0),
	(183, 'steam:11000011b37eb98', 'petrol_raffin', 0),
	(184, 'steam:11000011b37eb98', 'diamond', 0),
	(185, 'steam:11000011b37eb98', 'fabric', 0),
	(186, 'steam:11000011b37eb98', 'copper', 0),
	(187, 'steam:1100001149efc7d', 'diamond', 0),
	(188, 'steam:1100001149efc7d', 'gazbottle', 0),
	(189, 'steam:1100001149efc7d', 'wood', 0),
	(190, 'steam:1100001149efc7d', 'fixkit', 0),
	(191, 'steam:1100001149efc7d', 'carotool', 0),
	(192, 'steam:1100001149efc7d', 'bread', 7),
	(193, 'steam:1100001149efc7d', 'gold', 0),
	(194, 'steam:1100001149efc7d', 'fixtool', 0),
	(195, 'steam:1100001149efc7d', 'alive_chicken', 0),
	(196, 'steam:1100001149efc7d', 'marijuana', 0),
	(197, 'steam:1100001149efc7d', 'blowpipe', 0),
	(198, 'steam:1100001149efc7d', 'fabric', 0),
	(199, 'steam:1100001149efc7d', 'carokit', 0),
	(200, 'steam:1100001149efc7d', 'water', 12),
	(201, 'steam:1100001149efc7d', 'petrol', 0),
	(202, 'steam:1100001149efc7d', 'bandage', 0),
	(203, 'steam:1100001149efc7d', 'slaughtered_chicken', 0),
	(204, 'steam:1100001149efc7d', 'clothe', 0),
	(205, 'steam:1100001149efc7d', 'petrol_raffin', 0),
	(206, 'steam:1100001149efc7d', 'stone', 0),
	(207, 'steam:1100001149efc7d', 'washed_stone', 0),
	(208, 'steam:1100001149efc7d', 'packaged_chicken', 0),
	(209, 'steam:1100001149efc7d', 'packaged_plank', 0),
	(210, 'steam:1100001149efc7d', 'medikit', 0),
	(211, 'steam:1100001149efc7d', 'cutted_wood', 0),
	(212, 'steam:1100001149efc7d', 'copper', 0),
	(213, 'steam:1100001149efc7d', 'iron', 0),
	(214, 'steam:1100001149efc7d', 'cannabis', 0),
	(215, 'steam:1100001149efc7d', 'wool', 0),
	(216, 'steam:1100001149efc7d', 'essence', 0),
	(217, 'steam:1100001149efc7d', 'fish', 0),
	(218, 'steam:1100001066e49c0', 'diamond', 0),
	(219, 'steam:1100001066e49c0', 'carotool', 0),
	(220, 'steam:1100001066e49c0', 'gazbottle', 0),
	(221, 'steam:1100001066e49c0', 'fixkit', 0),
	(222, 'steam:1100001066e49c0', 'wood', 0),
	(223, 'steam:1100001066e49c0', 'bread', 0),
	(224, 'steam:1100001066e49c0', 'gold', 0),
	(225, 'steam:1100001066e49c0', 'fixtool', 0),
	(226, 'steam:1100001066e49c0', 'alive_chicken', 0),
	(227, 'steam:1100001066e49c0', 'marijuana', 0),
	(228, 'steam:1100001066e49c0', 'blowpipe', 0),
	(229, 'steam:1100001066e49c0', 'fabric', 0),
	(230, 'steam:1100001066e49c0', 'carokit', 0),
	(231, 'steam:1100001066e49c0', 'water', 0),
	(232, 'steam:1100001066e49c0', 'petrol', 0),
	(233, 'steam:1100001066e49c0', 'bandage', 0),
	(234, 'steam:1100001066e49c0', 'slaughtered_chicken', 0),
	(235, 'steam:1100001066e49c0', 'clothe', 0),
	(236, 'steam:1100001066e49c0', 'stone', 0),
	(237, 'steam:1100001066e49c0', 'petrol_raffin', 0),
	(238, 'steam:1100001066e49c0', 'washed_stone', 0),
	(239, 'steam:1100001066e49c0', 'packaged_chicken', 0),
	(240, 'steam:1100001066e49c0', 'packaged_plank', 0),
	(241, 'steam:1100001066e49c0', 'medikit', 0),
	(242, 'steam:1100001066e49c0', 'cutted_wood', 0),
	(243, 'steam:1100001066e49c0', 'copper', 0),
	(244, 'steam:1100001066e49c0', 'iron', 0),
	(245, 'steam:1100001066e49c0', 'cannabis', 0),
	(246, 'steam:1100001066e49c0', 'wool', 0),
	(247, 'steam:1100001066e49c0', 'essence', 0),
	(248, 'steam:1100001066e49c0', 'fish', 0),
	(249, 'steam:110000134207034', 'essence', 0),
	(250, 'steam:110000134207034', 'gold', 0),
	(251, 'steam:110000134207034', 'fabric', 0),
	(252, 'steam:110000134207034', 'cannabis', 0),
	(253, 'steam:110000134207034', 'medikit', 0),
	(254, 'steam:110000134207034', 'fixkit', 0),
	(255, 'steam:110000134207034', 'wool', 0),
	(256, 'steam:110000134207034', 'stone', 0),
	(257, 'steam:110000134207034', 'slaughtered_chicken', 0),
	(258, 'steam:110000134207034', 'alive_chicken', 0),
	(259, 'steam:110000134207034', 'gazbottle', 0),
	(260, 'steam:110000134207034', 'carotool', 0),
	(261, 'steam:110000134207034', 'blowpipe', 0),
	(262, 'steam:110000134207034', 'petrol_raffin', 0),
	(263, 'steam:110000134207034', 'petrol', 0),
	(264, 'steam:110000134207034', 'diamond', 0),
	(265, 'steam:110000134207034', 'bread', 4),
	(266, 'steam:110000134207034', 'fish', 0),
	(267, 'steam:110000134207034', 'bandage', 0),
	(268, 'steam:110000134207034', 'clothe', 0),
	(269, 'steam:110000134207034', 'water', 4),
	(270, 'steam:110000134207034', 'packaged_plank', 0),
	(271, 'steam:110000134207034', 'marijuana', 0),
	(272, 'steam:110000134207034', 'fixtool', 0),
	(273, 'steam:110000134207034', 'packaged_chicken', 0),
	(274, 'steam:110000134207034', 'washed_stone', 0),
	(275, 'steam:110000134207034', 'carokit', 0),
	(276, 'steam:110000134207034', 'wood', 0),
	(277, 'steam:110000134207034', 'iron', 0),
	(278, 'steam:110000134207034', 'copper', 0),
	(279, 'steam:110000134207034', 'cutted_wood', 0),
	(280, 'steam:1100001001920e7', 'jewels', 0),
	(281, 'steam:110000134207034', 'jewels', 0),
	(282, 'steam:1100001066e49c0', 'jewels', 0),
	(283, 'steam:1100001149efc7d', 'radio', 0),
	(284, 'steam:1100001149efc7d', 'jewels', 0),
	(285, 'steam:1100001001920e7', 'radio', 0);
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.user_licenses: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
	(1, 'weapon', 'steam:1100001192311d5'),
	(3, 'weapon', 'steam:1100001345e10be'),
	(4, 'dmv', 'steam:1100001192311d5'),
	(5, 'drive', 'steam:1100001192311d5'),
	(6, 'weapon', 'steam:1100001149efc7d'),
	(8, 'dmv', 'steam:1100001149efc7d'),
	(9, 'drive_bike', 'steam:1100001149efc7d'),
	(10, 'drive', 'steam:1100001149efc7d'),
	(11, 'drive_truck', 'steam:1100001149efc7d');
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.vehicles: ~240 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'super'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voltic 2', 'voltic2', 3830400, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.vehicle_categories: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compactos'),
	('coupes', 'Coupes'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle Cars'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Esportivos'),
	('sportsclassics', 'Classicos Esportivos'),
	('super', 'Super Carros'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.vehicle_sold: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Copiando estrutura para tabela esx.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela esx.weashops: ~40 rows (aproximadamente)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 300),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
	(5, 'GunShop', 'WEAPON_MACHETE', 90),
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
	(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
	(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
	(9, 'GunShop', 'WEAPON_BAT', 100),
	(10, 'BlackWeashop', 'WEAPON_BAT', 100),
	(11, 'GunShop', 'WEAPON_STUNGUN', 50),
	(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
	(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
	(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
	(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
	(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
	(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
	(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
	(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
	(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
	(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
	(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
	(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
	(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
	(25, 'GunShop', 'WEAPON_GRENADE', 500),
	(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
	(27, 'GunShop', 'WEAPON_BZGAS', 200),
	(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
	(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
	(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
	(31, 'GunShop', 'WEAPON_BALL', 50),
	(32, 'BlackWeashop', 'WEAPON_BALL', 50),
	(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
	(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
	(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
	(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
	(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
	(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
	(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
	(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
