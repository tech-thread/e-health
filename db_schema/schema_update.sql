CREATE TABLE `tbl_user` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`full_name` varchar(100) NOT NULL,
	`login_name` varchar(15) NOT NULL UNIQUE,
	`status` INT(5) NOT NULL,
	`user_role` varchar(255) NOT NULL,
	`phone` varchar(255) NOT NULL,
	`password` varchar(40) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_doctor` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`degree` varchar(255) NOT NULL,
	`name` varchar(150) NOT NULL,
	`phone` varchar(150) NOT NULL,
	`email` varchar(150) NOT NULL,
	`institute` varchar(150) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_patient` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`doctor` INT(15) NOT NULL,
	`full_name` varchar(50) NOT NULL,
	`age` INT(10) NOT NULL,
	`weight` FLOAT(10) NOT NULL,
	`apointment_date` DATETIME NOT NULL,
	`mobile` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_madicine_manufacturer` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`remarks` varchar(150) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_madicine_group` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`group_name` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_madicine` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`group` INT(15) NOT NULL,
	`manufacturer` INT(15) NOT NULL,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tbl_patient_details` (
	`id` INT(15) NOT NULL AUTO_INCREMENT,
	`taken_time` varchar(20) NOT NULL,
	`madicine_taken_qty` INT(20) NOT NULL,
	`patient` INT(15) NOT NULL,
	`madicine` INT(15) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tbl_patient` ADD CONSTRAINT `tbl_patient_fk0` FOREIGN KEY (`doctor`) REFERENCES `tbl_doctor`(`id`);

ALTER TABLE `tbl_madicine` ADD CONSTRAINT `tbl_madicine_fk0` FOREIGN KEY (`group`) REFERENCES `tbl_madicine_group`(`id`);

ALTER TABLE `tbl_madicine` ADD CONSTRAINT `tbl_madicine_fk1` FOREIGN KEY (`manufacturer`) REFERENCES `tbl_madicine_manufacturer`(`id`);

ALTER TABLE `tbl_patient_details` ADD CONSTRAINT `tbl_patient_details_fk0` FOREIGN KEY (`patient`) REFERENCES `tbl_patient`(`id`);

ALTER TABLE `tbl_patient_details` ADD CONSTRAINT `tbl_patient_details_fk1` FOREIGN KEY (`madicine`) REFERENCES `tbl_madicine`(`id`);

#--username: admin password:Adm1n#
insert into tbl_user (full_name, login_name, status, user_role, phone, password) values  ('', 'admin', '1', '', '', 'Adm1n#');