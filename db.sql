DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `f_name` varchar(15) DEFAULT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(15) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address_customer` varchar(50) DEFAULT NULL,
  `phone_customer` varchar(11) DEFAULT NULL,
  `email_customer` varchar(50) DEFAULT NULL,
  `password_customer` varchar(20) DEFAULT NULL,
  `username_customer` varchar(20) DEFAULT NULL,
  `id_customer` char(7) NOT NULL,
   PRIMARY KEY (`id_customer`)
); 

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id_payment` char(7) NOT NULL
) ;

DROP TABLE IF EXISTS `card_payment`;
CREATE TABLE `card_payment` (
  `id_payment` char(7) NOT NULL,
  `number_card` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_payment`),
  KEY `number_card` (`number_card`)
) ;

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id_payment` char(7) NOT NULL,
  PRIMARY KEY (`id_payment`)
) ;

DROP TABLE IF EXISTS `credit_card`;
CREATE TABLE `credit_card` (
  `number_card` varchar(16) NOT NULL,
  `end_time` date DEFAULT NULL,
  `n_bank` varchar(50) DEFAULT NULL,
  `n_owner` varchar(50) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `n_branch` varchar(50) DEFAULT NULL,
  `id_customer` char(7) NOT NULL,
  PRIMARY KEY (`number_card`)
);

INSERT INTO `customer` VALUES ('VO','NGUYEN MINH','TU','M','2000-01-01','Thu Duc,TPHCM','0123456789','tu.vo.2504@hcmut.edu.vn','0000001','tu.vo.2504','1111111'),
('VO','QUY','LONG','M','2000-01-02','Quan 10,TPHCM','0000000002','long.vo2k1@hcmut.edu.vn','0000002','long.vo2k1','2222222'),
('NGUYEN','VAN','A','M','2001-01-03','Quan 9,TPHCM','0000000003','ng.van.a@hcmut.edu.vn','0000003','ng.van.a','3333333'),
('TRAN','VAN','B','M','1999-01-04','Quan 5,TPHCM','0000000004','tr.van.b@hcmut.edu.vn','0000004','tr.van.b','4444444'),
('DINH','THAI','VINH','M','1999-09-22','Binh Thanh, TPHCM','0971337478','vinh.dinh0309@hcmut.edu.vn','123456','vinh.dinh0309','5555555');

INSERT INTO `payment` VALUES 
('1234560'),
('1234567'),
('1234568'),
('1234569'),
('1234570'),
('1234571'),
('1234572'),
('1234573'),
('1234574'),
('1234575'),
('1234576'),
('1234577');

INSERT INTO `card_payment` VALUES 
('1234567','0000000000000001'),
('1234568','0000000000000002'),
('1234569','0000000000000003'),
('1234560','0000000000000004'),
('1234570','0000000000000005'),
('1234571','0000000000000006'),
('1234572','0000000000000007'),
('1234575','1234567890123456');

INSERT INTO `credit_card` VALUES ('0000000000000001','2022-06-12','NH SACCOMBANK','VO NGUYEN MINH TU','2017-02-10','CN CHO THU DUC','1111111'),
('0000000000000002','2022-03-29','NH VIETTINBANK','TRAN VAN B','2017-03-27','CN NGUYEN XI','4444444'),
('0000000000000003','2024-07-20','NH DONGABANK','VO QUY LONG','2019-06-21','CN QUANG TRUNG','2222222'),
('0000000000000004','2023-07-10','NH VIETCOMBANK','NGUYEN VAN A','2018-11-21','CN THU DUC','3333333'),
('0000000000000005','2022-09-03','NH TECHCOMBANK','VO NGUYEN MINH TU','2018-05-18','CN THU DUC','1111111'),
('0000000000000006','2026-02-20','NH MBBANK','VO QUY LONG','2021-03-12','CN LI THUONG KIET','2222222'),
('0000000000000007','2023-08-11','NH VIETCOMBANK','VO QUY LONG','2018-12-22','CN THU DUC','2222222'),
('1234567890123456','2023-08-21','NH OCB','DINH THAI VINH','2018-04-12','CN THU DUC','5555555');

