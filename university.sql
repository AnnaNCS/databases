DROP DATABASE IF EXISTS `university`;
CREATE DATABASE `university`;
USE `university`;

CREATE TABLE `Location`(
`Location_code` VARCHAR(50),
`Building`  VARCHAR(50),
`RoomNumber` INT,
PRIMARY KEY(`Location_code`)
);

CREATE TABLE `Major`(
`Dep_id` VARCHAR(50) NOT NULL,
`Name` VARCHAR(50),
`Dep_char` VARCHAR(50),
PRIMARY KEY(`Dep_id`)
);

CREATE TABLE `Professor`(
`Professor_id` VARCHAR(50) NOT NULL,
`First_name` VARCHAR (50),
`Last_name` VARCHAR (50),
`Dept_in` VARCHAR(50),
`Office_location` VARCHAR(50),
PRIMARY KEY(`Professor_id`)
);


CREATE TABLE `Student`(
`Student_id` VARCHAR(50) NOT NULL,
`First_name` VARCHAR (50),
`Last_name` VARCHAR (50),
`Advisor` VARCHAR (50),
`Major` VARCHAR(50),
`Course 1` VARCHAR (50),
`Course 2` VARCHAR (50),
`Course 3` VARCHAR (50),
`Course 4` VARCHAR (50),
PRIMARY KEY(`Student_id`)
);


CREATE TABLE `Course`(
`Course_id` VARCHAR(50) NOT NULL,
`Name` VARCHAR (50),
`Dept_id` VARCHAR (50),
`Units` INT,
`Professor` VARCHAR (50),
`Time` VARCHAR (50),
`Course_location` VARCHAR (50),
`Student_enr` INT,
`Description` VARCHAR (450),
PRIMARY KEY(`Course_id`)
);

INSERT INTO Location
VALUES
('O100','Swan',100), ('O101','Swan',101),('O102','Swan',102),('O103','Swan',103),('O104','Swan',104),('O105','Swan',105),('O106','Swan',106),('O107','Swan',107),('O108','Swan',108),('O109','Swan',109),('O110','Swan',110),('O111','Swan',111),('O112','Swan',112),('O113','Swan',113),('O114','Swan',114),('O115','Swan',115),
('O200','Swan',200),('O201','Swan',201),('O202','Swan',202),('O203','Swan',203),('O204','Swan',204),('O205','Swan',205),('O206','Swan',206),('O207','Swan',207),('O208','Swan',208),('O209','Swan',209),('O210','Swan',210),('O211','Swan',211),('O212','Swan',212),('O213','Swan',213),('O214','Swan',214),('O215','Swan',215),
('O300','Swan',300),('O301','Swan',301),('O302','Swan',302),('O303','Swan',303),('O304','Swan',304),('O305','Swan',305),('O306','Swan',306),('O307','Swan',307),('O308','Swan',308),('O309','Swan',309),('O310','Swan',310),('O311','Swan',311),('O312','Swan',312),('O313','Swan',313),('O314','Swan',314),('O315','Swan',315),
('O400','Swan',400),('O401','Swan',401),('O402','Swan',402),('O403','Swan',403),('O404','Swan',404),('O405','Swan',405),('O406','Swan',406),('O407','Swan',407),('O408','Swan',408),('O409','Swan',409),('O410','Swan',410),('O411','Swan',411),('O412','Swan',412),('O413','Swan',413),('O414','Swan',414),('O415','Swan',415),
('O500','Swan',500),('O501','Swan',501),('O502','Swan',502),('O503','Swan',503),('O504','Swan',504),('O505','Swan',505),('O506','Swan',506),
('F100','Fowler',100),('F101','Fowler',101),('F102','Fowler',102),('F103','Fowler',103),('F104','Fowler',104),('F105','Fowler',105),('F106','Fowler',106),('F107','Fowler',107),('F108','Fowler',108),('F109','Fowler',109),('F110','Fowler',110),
('F200','Fowler',200),('F201','Fowler',201),('F202','Fowler',202),('F203','Fowler',203),('F204','Fowler',204),('F205','Fowler',205),('F206','Fowler',206),('F207','Fowler',207),('F208','Fowler',208),('F209','Fowler',209),('F210','Fowler',210),
('C100','Choi',100),('C101','Choi',101),('C102','Choi',102),('C103','Choi',103),('C104','Choi',104),('C105','Choi',105),('C106','Choi',106),('C107','Choi',107),('C108','Choi',108),('C109','Choi',109),('C110','Choi',110),
('C200','Choi',200),('C201','Choi',201),('C202','Choi',202),('C203','Choi',203),('C204','Choi',204),('C205','Choi',205),('C206','Choi',206),('C207','Choi',207),('C208','Choi',208),('C209','Choi',209),('C210','Choi',210),
('B100','Berkus',100),('B101','Berkus',101),('B102','Berkus',102),('B103','Berkus',103),('B104','Berkus',104),('B105','Berkus',105),('B106','Berkus',106),('B107','Berkus',107),('B108','Berkus',108),('B109','Berkus',109),('B110','Berkus',110),
('B200','Berkus',200),('B201','Berkus',201),('B202','Berkus',202),('B203','Berkus',203),('B204','Berkus',204),('B205','Berkus',205),('B206','Berkus',206),('B207','Berkus',207),('B208','Berkus',208),('B209','Berkus',209),('B210','Berkus',210),
('HSC100','Hameetman Science Center',100),('HSC101','Hameetman Science Center',101),('HSC102','Hameetman Science Center',102),('HSC103','Hameetman Science Center',103),('HSC104','Hameetman Science Center',104),('HSC105','Hameetman Science Center',105),
('HSC106','Hameetman Science Center',106),('HSC107','Hameetman Science Center',107),('HSC108','Hameetman Science Center',108),('HSC109','Hameetman Science Center',109),('HSC110','Hameetman Science Center',110),
('HSC200','Hameetman Science Center',200),('HSC201','Hameetman Science Center',201),('HSC202','Hameetman Science Center',202),('HSC203','Hameetman Science Center',203),('HSC204','Hameetman Science Center',204),('HSC205','Hameetman Science Center',205),
('HSC206','Hameetman Science Center',206),('HSC207','Hameetman Science Center',207),('HSC208','Hameetman Science Center',208),('HSC209','Hameetman Science Center',209),('HSC210','Hameetman Science Center',210),
('LIB100','Library',100),('LIB101','Library',101),('LIB102','Library',102),('LIB103','Library',103),('LIB104','Library',104),('LIB105','Library',105),('LIB106','Library',106),('LIB107','Library',107),('LIB108','Library',108),('LIB109','Library',109),('LIB110','Library',110),
('LIB200','Library',200),('LIB201','Library',201),('LIB202','Library',202),('LIB203','Library',203),('LIB204','Library',204),('LIB205','Library',205),('LIB206','Library',206),('LIB207','Library',207),('LIB208','Library',208),('LIB209','Library',209),('LIB210','Library',210),
('J100','Johnson',100),('J101','Johnson',101),('J102','Johnson',102),('J103','Johnson',103),('J104','Johnson',104),('J105','Johnson',105),('J106','Johnson',106),('J107','Johnson',107),('J108','Johnson',108),('J109','Johnson',109),('J110','Johnson',110),
('J200','Johnson',200),('J201','Johnson',201),('J202','Johnson',202),('J203','Johnson',203),('J204','Johnson',204),('J205','Johnson',205),('J206','Johnson',206),('J207','Johnson',207),('J208','Johnson',208),('J209','Johnson',209),('J210','Johnson',210);

SELECT * FROM Location;

INSERT INTO Major
VALUES
('BIO',	'Biology', 'P1006'),
('BLST', 'Black Studies', 'P1007'),
('CHEM', 'Chemistry', 'P1008'),
('COGS', 'Cognitive Science', 'P1009'),
('COMP', 'Computer Science', 'P1001'),
('CTSJ', 'Critical Theory & Social Justice', 'P1010'),
('GEO', 'Geology', 'P1011'),
('GERM', 'German Studies', 'P1005'),
('HIST', 'History', 'P1012'),
('LING', 'Lingustics', 'P1013'),
('MAC', 'Media Arts & Culture', 'P1014'),
('MATH', 'Mathematics', 'P1015'),
('PHIL', 'Philosophy', 'P1016'),
('PSYC', 'Psycology', 'P1017');

INSERT INTO `Professor`
VALUES
('P1006', 'Joesph', 'Schulz', 'BIO', 'O100'),
('P1022', 'Rivi', 'Heather', 'BIO', 'O101'),
('P1023', 'Darsie', 'Hanlin', 'BIO', 'O102'),
('P1024', 'Cliff', 'Geffinger', 'BIO', 'O103'),
('P1025', 'Darcy', 'Comiam', 'BIO', 'O104'),
('P1007', 'Erica', 'Ball', 'BLST', 'O300'),
('P1026', 'Sidney', 'Gronous', 'BLST', 'O301'),
('P1027', 'Floyd', 'Jaqueminet', 'BLST', 'O302'),
('P1028', 'Armstrong', 'Barde', 'BLST', 'O303'),
('P1029', 'Wren', 'Vye', 'BLST', 'O304'),
('P1030', 'Chrisy', 'Novelli', 'BLST', 'O305'),
('P1008', 'Jeffrey', 'Cannon', 'CHEM', 'O105'),
('P1031', 'Magda', 'Noble', 'CHEM', 'O106'),
('P1032', 'Kori', 'Hamman', 'CHEM', 'O107'),
('P1033', 'Morna', 'Duck', 'CHEM', 'O108'),
('P1034', 'Shirl', 'Curnow', 'CHEM', 'O109'),
('P1035', 'Etty', 'Petren', 'CHEM', 'O110'),
('P1009', 'Aleksandra', 'Sherman', 'COGS', 'O200'),
('P1036', 'Aldwin', 'Fazzioli', 'COGS', 'O201'),
('P1037', 'Carmina', 'Trayling', 'COGS', 'O202'),
('P1038', 'Marissa', 'Joye', 'COGS', 'O203'),
('P1039', 'Ola', 'Isacq', 'COGS', 'O204'),
('P1040', 'Shaine', 'Cattini', 'COGS', 'O205'),
('P1001', 'Kathryn', 'Leonard', 'COMP', 'O206'),
('P1003', 'Hsing-Hau', 'Chen', 'COMP', 'O207'),
('P1004', 'Justin', 'Li', 'COMP', 'O208'),
('P1018', 'Irina', 'Rabkina', 'COMP', 'O209'),
('P1010', 'Caroline', 'Heldman', 'CTSJ', 'O306'),
('P1041', 'Raymond', 'Pfleger', 'CTSJ', 'O307'),
('P1042', 'Carmelita', 'Stent', 'CTSJ', 'O308'),
('P1043', 'Davidson', 'Spence', 'CTSJ', 'O309'),
('P1044', 'Wallace', 'Yonnie', 'CTSJ', 'O310'),
('P1002', 'Ann', 'Blythe', 'GEO', 'O111'),
('P1011', 'Christopher', 'Oze', 'GEO', 'O112'),
('P1045', 'Lambert', 'Fike', 'GEO', 'O113'),
('P1046', 'Wallache', 'McNeely', 'GEO', 'O114'),
('P1047', 'Barth', 'Meagher', 'GEO', 'O115'),
('P1005', 'Damian', 'Stocking', 'GERM', 'O400'),
('P1048', 'Reta', 'Towndrow', 'GERM', 'O401'),
('P1049', 'Enrique', 'Vankov', 'GERM', 'O402'),
('P1012', 'Marla', 'Stone', 'HIST', 'O311'),
('P1050', 'Stace', 'Aizlewood', 'HIST', 'O312'),
('P1051', 'Adda', 'Kinghorne', 'HIST', 'O313'),
('P1052', 'Shannan', 'Reddyhoff', 'HIST', 'O314'),
('P1053', 'Ruthann', 'Harvett', 'HIST', 'O315'),
('P1013', 'Michael', 'Shelton', 'LING', 'O403'),
('P1055', 'Tiler', 'Tacey', 'LING', 'O404'),
('P1056', 'Graeme', 'Walthall', 'LING', 'O405'),
('P1057', 'Dre', 'Rushe', 'LING', 'O406'),
('P1058', 'Fleur', 'Orrin', 'LING', 'O407'),
('P1014', 'Allison', 'de Fren', 'MAC', 'O408'),
('P1059', 'Jarib', 'Macguire', 'MAC', 'O409'),
('P1060', 'Finlay', 'Germon', 'MAC', 'O410'),
('P1061', 'Heidi', 'MacPherson', 'MAC', 'O411'),
('P1062', 'Haskel', 'Glasman', 'MAC', 'O412'),
('P1015', 'Jim', 'Brown', 'MATH', 'O210'),
('P1020', 'Alan', 'Knoerr', 'MATH', 'O211'),
('P1021', 'Paul', 'David', 'MATH', 'O212'),
('P1063', 'Avrom', 'Salzburger', 'MATH', 'O213'),
('P1064', 'Tedmund', 'Nickols', 'MATH', 'O214'),
('P1065', 'Ashli', 'Lemon', 'MATH', 'O215'), 
('P1016', 'Clair', 'Morrisey', 'PHIL', 'O413'),
('P1019', 'Tatum', 'Bartosiak', 'PHIL', 'O414'),
('P1066', 'Kimbra', 'Tuerena', 'PHIL', 'O415'),
('P1067', 'Hedy', 'Knock', 'PHIL', 'O500'),
('P1068', 'Arlena', 'Lackemann', 'PHIL', 'O501'),
('P1017', 'Andrew', 'Shtulman', 'PSYC', 'O502'),
('P1069', 'Zared', 'McEvay', 'PSYC', 'O503'),
('P1070', 'Devin', 'Bursnoll', 'PSYC', 'O504'),
('P1071', 'Drake', 'Bell', 'PSYC', 'O505'),
('P1072', 'Josh', 'Peck', 'PSYC', 'O506');

INSERT INTO `Student`
VALUES
('S1001', 'Cathrine', 'Doerr', 'P1003', 'COMP', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1002', 'Enrique', 'Izaac', 'P1022', 'BIO', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1003', 'Chandler', 'Woolfitt', 'P1019', 'PHIL', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1004', 'Shae', 'Bolle', 'P1003', 'COMP', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1005', 'Meade', 'McDarmid', 'P1036', 'COGS', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1006', 'Fredric', 'Sherebrooke', 'P1026', 'BLST', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1007', 'Taffy', 'Orhtmann', 'P1046', 'GEO', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1008', 'Bale', 'Claypoole', 'P1023', 'BIO', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1009', 'Kelsey', 'Hartwell', 'P1050', 'HIST', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1010', 'Dacia', 'Soot', 'P1018', 'COMP', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1011', 'Torie', 'Pickrill', 'P1059', 'MAC', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1012', 'Tracy', 'Ellcock', 'P1036', 'COGS', 'NULL', 'NULL', 'NULL', 'NULL'),
('S1013', 'Edee', 'Saur', 'P1016', 'PHIL', 'NULL', 'NULL', 'NULL', 'NULL');

INSERT INTO `Course`
VALUES
('COMP131','Intro to Computer Science', 'COMP', 4, 'P1003', 'MWF 11:00-11:45', 'F100', 24, 'Computer science is about the organization of information and the design of processes that use it. This course teaches students to think computationally, how to break processes down into components that can be then fully described, and to acquire other habits necessary for a computer scientist.'),
('COMP131-2','Intro to Computer Science', 'COMP', 4, 'P1004', 'MWF 9:45-10:30', 'F101', 22, 'Computer science is about the organization of information and the design of processes that use it. This course teaches students to think computationally, how to break processes down into components that can be then fully described, and to acquire other habits necessary for a computer scientist.'),
('COMP229','Data Structures', 'COMP', 4, 'P1018', 'MWF 11:00-11:45', 'F103', 26, 'We begin with topics found in advanced programming. In particular, topics from Object Oriented programming and how this differs from Procedural Programming. We then move on to the study of dynamic data structures, such as Linked Lists, Stacks, Queues, Trees, Heaps, Graphs, Hash tables, Sets and more.'),
('COMP239','Computer Organization', 'COMP', 4, 'P1021', 'MWF 11:00-11:45', 'F106', 29, 'This course covers the basics of how a computer works, focusing especially on the hardware-software interface. Students will learn about the limitations of the physical computer, and that it may not be possible to ignore the lower-level hardware when designing efficient software. Students will learn to implement programs in Assembly language and C/C++.'),
('COMP325','Topics in AI', 'COMP', 4, 'P1018', 'TR 8:30-10:00', 'F109', 30, 'This course covers select topics in artificial intelligence, including: reinforcement learning, Bayesian networks, and cognitive architectures.'),
('PHIL101','Intro to Philosophy', 'PHIL', 4, 'P1016', 'MWF 9:45-10:30', 'C100', 21, 'This course introduces students to the central philosophical skills of critical thinking, careful reading, and analytical writing. Students will engage with a range of both historical and contemporary philosophical texts, from multiple regions and time periods, and with a range of philosophical questions that reflect the four content areas that structure our curriculum.'),
('PHIL231','Environmental and Animal Ethics', 'PHIL', 4, 'P1067', 'TR 10:30-12:00', 'C103', 24, 'This course will examine the ethical dimensions of our relationship to non-human animals and the environment, including a special emphasis on climate justice as the site of interconnected and global moral, political, and scientific concerns. Some of the questions we will address include: What is the relation between the environment and human health and well-being?');

ALTER TABLE `Major`
ADD FOREIGN KEY (`Dep_char`) REFERENCES `Professor`(`Professor_id`);

ALTER TABLE `Student`
ADD FOREIGN KEY(`Advisor`) REFERENCES `Professor`(`Professor_id`),
ADD FOREIGN KEY(`Major`) REFERENCES `Major`(`Dep_id`);

ALTER TABLE `Professor`
ADD FOREIGN KEY(`Dept_in`) REFERENCES `Major`(`Dep_id`),
ADD FOREIGN KEY(`Office_location`) REFERENCES `Location`(`Location_code`);

ALTER TABLE `Course`
ADD FOREIGN KEY(`Dept_id`) REFERENCES `Major`(`Dep_id`),
ADD FOREIGN KEY(`Professor`) REFERENCES `Professor`(`Professor_id`),
ADD FOREIGN KEY(`Course_location`) REFERENCES `Location`(`Location_code`);



