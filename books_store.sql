DROP SCHEMA books_store;
CREATE SCHEMA books_store;

CREATE TABLE books_store.credit_card(
	number_card VARCHAR(16) PRIMARY KEY NOT NULL,
	end_time DATE,
	n_bank VARCHAR(50),
	n_owner VARCHAR(50),
	start_time DATE,
	n_branch VARCHAR(50),
	id_customer CHAR(7) NOT NULL
);

CREATE TABLE books_store.payment(
	id_payment CHAR(7) PRIMARY KEY NOT NULL
);

CREATE TABLE books_store.card_payment(
	id_payment CHAR(7) PRIMARY KEY NOT NULL,
	number_card VARCHAR(16)
);

CREATE TABLE books_store.customer(
	f_name VARCHAR(15),
	m_name VARCHAR(15),
	l_name VARCHAR(15),
	sex CHAR,
	date_of_birth DATE,
	address_customer VARCHAR(50),
	phone_customer VARCHAR(11),
	email_customer VARCHAR(50),
	password_customer VARCHAR(20),
	username_customer VARCHAR(20),
	id_customer CHAR(7) PRIMARY KEY NOT NULL
);

	CREATE TABLE books_store.ordered(
	id_customer CHAR(7),
	id_book CHAR(7) NOT NULL,
	id_order CHAR(7) NOT NULL,
	PRIMARY KEY(id_book,id_order)
);

CREATE TABLE books_store.rate(
	id_customer CHAR(7) NOT NULL,
	time datetime NOT NULL,
	id_book CHAR(7) NOT NULL,
	PRIMARY KEY(id_customer,time,id_book)
);

CREATE TABLE books_store.order(
	id_payment CHAR(7) NOT NULL,
	id_order CHAR(7) PRIMARY KEY NOT NULL,
	id_book CHAR(7) NOT NULL,
	n_book VARCHAR(50),
	`time` datetime,
	amount INT,
	current_price INT,
	payment_time datetime ,
	id_voucher CHAR(7) NOT NULL
);

CREATE TABLE books_store.content(
	star SMALLINT, 
	comment VARCHAR(255),
	id_customer CHAR(7) NOT NULL,
	id_book CHAR(7) NOT NULL,
	`time` datetime NOT NULL,
	PRIMARY KEY(`id_book`,`id_customer`,`time`)
);

CREATE TABLE books_store.voucher(
	discount INT,
    n_voucher CHAR(250),	
	time_of_voucher datetime,
	id_voucher CHAR(7) PRIMARY KEY NOT NULL,
	applicable_object CHAR(50)
);

	CREATE TABLE books_store.book(
	id_book CHAR(7) PRIMARY KEY NOT NULL,
	current_book_price INT,
	n_book VARCHAR(50),
	cover_image VARCHAR(500),
	book_summary VARCHAR(255),
	book_price INT,
	n_author VARCHAR(50),
	n_publisher VARCHAR(50),
	published_year CHAR(4),
	published_time DATE
);

CREATE TABLE books_store.attached(
	id_book CHAR(7) NOT NULL,
	id_category CHAR(7) NOT NULL,
	PRIMARY KEY(`id_book`,`id_category`)
);

CREATE TABLE books_store.category(
	number_of_book INT,
	n_category VARCHAR(50),
	id_category CHAR(7) PRIMARY KEY NOT NULL
);

CREATE TABLE books_store.written_by(
	id_book CHAR(17) NOT NULL,
	id_author CHAR(7) NOT NULL,
	PRIMARY KEY (id_book, id_author)
);

CREATE TABLE books_store.author(
	id_author CHAR(7) PRIMARY KEY NOT NULL,
	f_name VARCHAR(15),
	m_name VARCHAR(15),
	l_name VARCHAR(15),
	address_author VARCHAR(50),
	email_author VARCHAR(50),
	phone_author VARCHAR(11)
);

CREATE TABLE books_store.contact(
	id_author CHAR(7) NOT NULL,
	id_staff CHAR(7) NOT NULL,
	PRIMARY KEY(id_author, id_staff)
);

CREATE TABLE books_store.publisher(
	n_publisher VARCHAR(50) PRIMARY KEY NOT NULL,
	address_publisher VARCHAR(50),
	phone_publisher VARCHAR(11),
	email_publisher VARCHAR(50),
	business_code CHAR(7)
);

CREATE TABLE books_store.supply_book(
	n_publisher VARCHAR(50) NOT NULL,
	supply_time datetime ,
	id_staff CHAR(7) NOT NULL,
	PRIMARY KEY(`n_publisher`, `id_staff`)
);

CREATE TABLE books_store.staff(
	f_name VARCHAR(15),
	m_name VARCHAR(15),
	l_name VARCHAR(15),
	id_staff CHAR(7) PRIMARY KEY NOT NULL,
	id_storage CHAR(7),
	address_staff VARCHAR(50),
	phone_staff VARCHAR(11),
	email_staff VARCHAR(50),
	username_staff VARCHAR(20),
	password_staff VARCHAR(20)
);

CREATE TABLE books_store.`import`(
	id_note CHAR(7) PRIMARY KEY NOT NULL,
	n_staff CHAR(50),
	id_storage CHAR(7),
	`time` datetime ,
	storage_address VARCHAR(50),
	n_book VARCHAR (50),
	id_book CHAR(7) NOT NULL,
	amount_of_book INT,
	current_price_of_book INT,
	id_staff CHAR(7)
);

CREATE TABLE books_store.`export`(
	id_note CHAR(7) PRIMARY KEY NOT NULL,
	n_staff CHAR(50),
	id_storage CHAR(7),
	`time` datetime ,
	storage_address VARCHAR(50),
	n_book VARCHAR (50),
	id_book CHAR(7) NOT NULL,
	amount_of_book INT,
	current_price_of_book INT,
	id_staff CHAR(7)
);

CREATE TABLE books_store.storage(
	address_storage VARCHAR(50),
	email_storage VARCHAR(50),
	phone_storage VARCHAR(11),
	n_storage VARCHAR(50),
	id_storage CHAR(7) PRIMARY KEY NOT NULL
);

CREATE TABLE books_store.storage_type_of_book(
	`id_storage` CHAR(7) NOT NULL,
	type_of_book VARCHAR(50) NOT NULL,
	PRIMARY KEY(`id_storage`,`type_of_book`)
);

ALTER TABLE books_store.credit_card
	ADD FOREIGN KEY (`id_customer`) REFERENCES books_store.`customer`(`id_customer`);

ALTER TABLE books_store.card_payment
	ADD FOREIGN KEY (`id_payment`) REFERENCES books_store.`payment`(`id_payment`),
	ADD	FOREIGN KEY (`number_card`) REFERENCES books_store.credit_card(`number_card`);

ALTER TABLE books_store.ordered
	ADD FOREIGN KEY (`id_book`) REFERENCES books_store.`book`(`id_book`),
	ADD FOREIGN KEY (`id_order`) REFERENCES books_store.`order`(`id_order`),
	ADD FOREIGN KEY (`id_customer`) REFERENCES books_store.`customer`(`id_customer`);

ALTER TABLE books_store.rate
	ADD FOREIGN KEY (`id_book`) REFERENCES books_store.`book`(`id_book`),
	ADD FOREIGN KEY (`id_customer`) REFERENCES books_store.`customer`(`id_customer`);

ALTER TABLE books_store.`order`
	ADD FOREIGN KEY (`id_payment`) REFERENCES books_store.`payment`(`id_payment`),
	ADD FOREIGN KEY (`id_voucher`) REFERENCES books_store.`voucher`(`id_voucher`);

ALTER TABLE books_store.content
ADD FOREIGN KEY(`id_customer`,`time`, `id_book`) REFERENCES books_store.rate(`id_customer`,`time`,`id_book`);

ALTER TABLE books_store.book
	ADD FOREIGN KEY (`n_publisher`) REFERENCES books_store.publisher(`n_publisher`);

ALTER TABLE books_store.attached
	ADD FOREIGN KEY (`id_book`) REFERENCES books_store.book(`id_book`),
	ADD	FOREIGN KEY (`id_category`) REFERENCES books_store.category(`id_category`);

ALTER TABLE books_store.written_by
	ADD FOREIGN KEY (id_book) REFERENCES books_store.book(id_book),
	ADD	FOREIGN KEY (id_author) REFERENCES books_store.author(id_author);

ALTER TABLE books_store.contact
	ADD FOREIGN KEY (id_staff) REFERENCES books_store.staff(id_staff),
	ADD	FOREIGN KEY (id_author) REFERENCES books_store.author(id_author);

ALTER TABLE books_store.supply_book
	ADD FOREIGN KEY (n_publisher) REFERENCES books_store.publisher(n_publisher),
	ADD	FOREIGN KEY (id_staff) REFERENCES books_store.staff(id_staff);

ALTER TABLE books_store.staff
	ADD FOREIGN KEY (id_storage) REFERENCES books_store.storage(id_storage);

ALTER TABLE books_store.`import`
	ADD FOREIGN KEY (id_staff) REFERENCES books_store.staff(id_staff);
    
ALTER TABLE books_store.`export`
	ADD FOREIGN KEY (id_staff) REFERENCES books_store.staff(id_staff);

ALTER TABLE books_store.`storage_type_of_book`
	ADD FOREIGN KEY (`id_storage`) REFERENCES books_store.`storage`(`id_storage`);

ALTER TABLE books_store.customer
	ADD CONSTRAINT checksex CHECK (sex IN('M', 'F'));

ALTER TABLE books_store.customer
	ADD CONSTRAINT checkID CHECK (id_customer NOT IN('', 'null', 'NULL'));

ALTER TABLE books_store.credit_card
	ADD CONSTRAINT checknumber_card CHECK (number_card NOT IN('', 'null', 'NULL'));

ALTER TABLE books_store.credit_card
	ADD CONSTRAINT checkid_customer CHECK (id_customer NOT IN('', 'null', 'NULL'));

ALTER TABLE books_store.content
	ADD CONSTRAINT checkstar CHECK (star>=0 AND star <=5);

INSERT INTO books_store.customer(f_name, m_name, l_name, sex, date_of_birth, address_customer,phone_customer, email_customer, password_customer, username_customer, id_customer) VALUES 
('DINH', 'THAI', 'VINH', 'M', '1999-09-22','Binh Thanh, TPHCM', '0971337478', 'vinh.dinh0309@hcmut.edu.vn','123456', 'vinh.dinh0309', '5555555'),
('VO', 'NGUYEN MINH', 'TU', 'M', '2000-01-01','Thu Duc,TPHCM', '0123456789', 'tu.vo.2504@hcmut.edu.vn','0000001', 'tu.vo.2504', '1111111'),
('VO', 'QUY', 'LONG', 'M', '2000-01-02','Quan 10,TPHCM', '0000000002', 'long.vo2k1@hcmut.edu.vn','0000002', 'long.vo2k1', '2222222'),
('NGUYEN', 'VAN', 'A', 'M', '2001-01-03','Quan 9,TPHCM', '0000000003', 'ng.van.a@hcmut.edu.vn','0000003', 'ng.van.a', '3333333'),
('TRAN', 'VAN', 'B', 'M', '1999-01-04','Quan 5,TPHCM', '0000000004', 'tr.van.b@hcmut.edu.vn','0000004', 'tr.van.b', '4444444');

INSERT INTO books_store.credit_card(number_card, end_time, n_bank, n_owner, start_time,n_branch, id_customer) VALUES 
('1234567890123456', '2023-08-21', 'NH OCB','DINH THAI VINH', '2018-04-12', 'CN THU DUC', 5555555),
('0000000000000001', '2022-06-12', 'NH SACCOMBANK','VO NGUYEN MINH TU', '2017-02-10', 'CN CHO THU DUC', 1111111),
('0000000000000002', '2022-03-29', 'NH VIETTINBANK','TRAN VAN B', '2017-03-27', 'CN NGUYEN XI', 4444444),
('0000000000000003', '2024-07-20', 'NH DONGABANK','VO QUY LONG', '2019-06-21', 'CN QUANG TRUNG', 2222222),
('0000000000000004', '2023-07-10', 'NH VIETCOMBANK','NGUYEN VAN A', '2018-11-21', 'CN THU DUC', 3333333),
('0000000000000005', '2022-09-03', 'NH TECHCOMBANK','VO NGUYEN MINH TU', '2018-05-18', 'CN THU DUC', 1111111),
('0000000000000006', '2026-02-20', 'NH MBBANK','VO QUY LONG', '2021-03-12' , 'CN LI THUONG KIET', 2222222),
('0000000000000007', '2023-08-11', 'NH VIETCOMBANK', 'VO QUY LONG', '2018-12-22', 'CN THU DUC', 2222222);

INSERT books_store.payment(id_payment) VALUES 
('1234567'),
('1234568'),
('1234569'),
('1234560'), 
('1234570'),
('1234571'),
('1234572'),
('1234573'),
('1234574'),
('1234575'),
('1234576'),
('1234577');

-- check again
INSERT INTO books_store.card_payment(number_card, id_payment) VALUES
('1234567890123456', 1234575),
('0000000000000001', 1234567),
('0000000000000002', 1234568),
('0000000000000003', 1234569),
('0000000000000004', 1234560),
('0000000000000005', 1234570),
('0000000000000006', 1234571),
('0000000000000007', 1234572);

INSERT INTO books_store.`storage`(address_storage,email_storage,phone_storage,n_storage,id_storage) VALUES
('1, Tan Phu, quan 9,TPHCM','hau.pham@hcmut.edu.vn','123456790','NHA NAM','001'),
('1, Linh Trung, Thu Duc,TPHCM','binh.bui@hcmut.edu.vn','0563456790','NGUYEN VAN CU','002'),
('1, Phuong 9, Binh Thanh,TPHCM','huy.che@hcmut.edu.vn','123849790','FAHASA','003'),
('1, Ba Diem, Hoc Mon,TPHCM','phong.tran@hcmut.edu.vn','789156790','PHU QUY','004'),
('1, An Phu Dong, quan 12,TPHCM','nguyen.tran121820@hcmut.edu.vn','896156790','HOA VIEN','005');

-- check again
INSERT INTO books_store.`staff`(f_name,m_name,l_name,id_staff,id_storage) VALUES
('VO','QUY','LONG','0007','001'),
('DINH','THAI','VINH','0003','003'),
('VO','NGUYEN MINH','TU','0005','002'),
('NGUYEN','VAN','A','0008','005'),
('TRAN','VAN','B','0002','004');

-- check again
INSERT INTO books_store.`import`(id_note,`time`,storage_address,n_book,id_book,amount_of_book,current_price_of_book,id_staff) VALUES
('00002', '2012-07-02','Thu Duc,TPHCM','Thần Thoại Hy Lạp','000020','100','160000','0007'),
('00003','2013-03-07','Thu Duc,TPHCM','Thần thoại bắc âu','000021','100','93000','0005'),
('00005', '2015-09-20','Thu Duc,TPHCM','Tuổi trẻ đáng Giá Bao Nhiêu','000101','500','60000','0003'),
('00004', '2008-10-18','Thu Duc,TPHCM','Các Vị Thần Ai Cập','000022','100','100000','0008'),
('00001', '2000-01-02','Thu Duc,TPHCM','Hoàng Tử Bé','000001','50','60000','0002');

-- check again
INSERT INTO books_store.`export`(id_note,`time`,storage_address,n_book,id_book,amount_of_book,current_price_of_book,id_staff) VALUES
('00002', '2012-07-02','Thu Duc,TPHCM','Thần Thoại Hy Lạp','000020','100','160000','0008'),
('00003', '2013-03-07','Thu Duc,TPHCM','Thần thoại bắc âu','000021','100','93000','0005'),
('00005', '2015-09-20','Thu Duc,TPHCM','Tuổi trẻ đáng Giá Bao Nhiêu','000101','500','60000','0003'),
('00004', '2008-10-18','Thu Duc,TPHCM','Các Vị Thần Ai Cập','000022','100','100000','0002'),
('00001', '2000-01-02','Thu Duc,TPHCM','Hoàng Tử Bé','000001','50','60000','0007');

INSERT INTO books_store.`storage_type_of_book`(id_storage,type_of_book) VALUES
('001','VAN HOC VIET NAM'),
('001','VAN HOC NUOC NGOAI'),
('002','KHOA HOC TU NHIEN'),
('002','KHOA HOC XA HOI'),
('003','THIEU NHI'),
('003','THAM KHAO'),
('004','DOI SONG - GIA DINH'),
('004','CHINH TRI'),
('005','TO MAU'),
('005','SACH GIAO KHOA');

INSERT INTO books_store.`category` (`number_of_book`, `n_category`, `id_category`) VALUES 
('30', 'Kinh tế', '564220'),
('500', 'Khoa học', '123456'),
('250', 'Vật lý', '126503'),
('1000', 'Công nghệ thông tin', '156407'),
('200', 'Toán cao cấp', '534132');

-- check again
INSERT INTO books_store.`voucher`(discount, n_voucher, time_of_voucher, id_voucher, applicable_object) VALUES
('20000', 'Giảm giá khi mua combo 3 cuôn sách bất kì', '2020-12-12 12:12:12','1912713', 'All'),
('10000', 'Black Friday', '2021-11-26 00:00:00','2611221', 'All');

-- check again
INSERT INTO books_store.`order` VALUES
('1234567','1912714','000020', 'Thần Thoại Hy Lạp', '2021-11-26 12:12:12','1','2131','2020-12-12 12:12:12','2611221'),
('1234568','1912715','000020', 'Thần Thoại Hy Lạp', '2021-11-26 12:12:13','1','2131','2020-12-12 12:12:12','2611221'),
('1234569','1912716','000020', 'Thần Thoại Hy Lạp', '2021-11-26 12:12:15','1','2131','2020-12-12 12:12:12','2611221');

INSERT INTO books_store.`publisher` (`n_publisher`, `address_publisher`, `phone_publisher`,`email_publisher`, `business_code`) VALUES 
('Seven Seas', NULL, NULL, NULL, NULL),
('Pearson', NULL, NULL, NULL, NULL),
('Wiley', NULL, NULL, NULL, NULL),
('Bertelsmann', NULL, NULL, NULL, NULL),
('Kim Jang', NULL, NULL, NULL, NULL);

-- check again
INSERT INTO books_store.`book` (`id_book`, `current_book_price`, `n_book`, `cover_image`,`book_summary`, `book_price`, `n_author`, `n_publisher`, `published_year`, `published_time`) VALUES
('154544', '50000', 'Quẳng gánh lo đi và vui sống', NULL, 'Khát vọng sống','75000', 'Dale Carnegie', 'Seven Seas', '1995', '2016-08-10'),
('114541', '120000', 'Nghệ thuật thuyết phục bậc thầy', NULL,'Khả năng thuyết phục','140000', 'David Barron', 'Pearson', '2003', '2021-08-04'),
('125423', '250000', 'Pay Back Time', NULL,'Tam li nha dau tu','300000', 'Phil Town', 'Wiley', '1995', '2021-08-18'),
('145411', '150000', 'Sức mạnh của khởi đầu ngớ ngẩn', NULL,'Day start-up','175000', 'Richie Norton', 'Bertelsmann', '2002', '2021-08-03'),
('514552', '300000', 'Dắc Nhân Tâm', NULL, 'Sach day lam nguoi','350000', 'Dale Carnegie', 'Kim Jang', '1970', '2021-08-02');

-- check again
INSERT INTO books_store.`attached` (`id_book`, `id_category`) VALUES
('154544', '564220'),
('114541', '123456'),
('125423', '126503'),
('145411', '156407'),
('514552', '534132');

-- check again
INSERT INTO books_store.`ordered` VALUES
('2222222','154544','1912714'),
('2222222','125423','1912715'),
('2222222','514552','1912716');

-- check again
INSERT INTO books_store.supply_book(n_publisher,supply_time,id_staff) VALUES 
('Seven Seas', '2000-04-12','0002'),
('Pearson', '2000-04-13','0007'),
('Wiley', '2005-05-10','0003'),
('Bertelsmann', '2002-08-13','0005'),
('Kim Jang', '2006-03-09','0007');

INSERT INTO books_store.`author` (`id_author`, `f_name`, `m_name`, `l_name`, `address_author`,`email_author`, `phone_author`) VALUES 
('00010', 'Dale', NULL, 'Carnegie', NULL, NULL, NULL),
('00011', 'Chi', NULL, 'Nguyễn', NULL, NULL, NULL), 
('00012', 'Spencer', NULL, 'Johnson', NULL, NULL, NULL),
('00013', 'Paulo', NULL, 'Coelho', NULL, NULL, NULL),
('00014', 'Robert', NULL, 'Kiyosaki', NULL, NULL, NULL);
-- check again
INSERT INTO books_store.contact(id_author, id_staff) VALUES 
('00010','0002'),
('00011','0007'),
('00012','0003'),
('00013','0005'),
('00014','0007');

-- check again
INSERT INTO books_store.`written_by` (`id_book`, `id_author`) VALUES
('154544', '00010'),
('114541', '00011'),
('125423', '00012'),
('145411', '00013'),
('514552', '00014');

