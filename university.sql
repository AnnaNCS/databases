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
('S1001', 'Cathrine', 'Doerr', 'P1003', 'COMP', 'COMP131', 'COMP229', 'PHIL101', 'PHIL231'),
('S1002', 'Enrique', 'Izaac', 'P1022', 'BIO', 'BIO103-2', 'BIO105', 'COMP131-2', 'BIO224'),
('S1003', 'Chandler', 'Woolfitt', 'P1019', 'PHIL', 'PHIL101', 'PHIL231', '', 'MAC110'),
('S1004', 'Shae', 'Bolle', 'P1003', 'COMP', 'COMP131-2', 'COMP239', 'COMP229', 'MAC146'),
('S1005', 'Meade', 'McDarmid', 'P1036', 'COGS', 'COGS201-2', 'COGS230', 'COGS265', 'COGS242-2'),
('S1006', 'Fredric', 'Sherebrooke', 'P1026', 'BLST', 'BLST105', 'BLST101', 'BLST11', 'BLST215'),
('S1007', 'Taffy', 'Orhtmann', 'P1046', 'GEO', 'GEO105', 'GEO106', 'BIO103', 'GEO245'),
('S1008', 'Bale', 'Claypoole', 'P1023', 'BIO', 'BIO105-2', 'BIO115', 'BIO224', 'COMP239'),
('S1009', 'Kelsey', 'Hartwell', 'P1050', 'HIST', 'HIST101', 'HIST274', 'HIST205', 'HIST192'),
('S1010', 'Dacia', 'Soot', 'P1018', 'COMP', 'COMP131', 'COMP239', 'COMP229', 'BIO105'),
('S1011', 'Torie', 'Pickrill', 'P1059', 'MAC', 'MAC110', 'MAC146', 'MAC250', 'MAC270'),
('S1012', 'Tracy', 'Ellcock', 'P1036', 'COGS', 'COGS201-2', 'COGS230-2', 'COGS265', 'COGS242-2'),
('S1013', 'Edee', 'Saur', 'P1016', 'PHIL', 'PHIL101', 'PHIL231', 'BIO224', 'COMP131-2');

INSERT INTO `Course`
VALUES
('COMP131','Intro to Computer Science', 'COMP', 4, 'P1003', 'MWF 11:00-11:45', 'F100', 24, 'Computer science is about the organization of information and the design of processes that use it. This course teaches students to think computationally, how to break processes down into components that can be then fully described, and to acquire other habits necessary for a computer scientist.'),
('COMP131-2','Intro to Computer Science', 'COMP', 4, 'P1004', 'MWF 9:45-10:30', 'F101', 22, 'Computer science is about the organization of information and the design of processes that use it. This course teaches students to think computationally, how to break processes down into components that can be then fully described, and to acquire other habits necessary for a computer scientist.'),
('COMP229','Data Structures', 'COMP', 4, 'P1018', 'MWF 11:00-11:45', 'F103', 26, 'We begin with topics found in advanced programming. In particular, topics from Object Oriented programming and how this differs from Procedural Programming. We then move on to the study of dynamic data structures, such as Linked Lists, Stacks, Queues, Trees, Heaps, Graphs, Hash tables, Sets and more.'),
('COMP239','Computer Organization', 'COMP', 4, 'P1021', 'MWF 11:00-11:45', 'F106', 29, 'This course covers the basics of how a computer works, focusing especially on the hardware-software interface. Students will learn about the limitations of the physical computer, and that it may not be possible to ignore the lower-level hardware when designing efficient software. Students will learn to implement programs in Assembly language and C/C++.'),
('COMP325','Topics in AI', 'COMP', 4, 'P1018', 'TR 8:30-10:00', 'F109', 30, 'This course covers select topics in artificial intelligence, including: reinforcement learning, Bayesian networks, and cognitive architectures.'),
('PHIL101','Intro to Philosophy', 'PHIL', 4, 'P1016', 'MWF 9:45-10:30', 'C100', 21, 'This course introduces students to the central philosophical skills of critical thinking, careful reading, and analytical writing. Students will engage with a range of both historical and contemporary philosophical texts, from multiple regions and time periods, and with a range of philosophical questions that reflect the four content areas that structure our curriculum.'),
('PHIL231','Environmental and Animal Ethics', 'PHIL', 4, 'P1067', 'TR 10:30-12:00', 'C103', 24, 'This course will examine the ethical dimensions of our relationship to non-human animals and the environment, including a special emphasis on climate justice as the site of interconnected and global moral, political, and scientific concerns. Some of the questions we will address include: What is the relation between the environment and human health and well-being?');
('BIO103','Topics in Biology','BIO',4,'P1022','TR 8:30-10:00','HSC100',24,'Topics vary. Not applicable to the Biology major. Not open to students who have previously taken more than one 100-level Biology course.'),
('BIO103-2','Topics in Biology','BIO',4,'P1024','MWF 8:30-9:15','HSC101',23,'Topics vary. Not applicable to the Biology major. Not open to students who have previously taken more than one 100-level Biology course.'),
('BIO105','Marine Biology','BIO',4,'P1025','TR 8:30-10:00','HSC102',25,'This course will be an introductory survey of marine organisms and their environment. It will cover fishes, invertebrates, mammals, reptiles and algae. Included will be an investigation of behavior, ecology, adaptations, and environmental relationships to humans.'),
('BIO105-2','Marine Biology','BIO',4,'P1022','MWF 9:45-10:30','HSC103',29,'This course will be an introductory survey of marine organisms and their environment. It will cover fishes, invertebrates, mammals, reptiles and algae. Included will be an investigation of behavior, ecology, adaptations, and environmental relationships to humans.'),
('BIO115','General Zoology','BIO',4,'P1023','TR 10:30-12:00','HSC104',21,'An introduction to the diversity, comparative anatomy, and physiology of animals. Emphasis is placed on the classification of animals, how animals are adapted to the environment, and the evolutionary relationships between the phyla.'),
('BIO115-2','General Zoology','BIO',4,'P1006','MWF 11:00-11:45','HSC105',20,'An introduction to the diversity, comparative anatomy, and physiology of animals. Emphasis is placed on the classification of animals, how animals are adapted to the environment, and the evolutionary relationships between the phyla.'),
('BIO224','Genetic Analysis','BIO',4,'P1023','MWF 8:30-9:15','HSC106',20,'Intensive, concept-driven exploration of genetic information transfer between generations. Topics include Mendelian principles, allelic and genetic interactions at the phenotypic level, complex traits, genetic mapping, DNA repair and genome maintenance, epigenetics, and principles of gene regulation.'),
('BIO224-2','Genetic Analysis','BIO',4,'P1024','MWF 12:00-12:45','HSC107',23,'Intensive, concept-driven exploration of genetic information transfer between generations. Topics include Mendelian principles, allelic and genetic interactions at the phenotypic level, complex traits, genetic mapping, DNA repair and genome maintenance, epigenetics, and principles of gene regulation.'),
('GEO105','Earth Our Environment','GEO',4,'P1002','MWF 1:30-2:15','HSC200',27,'Introduction to Geology with emphasis on the physical processes that shape the environment on the Earths surface. The course will cover the fundamentals of plate tectonics, rocks, minerals, geologic time, surface processes, and Earths interior. Special attention will be paid to geologic hazards (such as earthquakes, volcanoes, floods, and landslides'),
('GEO105-2','Earth Our Environment','GEO',4,'P1045','TR 8:30-10:00','HSC201',29,'Introduction to Geology with emphasis on the physical processes that shape the environment on the Earths surface. The course will cover the fundamentals of plate tectonics, rocks, minerals, geologic time, surface processes, and Earths interior. Special attention will be paid to geologic hazards (such as earthquakes, volcanoes, floods, and landslides'),
('GEO106','Earth and the Human Future','GEO',4,'P1047','MWF 9:30-10:15','HSC202',25,'Nature and humanity interact with and impact one another in complex and significant ways. Human health, safety, and economic well-being is significantly impacted by natural processes, providing both opportunities and constraints on sustainability. This course focuses on these interactions as studied by earth scientists.'),
('GEO106-2','Earth and the Human Future','GEO',4,'P1045','MWF 1:30-2:15','HSC203',30,'Nature and humanity interact with and impact one another in complex and significant ways. Human health, safety, and economic well-being is significantly impacted by natural processes, providing both opportunities and constraints on sustainability. This course focuses on these interactions as studied by earth scientists.'),
('GEO245','Earths Climate Past and Future','GEO',4,'P1046','MWF 1:30-2:15','HSC204',30,	'An introduction to Earths climate system and the geological record of its change.'),
('GEO342','Geomorphology','GEO',4,'P1002','TR 8:30-10:00','HSC206',29,'Landforms and their interpretation in terms of tectonic and climatic processes will be presented.'),
('GEP342-2','Geomorphology','GEO',4,'P1045','TR 10:30-12:00','HSC207',25,'Landforms and their interpretation in terms of tectonic and climatic processes will be presented.'),
('GEO395','Directed Research','GEO',4,'P1047','MWF 1:30-2:15','HSC208',30,'Research under guidance of faculty member on jointly selected project. May be taken four times for credit.'),
('MAC110','Introduction to Digital Design','MAC',4,'P1014','MWF 7:00-7:45','LIB100',28,'This course focuses on the fundamental processes and tools involved in digital design for the media arts: color, resolution, image manipulation, compositing, typography, vector graphics, web/app design principles, project workflow, and output/finishing formats.'),
('MAC143','Introduction to Visual and Critical Studies','MAC',4,'P1060','TR 8:30-10:00','LIB101',26,'This 100 level gateway course introduces students to key concepts and methodologies for the critical analysis and interpretation of a broad range of media forms across the visual field - including film, television, social media, photography, games, advertising, etc. - and the cultural, historical, and ideological forces that govern them.'),
('MAC146','Aesthetics of the Cinema','MAC',4,'P1060','MWF 9:30-10:15','LIB102',29,'This 100 level gateway course breaks down the aesthetic components of film and examines each elements function in the production of meaning in a text. The course underscores the fact that cinemas aesthetic language is not solely generated by Hollywood.'),
('MAC210','Introduction to Motion Design','MAC',4,'P1061','TR 12:30-2:00','LIB103',28,'Motion graphics and motion design are becoming increasingly vital creative and technical capacities for digital media production. This course focuses on the fundamental concepts, processes, and tools involved in motion design for the media arts.'),
('MAC210-2','Introduction to Motion Design','MAC',4,'P1061','TR 2:30-4:00','LIB104',27,'Motion graphics and motion design are becoming increasingly vital creative and technical capacities for digital media production. This course focuses on the fundamental concepts, processes, and tools involved in motion design for the media arts.'),
('MAC241','Politics and poetics of Documentary','MAC',4,'P1061','MWF 8:00-8:45','LIB105',26,'In a digital moment where both the democratizing and totalitarian possibilities of media are unprecedented, the need to analyze and understand both the politics and poetics the distinct audiovisual rhetorical strategies of documentary media has never been more vital.'),
('MAC242','Projects in Documentary Media','MAC',4,'P1059','MWF 10:00-10:45','LIB106',30,'In our dynamic digital moment, the question, What is a documentary? can be answered with ever-increasing complexity. Works professing truth claims about our historical and present realities are just as much constructs as any fiction film, a realization that presents both creative opportunities and ethical responsibilities for documentary practitioners.'),
('MAC244','Cultures of Protest','MAC',4,'P1059','MWF 1:30-2:15','LIB107',28,'The English word protest? to declare publicly - derives from a Latin verb meaning to testify, give witness. In this course we will explore a variety of films from different geopolitical regions and of different genres and different historical contexts that might be interpreted as speaking to all kinds of modalities of protest: protests against nationalisms, against ethnic cleansings, against xenophobia, racism, and homophobia, against national violence and against gender purity.'),
('MAC250','Media Activism through Video','MAC',4,'P1062','MWF 2:30-3:15','LIB108',29,'This is a combined theory and practice course that will engage students in looking critically at what participation means when working with members of a community. In participatory video, who holds the camera often determines who holds the power.'),
('MAC270','Worldbuilding Design','MAC',4,'P1061','MWF 7:00-7:45','LIB109',29,'This course explores emerging methods of narrative design in relationship to worldbuilding. Worldbuilding refers to designing a complex integrated system with many moving parts such as characters, settings, myths, rules, artifacts ? often a whole system of a society and culture.'),
('BLST105','Topics in American Music','BLST',4,'P1007','MWF 10:00-10:45','LIB108',28,'This course surveys music of African Americans with an emphasis on 20th century classical and vernacular genres. We will examine this musical web in three units: Classical Jazz & Blues and Rock & Contemporary Vernaculars.'),
('BLST105-2','Topics in American Music','BLST',4,'P1026','TR 2:30-4:00','LIB108',29,'This course surveys music of African Americans with an emphasis on 20th century classical and vernacular genres. We will examine this musical web in three units: Classical Jazz & Blues and Rock & Contemporary Vernaculars.'),
('BLST207','African American History','BLST',4,'P1026','MWF 3:30-4:15','LIB108',30,'This course introduces students to major issues in African American history from the earliest experiences of forced African migrants to North America to the black quest for freedom in the twentieth century United States.'),
('BLST215','Educating African America','BLST',4,'P1026','MWF 4:30-5:15','LIB109',30,'This course critically examines the history of the education of Africans in the United States, beginning at the Middle Passage, through Reconstruction and the post-bellum South, to contemporary post-industrial urban contexts.'),
('BLST215-2','Educating African America','BLST',4,'P1027','MWF 10:00-10:45','LIB110',30,'This course critically examines the history of the education of Africans in the United States, beginning at the Middle Passage, through Reconstruction and the post-bellum South, to contemporary post-industrial urban contexts.'),
('BLST376','Slavery Freedom and American History','BLST',4,'P1027','TR 2:30-4:00','LIB107',29,'This interdisciplinary seminar will explore the contentious history of the public memory and representation of slavery, the Old South, and emancipation in the United States. Drawing upon a range of sources - including fiction, film, advertisements, tourist sites, and public monuments - we will examine the various ways that Americans have sought to commemorate, critique, and capitalize on the history of the nations peculiar institution from the late-nineteenth century to the present day.'),
('BLST377','Afrofuturism','BLST',4,'P1027','TR 8:30-10:00','LIB107',28,'This course interrogates the intellectual and artistic dimensions of the Afrofuturism movement. From the present day, going at least as far back as Phillis Wheatleys poetry, one finds a robust exploration of black cultures relationship to technology and futurity that diverges from Eurocentric standards of civilizational progress.'),
('BLST377-2','Afrofuturism','BLST',4,'P1028','TR 6:30-8:00','LIB106',27,'This course interrogates the intellectual and artistic dimensions of the Afrofuturism movement. From the present day, going at least as far back as Phillis Wheatleys poetry, one finds a robust exploration of black cultures relationship to technology and futurity that diverges from Eurocentric standards of civilizational progress.'),
('BLST101','Introduction to Black Studies','BLST',4,'P1007','TR 8:30-10:00','LIB106',28,'This course introduces students to the history and methods of the discipline known as Black Studies. Readings will focus on the origins and institutionalization of Black Studies as a field of academic inquiry. Students will learn about the philosophical and political debates that laid the intellectual foundation for Black Studies and examine the social movements that resulted in the field of Black Studies in the present.'),
('BLST101-2','Introduction to Black Studies','BLST',4,'P1007','TR 10:30-12:00','LIB110',29,'This course introduces students to the history and methods of the discipline known as Black Studies. Readings will focus on the origins and institutionalization of Black Studies as a field of academic inquiry. Students will learn about the philosophical and political debates that laid the intellectual foundation for Black Studies and examine the social movements that resulted in the field of Black Studies in the present.'),
('BLST111','Topics in Jazz History','BLST',4,'P1030','MWF 7:00-7:45','LIB110',29,'This course will survey the evolution of jazz from its roots to the present. We will analyze the influence of peoples of various cultures on repertoire, jazz techniques, and styles. Special attention will be paid to some of the more important and influential performers.'),
('HIST101','United States Culture and Society','HIST',4,'P1012','TR 8:30-10:00','J200',28,'This course is an introduction to early North American/United States history reaching from colonization to the Civil War. Of particular interest in this course will be the theme of cross-cultural interactions in the midst of transforming economies, an expanding nation, and unequal power relations.'),
('HIST274-2','Medicine and Disease in Western Society','HIST',4,'P1053','MWF 2:30-3:15','J200',30,'A study of three aspects of the history of medicine: theory and practice from ancient times to the present great doctors and healers, both male and female, examined in their social contexts the effects of epidemics, such as the Black Death, on the course of Western civilization.'),
('HIST192','Gender','HIST',4,'P1051','TR 6:30-8:00','J201',30,'The course explores gender as a malleable category of historical analysis that intersects fluidly with other categories such as race, class, and sexuality. Course materials interweave global historical studies from the 16th to the 20th centuries.'),
('HIST205','Urban History','HIST',4,'P1053','MWF 7:00-7:45','J201',29,'We will explore not only suburbia and freeways, Disneyland and other quasi-urban outposts, but also the changing character of the inner city in the mid-twentieth century, as well as radical efforts to reform existing American cities. In the process, we encounter the American city of today  multicentered, privately planned, decentralized, and multiethnic. We will conclude by asking whether contemporary developments in urbanism.'),
('HIST205-2','Urban History','HIST',4,'P1050','MWF 4:30-5:15','J202',28,'We will explore not only suburbia and freeways, Disneyland and other quasi-urban outposts, but also the changing character of the inner city in the mid-twentieth century, as well as radical efforts to reform existing American cities. In the process, we encounter the American city of today  multicentered, privately planned, decentralized, and multiethnic. We will conclude by asking whether contemporary developments in urbanism.'),
('COGS201-2','Empirical Methods in Cognitive Science','COGS',4,'P1039','MWF 8:00-8:45','B106',23,'This course provides students with a foundation to think critically about research in Cognitive Science and lays the groundwork for the original research that will be done in the senior year. We will examine primary literature, carefully considering the processes involved in moving from a general idea to a specific research question.'),
('COGS230','Mind Brain and Behavior','COGS',4,'P1038','TR 8:30-10:00','B107',24,'This course addresses the question: how can we understand the mind scientifically? We will explore answers to this question via a critical survey of neural and behavioral evidence bearing on the nature of core cognitive capacities, including perception, memory, emotion, decision-making, rationality, and consciousness.'),
('COGS230-2','Mind Brain and Behavior','COGS',4,'P1038','TR 6:30-8:00','B108',30,'This course addresses the question: how can we understand the mind scientifically? We will explore answers to this question via a critical survey of neural and behavioral evidence bearing on the nature of core cognitive capacities, including perception, memory, emotion, decision-making, rationality, and consciousness.'),
('COGS242-2','Computational Approaches to Cognition','COGS',4,'P1037','MWF 1:30-2:15','B100',28,'Computational modeling provides important insights into how the mind/brain may work. We will examine three different approaches that have been used to provide insights into cognition: symbolic methods, connectionism, and probabilistic methods.'),
('COGS265','Art Creativity and Cognition','COGS',4,'P1037','MWF 2:30-3:15','B101',20,'Art  be it visual, music, dance, or literature  is an extraordinarily powerful practice, driving many of our behaviors and engaging us physically, emotionally, and cognitively. This seminar will explore the various creative arts through the perspective of psychology, neuroscience, and philosophy.');

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



