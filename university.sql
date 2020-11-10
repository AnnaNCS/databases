DROP DATABASE IF EXISTS `university`;
CREATE DATABASE `university`;
USE `university`;

CREATE TABLE `Location`(
`Location_code` VARCHAR(50),
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
`Section` INT,
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
('M101'), ('M103'),('M106'),('M109'),('P100'),('P103'),
('O100'), ('O101'),('O102'),('O103'),('O104'),('O105'),('O106'),('O107'),('O108'),('O109'),('O110'),('O111'),('O112'),('O113'),('O114'),('O115'),
('O200'),('O201'),('O202'),('O203'),('O204'),('O205'),('O206'),('O207'),('O208'),('O209'),('O210'),('O211'),('O212'),('O213'),('O214'),('O215'),
('O300'),('O301'),('O302'),('O303'),('O304'),('O305'),('O306'),('O307'),('O308'),('O309'),('O310'),('O311'),('O312'),('O313'),('O314'),('O315'),
('O400'),('O401'),('O402'),('O403'),('O404'),('O405'),('O406'),('O407'),('O408'),('O409'),('O410'),('O411'),('O412'),('O413'),('O414'),('O415'),
('O500'),('O501'),('O502'),('O503'),('O504');

SELECT * FROM Location;

INSERT INTO Major
values
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
('P1070', 'Devin', 'Bursnoll', 'PSYC', 'O504');

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
('COMP131', 1, 'Intro to Computer Science', 'COMP', 4, 'P1003', 'MWF 11:00-11:45', 'M100', 24, 'Computer science is about the organization of information and the design of processes that use it. This course teaches students to think computationally, how to break processes down into components that can be then fully described, and to acquire other habits necessary for a computer scientist.'),
('COMP131-2', 2, 'Intro to Computer Science', 'COMP', 4, 'P1004', 'MWF 9:45-10:30', 'M101', 22, 'Computer science is about the organization of information and the design of processes that use it. This course teaches students to think computationally, how to break processes down into components that can be then fully described, and to acquire other habits necessary for a computer scientist.'),
('COMP229', 1, 'Data Structures', 'COMP', 4, 'P1018', 'MWF 11:00-11:45', 'M103', 26, 'We begin with topics found in advanced programming. In particular, topics from Object Oriented programming and how this differs from Procedural Programming. We then move on to the study of dynamic data structures, such as Linked Lists, Stacks, Queues, Trees, Heaps, Graphs, Hash tables, Sets and more.'),
('COMP239', 1, 'Computer Organization', 'COMP', 4, 'P1021', 'MWF 11:00-11:45', 'M106', 29, 'This course covers the basics of how a computer works, focusing especially on the hardware-software interface. Students will learn about the limitations of the physical computer, and that it may not be possible to ignore the lower-level hardware when designing efficient software. Students will learn to implement programs in Assembly language and C/C++.'),
('COMP325', 1, 'Topics in AI', 'COMP', 4, 'P1018', 'TR 8:30-10:00', 'M109', 30, 'This course covers select topics in artificial intelligence, including: reinforcement learning, Bayesian networks, and cognitive architectures.'),
('PHIL101', 1, 'Intro to Philosophy', 'PHIL', 4, 'P1016', 'MWF 9:45-10:30', 'P100', 21, 'This course introduces students to the central philosophical skills of critical thinking, careful reading, and analytical writing. Students will engage with a range of both historical and contemporary philosophical texts, from multiple regions and time periods, and with a range of philosophical questions that reflect the four content areas that structure our curriculum.'),
('PHIL231', 1, 'Environmental and Animal Ethics', 'PHIL', 4, 'P1067', 'TR 10:30-12:00', 'P103', 24, 'This course will examine the ethical dimensions of our relationship to non-human animals and the environment, including a special emphasis on climate justice as the site of interconnected and global moral, political, and scientific concerns. Some of the questions we will address include: What is the relation between the environment and human health and well-being?');

ALTER TABLE `Major`
ADD FOREIGN KEY (`Dep_char`) REFERENCES `Professor`(`Professor_id`);

ALTER TABLE `Student`
ADD FOREIGN KEY(`Advisor`) REFERENCES `Professor`(`Professor_id`),
ADD FOREIGN KEY(`Major`) REFERENCES `Major`(`Dep_id`);

ALTER TABLE `Professor`
ADD FOREIGN KEY(`Dept_in`) REFERENCES `Major`(`Dep_id`),
ADD FOREIGN KEY(`Office_location`) REFERENCES `Location`(`Location_code`);
Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`university`.`#sql-71_9`, CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`Office_location`) REFERENCES `location` (`Location_code`))


ALTER TABLE `Course`
ADD FOREIGN KEY(`Dept_id`) REFERENCES `Major`(`Dep_id`),
ADD FOREIGN KEY(`Professor`) REFERENCES `Professor`(`Professor_id`),
ADD FOREIGN KEY(`Course_location`) REFERENCES `Location`(`Location_code`);



