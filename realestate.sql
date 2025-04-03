use sqlproject;

create database SqlProject;
use sqlproject;

-- crate owners table ---
create table owners(owner_id int primary key,owner_name varchar(40) not null,owner_number varchar(20) not null,
owner_email varchar(40),owner_address varchar(100));
alter table owners modify column owner_address varchar(200);
truncate table owners;

-- crate buyer table -----
create table buyer(buyer_id int primary key,buyer_name varchar(40) not null,buyer_number varchar(20) not null,
buyer_email varchar(40),buyer_address varchar(100));
alter table buyer modify column buyer_address varchar(200);
truncate table buyer;

-- create agent table ----
create table agent(agent_id int primary key,agnet_name varchar(40) not null,agent_number varchar(20) not null,
agent_email varchar(40));
truncate table agent;

-- crate property table ---
create table property(property_id  int auto_increment primary key,owner_id int, 
constraint fk_owner_id foreign key(owner_id) references owners(owner_id) on delete set null,
agent_id int ,
constraint fk_agent_id foreign key(agent_id) references agent(agent_id) on delete set null,
property_address varchar(200) not null,property_price decimal(10,2) not null,property_size decimal(10,2),
property_type varchar(50) not null,property_status varchar(20) not null);
drop table property;


-- create appoinment table ------
create table appoinment(appoinment_id int auto_increment primary key,owner_id int, 
constraint fk_owner_appo_id foreign key(owner_id) references owners(owner_id) on delete set null,
agent_id int ,
constraint fk_agent_appo_id foreign key(agent_id) references agent(agent_id) on delete set null,
buyer_id int,
constraint fk_buyer_appo_id foreign key(buyer_id) references buyer(buyer_id) on delete restrict,
property_id int,
constraint fk_property_appo_id foreign key(property_id) references property(property_id) on delete cascade,
appoinment_date date ,status varchar(50) not null);
drop table appoinment;

-- create transaction table ----
create table transactions(trans_id int auto_increment primary key,
property_id int,
constraint fk_property_trans_id foreign key(property_id) references property(property_id) on delete cascade,
owner_id int, 
constraint fk_owner_trans_id foreign key(owner_id) references owners(owner_id) on delete set  null,
agent_id int ,
constraint fk_agent_trans_id foreign key(agent_id) references agent(agent_id) on delete set null,
buyer_id int,
constraint fk_buyer_trans_id foreign key(buyer_id) references buyer(buyer_id) on delete set null,
amount decimal(10,2) not null,date_time datetime not null);
alter table transactions add column mode_of_payment varchar(20);
drop table transactions;


-- insert owner values ----
INSERT INTO owners (owner_id, owner_name, owner_number, owner_email, owner_address) VALUES (1, 'Allen Cabrera', '+1-739-357-5936', 'nicholascooper@marquez.com', '066 Cassandra Mall
Dixonshire, OK 48038'),(2, 'Michael Webb', '+1-528-313-5962x648', 'monique70@gmail.com', '6580 Kellie Falls Apt. 117
South Mark, NE 05970'),(3, 'Donna Thomas', '882.739.5537', 'devoncook@rice-johnson.com', '202 Carlos Park Apt. 054
Millsbury, IA 99655'),(4, 'Amanda Miller', '689-909-7693x4257', 'brownkarla@hotmail.com', '09014 Campbell Trafficway
Tammyfurt, ND 35172'),(5, 'Denise Lopez', '001-234-870-8092x19091', 'billygomez@gmail.com', '3994 Kimberly Path
Dunlapburgh, AL 40266'),(6, 'Caleb Lee', '798-432-1452x790', 'ambermckinney@yahoo.com', '0817 Brandy River
Port Gabrielhaven, TN 23157'),(7, 'Tammy Davis', '078.504.3354', 'osmith@gmail.com', '903 Ruiz Camp Suite 763
Jaredview, IA 21243'),(8, 'Kenneth Vance', '001-720-262-1942x221', 'audreyrangel@brewer.com', '6312 Elizabeth Light Apt. 092
West Larry, DC 10108'),(9, 'Holly Baker', '6011234140', 'ayoung@howard.biz', '5061 Vasquez Drives
Lake Miranda, HI 55605'),(10, 'Breanna Kelly', '(346)535-8120x2755', 'keith72@yahoo.com', 'USNV Parker
FPO AA 28804'), (11, 'Michael Roberts', '8969075155', 'bryantjonathan@hotmail.com', '09198 Christopher Shores
Dorothystad, OK 61395'),(12, 'Pamela Rivas', '(332)985-4803x318', 'alexstephens@gmail.com', '03561 Jessica Green
Allisonville, VT 30290'),(13, 'Carolyn Powell', '(714)909-9600x4049', 'wbishop@yahoo.com', '0647 Michael Roads Suite 715
Katherineshire, NC 76779'),(14, 'Kathryn Holloway', '3933591443', 'janice50@gmail.com', '2644 Nelson Groves Apt. 054
Jonestown, GA 30089'),(15, 'Stanley Joseph', '(287)220-7727x92584', 'washingtonvictoria@norris.com', '2702 Jonathan Road Suite 734
Michaelhaven, MD 75833'),(16, 'Rachael Reilly', '7361788600', 'lee86@watts-martinez.com', 'Unit 0119 Box 3221
DPO AP 16983'),(17, 'Wendy Peters', '+1-527-011-2271', 'paulmurray@hotmail.com', '0587 Robertson Street Apt. 527
North Coreybury, MA 90979'),(18, 'Jeremy Tucker', '6163936451', 'mwilson@yahoo.com', '967 Michael Rue Apt. 295
Kimberlyton, KS 27661'), (19, 'Mary Houston', '(953)901-0244x1595', 'mglover@yahoo.com', '86326 Serrano Mews Suite 400
Lake Tammymouth, MS 04631'), (20, 'Robert Bonilla', '001-542-782-4426x031', 'jessica25@yahoo.com', '2485 Foley Spurs Suite 285
North Matthew, NV 01298'),(21, 'Rachel Glover', '614-976-7580', 'qsmith@allen.com', 'USCGC Atkinson
FPO AA 80590'),(22, 'Maria Schneider', '503-040-3464', 'jesse00@gmail.com', '40630 Matthew Garden
Port Pamela, PA 78847'), (23, 'Jordan Williams', '001-761-688-2255x39360', 'jennifer37@hotmail.com', '67263 Kristin Street
Munozview, TN 58765'),(24, 'Joshua Ramirez', '(639)318-4027', 'wwarren@yahoo.com', '3533 Victoria Port Apt. 017
Forbeschester, IL 92242'),(25, 'Faith Jones', '(406)039-9189x778', 'denise77@yahoo.com', '662 Tony Locks
North Juliebury, WV 93562'),(26, 'Haley Villegas', '(492)511-2591', 'kevinharris@gmail.com', '9676 Victoria Hollow
Kingport, FL 59555'), (27, 'Michelle Edwards', '791.027.5183', 'scottlopez@frank-kemp.com', '1131 Tara Orchard Suite 834
Port Lindashire, VT 09183'),(28, 'Karen Price', '070.433.9691x1566', 'briannahurley@hotmail.com', '487 Watson Forks
Lake Josephhaven, UT 82161'),(29, 'Lindsay Whitehead', '+1-898-125-6478x7417', 'dylan18@cox.com', '4178 Guzman Tunnel Suite 073
Port Angelatown, AK 93053'),(30, 'Thomas Scott', '001-569-304-9992x2846', 'opeck@king.com', '68108 Brenda Mews
Amychester, DC 02447');

-- insert buyer values ----
INSERT INTO buyer (buyer_id, buyer_name, buyer_number, buyer_email, buyer_address) VALUES (1, 'Cathy Jimenez', '+1-026-704-5917', 'bryantmary@yahoo.com', '546 Beltran Ports Apt. 085
Annhaven, MS 85600'),(2, 'Andrew Duke', '5860473053', 'florescindy@rasmussen.org', '705 Sergio Dam
West Sara, FL 56644'),(3, 'Rachel Spencer', '001-705-535-1702x875', 'domingueztina@yahoo.com', '8186 Kevin Oval Apt. 246
South Maria, VA 68562'),(4, 'Jodi Silva', '327.659.5423x5850', 'jason48@schaefer-garcia.biz', '66738 Frye Extensions Apt. 046
Michaelburgh, MO 65662'), (5, 'Adam White', '+1-208-949-6219x799', 'eric45@yahoo.com', '0682 Calvin Squares Apt. 976
Lake Marybury, OK 81031'), (6, 'Alicia Carrillo', '072-709-8849', 'andrea25@anthony.biz', '069 Larson Throughway Apt. 081
Martinbury, OR 82600'), (7, 'Andrew Norris', '912.608.5223', 'pmiller@gmail.com', '07546 Joanne Island
New Amandastad, FL 55812'),(8, 'Melissa Aguilar', '674.569.9049x55133', 'gray@gmail.com', '945 Wilson Crest
Andreabury, CO 72301'),(9, 'Maria Morton', '+1-848-779-4264x94831', 'qmathis@yahoo.com', '7129 Rachel Landing Apt. 247
Shawmouth, FL 51267'), (10, 'Alexis Howard', '407.920.9233x579', 'jeremy08@pena.com', '74700 Caroline Trail Apt. 713
Catherineland, HI 97504'),(11, 'Holly Hunt', '824.525.0355', 'donnasloan@jimenez.net', '537 Ashley Mount
Johnsonhaven, ID 01794'), (12, 'Kimberly Cochran', '974-330-5131', 'johnking@thompson-pierce.biz', 'USNS Silva
FPO AE 39571'),(13, 'Christine Rodriguez', '(932)197-3793', 'rwalsh@jones.net', 'USNS Oconnell
FPO AP 17158'),(14, 'Linda Burch', '001-351-526-4740', 'rsullivan@yahoo.com', '69137 Janet Ports Apt. 425
West Sandrafurt, TX 01103'),(15, 'Kelly Gray', '722.784.1078x9623', 'gutierrezmax@collier.biz', '22949 Lynch Lights Apt. 014
Thomasbury, CT 17819'),(16, 'Cassandra Dixon', '665.589.6141x42515', 'ismith@yahoo.com', '04621 Carter Motorway
Velasquezburgh, DC 22623'),(17, 'Kyle Smith', '(530)681-4270x7977', 'normanamy@yahoo.com', '46856 Wang Grove
Pennyview, MS 85754'),(18, 'Samantha Gibson', '757-179-9994x50138', 'andrea60@ross-ray.com', '28745 Braun Ports Suite 908
Leeburgh, OR 89869'),(19, 'Elizabeth Willis', '321.512.6290', 'cummingsjason@yahoo.com', '2718 Martinez Rapids
West Morganland, SC 68885'),(20, 'Cheryl Young', '970.866.5523x506', 'susanpage@gmail.com', '27880 Smith Place Apt. 672
North Seanhaven, WI 93539'),(21, 'Destiny Ryan', '787-535-2030', 'stevenolson@spencer.org', '13966 David Terrace Apt. 346
West Patriciaport, SD 46234'), (22, 'Debbie Garza', '+1-240-734-7465x77819', 'umartin@hotmail.com', '4094 Bell Squares
Johnsonborough, OH 34306'),(23, 'Jason Payne', '+1-802-931-9694x085', 'smithcrystal@lowery.info', '022 Brian Route
South Bryan, IA 76008'), (24, 'Natasha Palmer', '164.690.2142x01663', 'phylliswang@flowers.com', '7003 James Center
Bethfort, AK 90702'), (25, 'Mary Herrera', '+1-874-246-3081x1208', 'andersonalan@best.org', '1939 Christine Row
New Evanfurt, VA 41682'), (26, 'Michelle Harris', '576.019.5968x22133', 'christopherperez@gmail.com', '96524 Andrew Falls Apt. 071
North Suzanneberg, ME 83117'), (27, 'Alisha Harrison', '324-591-5885', 'justinblanchard@berg.biz', '526 Mccormick Ranch Apt. 370
East Christophermouth, NC 98660'),(28, 'Xavier Rich', '840.644.7904', 'sanchezphillip@hotmail.com', '6415 Bradley Ports
New Laurie, WA 41257'), (29, 'Michael Gamble', '+1-576-897-1946x5881', 'calvinbarber@cooper-black.com', '4028 Goodwin Mountains
Danielston, PA 70542'), (30, 'Christopher Fernandez', '4233929058', 'dawnsmith@gmail.com', 'Unit 0422 Box 8226
DPO AP 10695');

-- insert agent values ----
insert into agent(agent_id,agnet_name,agent_number,agent_email)values
(1,"William Alvarado",-4932,"kellywanda@bradley.com"),
(2,"Kelly Fitzgerald","753429085",	"bobby33@turner-burton.info"),
(3,"Terry George","(892)284-9832x10207"	,"robin65@erickson.net"),
(4,"Dennis Fry","4692847677","anthonyrusso@yahoo.com"),
(5,"Angela Jones","660-893-6014x56394","yateskeith@gonzales-jackson.com"),
(6,"Raymond Carpenter","001-949-343-5194x53716","arroyoashley@yahoo.com"),
(7,"Amy Carter","+1-346-892-7111x422","pattersonlinda@gmail.com"),
(8,"Vickie Singh","018-848-4566x640","dlynch@yahoo.com"),
(9,"David Turner",'+1-087-975-8931x0661','gardnertracy@jones-valdez.com'),
(10,'Kim Bradley','716.899.9387x096','pbolton@gmail.com'),
(11,'Emily Mcmahon','163-239-8791x94051','petersonrobin@hotmail.com'),
(12,'Diana Bond','9836627112','uarcher@gmail.com'),
(13,'Matthew Bailey','001-008-675-4315x5356','lspencer@gmail.com'),
(14,'Elizabeth Johnson','397-403-0963x585','brian43@hotmail.com'),
(15,'Sarah Hubbard','(894)313-8176x48266','christopherroy@hall-walton.com'),
(16,'Katelyn Berry','001-469-543-3809x46201','littlekurt@jones.net'),
(17,'Sandra Bradley','+1-009-441-2035x5740','melissa17@gmail.com'),
(18,'Michael Baldwin','251-322-7391','wcummings@robinson-green.com'),
(19,'Daniel Porter','001-400-167-0911x8432','jeffrey10@gmail.com'),
(20,'Renee Clark','226-510-4826x0529','nberger@johnson.com'),
(21,'Susan Garcia','+1-048-640-3595x9465','kimberlywyatt@green.biz'),
(22,'John Chan','(439)880-4556x0121','julie43@yahoo.com'),
(23,'Cheryl Moses','919.260.8161x081','webersherry@thompson.com'),
(24,'Bradley Reynolds','+1-943-852-8376x9817','kathleen17@dawson-mueller.org'),
(25,'Tracy Robinson','359-638-6152x24111','amandasmith@gmail.com'),
(26,'Robert Cox','857.000.4322x88255','jenniferpaul@mann-patterson.org'),
(27,'Whitney Cunningham','483-466-8119','heathergonzales@wiggins.com'),
(28,'Christopher Holden','148.393.3476x807','dharvey@thomas-sheppard.com'),
(29,'William Mcpherson','027.137.6324x36654','krystalpadilla@potts.com'),
(30,'Matthew Lopez','(828)574-0867x173','iclark@silva.net');

-- insert proerty values -------
INSERT INTO property (property_id, owner_id, agent_id, property_address, property_price, property_size, property_type, property_status) VALUES (1, 17, 4, '944 Rodriguez Pines Suite 782
Port Stephanieport, WY 96146', 408049.13, 2917.1, 'Villa', 'Sold'),(2, 4, 27, '33926 Carlson Plaza Suite 384
Douglasmouth, NC 40429', 444274.54, 3314.45, 'Villa', 'Pending'),(3, 20, 17, '81612 Kim Bridge Apt. 489
East Lorimouth, NM 18254', 153646.03, 2612.96, 'Apartment', 'Pending'),(4, 14, 4, '6266 Jesus Landing Suite 315
Michellebury, IN 13946', 295037.52, 4753.17, 'Land', 'Pending'),(5, 26, 24, '5837 William Cove
Whitefurt, TX 48449', 310428.79, 4985.5, 'Land', 'Pending'),(6, 24, 27, '471 Lauren Flats
Davidland, NJ 05490', 273351.81, 3889.72, 'Land', 'Pending'), (7, 28, 19, 'Unit 0534 Box 1362
DPO AA 66550', 141917.76, 3880.42, 'Apartment', 'Available'), (8, 18, 29, '35579 Allison Valley Apt. 637
Lake Christopher, WV 93760', 298669.9, 4846.07, 'Apartment', 'Available'), (9, 18, 4, '9001 Dalton Road
South Angelamouth, AL 30366', 494126.77, 2371.76, 'Villa', 'Sold'),(10, 22, 4, '59113 Welch Run
Smithside, AL 59618', 483175.16, 2457.24, 'Land', 'Available'), (11, 21, 26, 'USNV Walter
FPO AE 20193', 199585.06, 3370.76, 'Apartment', 'Available'), (12, 28, 5, '899 Erica Green
Kathleenmouth, OR 60045', 213471.38, 4536.98, 'Apartment', 'Sold'),(13, 16, 22, '377 Bailey Plaza
Port Josephchester, AK 10314', 329848.28, 2451.33, 'Land', 'Available'), (14, 21, 17, '694 Payne Ville
North Brentfort, MT 03309', 78002.62, 2881.11, 'House', 'Sold'), (15, 30, 21, '89906 Hines Place Suite 157
Antoniomouth, MA 63312', 254419.44, 2005.65, 'House', 'Sold'), (16, 6, 17, '1982 David Springs
Manningfurt, VA 90115', 71906.76, 4337.08, 'Apartment', 'Pending'), (17, 9, 14, '29639 Barbara Corners Apt. 228
Walkermouth, MD 56200', 421523.27, 860.55, 'Apartment', 'Sold'),(18, 7, 9, '37257 Carter Burg
South Theresa, AL 15394', 178938.62, 2849.77, 'Land', 'Sold'), (19, 23, 10, '497 Gilbert Village Suite 631
Jeffreyfort, CO 12932', 427370.03, 4135.69, 'Land', 'Sold'), (20, 5, 12, '68722 White Light
Charlesburgh, NC 34882', 75448.42, 1902.25, 'Villa', 'Pending'),(21, 19, 29, '47903 Hunt Crescent Apt. 254
Amberside, CT 44283', 322983.05, 1739.96, 'House', 'Pending'), (22, 20, 17, '9138 Bruce Stravenue
Johnsonfurt, NH 70242', 164406.09, 3589.37, 'Land', 'Sold'),(23, 21, 5, '007 Dominguez Isle
Melanieview, HI 49359', 318079.46, 3479.96, 'Land', 'Pending'),(24, 6, 14, '424 Cooper Haven Apt. 585
North Josephshire, WV 52595', 302360.14, 1720.83, 'Land', 'Sold'), (25, 18, 1, '5726 Zachary Drive
Brandiside, TX 84000', 143995.05, 1810.84, 'Apartment', 'Pending'),(26, 27, 24, '82661 Johnson Forge Suite 314
Singletonborough, SD 05140', 240691.59, 943.91, 'Apartment', 'Available'),(27, 27, 5, '72992 Chandler Centers Suite 163
Port Aaronburgh, AZ 18300', 182215.02, 4340.22, 'Villa', 'Sold'), (28, 26, 14, '24161 Braun Bypass Suite 277
Port Carl, AR 50569', 364848.19, 3278.81, 'Apartment', 'Pending'),(29, 17, 21, '4476 Campbell Locks
Lozanomouth, AK 64544', 184245.41, 3311.51, 'Villa', 'Available'), (30, 16, 16, '7311 Tyler Keys Apt. 824
West Danashire, FL 34669', 57784.64, 3469.53, 'House', 'Available');

-- insert appoinmet values --------
INSERT INTO appoinment (appoinment_id, owner_id, agent_id, buyer_id, property_id, appoinment_date, status) VALUES 
(1, 11, 29, 4, 15, '2021-07-25', 'Cancelled'),(2, 22, 15, 17, 7, '2020-10-01', 'Completed'),
 (3, 14, 8, 29, 30, '2023-03-02', 'Completed'),(4, 12, 6, 2, 24, '2022-11-10', 'Scheduled'),
 (5, 14, 14, 27, 18, '2020-02-13', 'Scheduled'),(6, 19, 11, 28, 16, '2024-04-16', 'Scheduled'),
 (7, 1, 4, 4, 16, '2024-02-20', 'Cancelled'),(8, 27, 15, 26, 15, '2023-02-18', 'Scheduled'),
 (9, 2, 30, 24, 28, '2020-03-20', 'Completed'),(10, 24, 20, 9, 6, '2021-08-18', 'Completed'),
 (11, 28, 21, 5, 22, '2023-12-01', 'Completed'),(12, 5, 14, 28, 18, '2024-09-09', 'Completed'),
 (13, 13, 16, 13, 11, '2023-01-18', 'Completed'),(14, 23, 27, 29, 15, '2022-05-23', 'Cancelled'),
 (15, 21, 26, 13, 5, '2021-10-08', 'Cancelled'),(16, 27, 27, 3, 13, '2020-10-07', 'Scheduled'),
 (17, 26, 23, 29, 15, '2024-05-28', 'Scheduled'),(18, 29, 1, 3, 18, '2024-02-14', 'Completed'),
 (19, 9, 10, 30, 16, '2020-10-06', 'Completed'), (20, 21, 15, 25, 17, '2025-03-30', 'Scheduled'),
 (21, 4, 24, 6, 6, '2025-01-09', 'Cancelled'),(22, 21, 3, 3, 11, '2020-10-21', 'Cancelled'),
 (23, 19, 15, 3, 3, '2023-10-22', 'Scheduled'), (24, 19, 13, 21, 27, '2024-02-24', 'Completed'),
 (25, 2, 12, 27, 24, '2024-09-25', 'Cancelled'),(26, 8, 4, 25, 10, '2021-01-26', 'Cancelled'),
 (27, 13, 30, 16, 26, '2024-11-14', 'Cancelled'),(28, 10, 18, 12, 27, '2021-01-17', 'Completed'),
 (29, 5, 5, 19, 20, '2022-10-15', 'Scheduled'),(30, 11, 1, 6, 1, '2024-07-01', 'Cancelled');
 
 -- insert transaction values -----
 insert into transactions(trans_id,property_id,owner_id,agent_id,buyer_id,amount,date_time,mode_of_payment)values
(1,6,27,26,29,265083.94,'2022-11-10','Bank Transfer'),
(2,15,12,8,24,269187.51,'2023-03-10','Bank Transfer'),
(3,15,16,30,15,335645.24,'2022-07-27','Cash'),
(4,29,24,12,18,492165.39,'2021-04-23','Bank Transfer'),
(5,5,19,10,4,321309.64,'2023-03-12','Credit'),
(6,28,29,29,17,208515.3,'2022-07-04','Bank Transfer'),
(7,23,10,8,14,231914.78,'2023-05-24','Cash'),
(8,23,9,22,18,326894.86,'2021-09-28','Bank Transfer'),
(9,27,17,2,2,186283.14,'2021-05-11','Credit'),
(10,10,17,8,13,133374.49,'2023-09-30','Bank Transfer'),
(11,1,14,18,17,462831.35,'2021-05-11','Cash'),
(12,22,23,19,8,363169.4,'2022-04-24','Cash'),
(13,21,2,28,7,135388.6,'2022-11-06','Bank Transfer'),
(14,16,22,30,15,344040.56,'2022-01-02','Cash'),
(15,14,9,27,17,456410.46,'2022-07-10','Cash'),
(16,18,7,1,20,378510.08,'2024-01-21','Cash'),
(17,2,24,24,23,232084.62,'2023-02-07','Cash'),
(18,3,25,19,13,465332.93,'2023-03-15','Credit'),
(19,18,11,17,2,202285.86,'2024-10-19','Bank Transfer'),
(20,23,24,17,4,444155.93,'2021-07-15','Credit'),
(21,26,22,27,7,400018.08,'2020-10-13','Bank Transfer'),
(22,12,3,29,13,210020.41,'2024-01-02','Bank Transfer'),
(23,1,23,25,21,220727.14,'2024-04-13','Bank Transfer'),
(24,8,16,3,8,420557.37,'2022-02-18','Credit'),
(25,29,22,4,15,297781.55,'2023-01-04','Cash'),
(26,23,18,11,23,160940.11,'2021-07-15','Bank Transfer'),
(27,19,27,11,17,224296.21,'2024-11-21','Bank Transfer'),
(28,3,6,6,6,185515.61,'2022-11-07','Credit'),
(29,17,21,25,7,233339.39,'2022-10-21','Credit'),
(30,25,16,29,13,317640.62,'2023-06-02','Bank Transfer');

// Stored procedures 

-- To find all properties handled by specific agtn --------
delimiter //
create procedure agent_handling_properties(in id int)
begin 
select * from property where agent_id=id;
end //
delimiter ;
call agent_handling_properties(4);

-- number of propertied available for sales----
delimiter //
create procedure property_available_ForSale()
begin
select * from property where property_status='available';
end //
delimiter ;
call property_available_ForSale();

-- total amount of transaction handled by each agent ---
delimiter //
create procedure transaction_handled_by_agent()
begin 
SELECT a.agent_id, a.agent_name, SUM(t.amount) AS total_sales
FROM transactions t
JOIN Agent a ON t.agent_id = a.agent_id
GROUP BY a.agent_id, a.agent_name;
end //
delimiter ;
call  transaction_handled_by_agent();

-- adding new property ---
delimiter //
create procedure add_property(own_id int,agnt_id int,address varchar(200),
price decimal(10,2),size decimal(10,2),prop_type varchar(50),prop_status varchar(20))
begin
insert into property(owner_id , agent_id,property_address,property_price, property_size ,property_type ,property_status) 
values(own_id,agnt_id,address,price,size,prop_type,prop_status);
select * from property order by property_id desc limit 1;
end //
delimiter ;
call add_property(2,4,'chennai',400000.4,2345.76,'vila','available');

--  total revenue generated by property sales in a given year --
delimiter //
create procedure total_revenue(datee year)
begin 
select property_id,sum(amount) from transactions where year(date_time)=datee group by property_id;
end //
delimiter ;
call total_revenue(2024);

--  expensive property ----
delimiter //
create procedure expensive_price()
begin 
select p.Property_id,p.owner_id,p.agent_id,property_address,property_price,buyer_id,amount
 from property as p join transactions as t 
 on p.Property_id=t.Property_id
 order by amount desc limit 1;
end //
delimiter ;
call expensive_price();

-- property sold above estimated amount -----
delimiter //
create procedure property_soldAbove_estimated_amount()
begin 
select p.property_id,property_price,trans_id,amount from property as p 
join transactions as t on p.property_id=t.property_id
where amount>property_price ;
end //
delimiter ;
call property_soldAbove_estimated_amount();

-- calculate agent commision ----
delimiter //
create procedure agent_commission(in id int)
begin 
select p.property_id,p.owner_id,amount,p.agent_id,(amount*0.10) as commission from property as p join transactions as t
on p.property_id=t.property_id
where p.property_id=id;
end//
delimiter ;
call agent_commission(6);

-- list properties with range of amount -- 
delimiter //
create procedure range_of_amount(in mini int,in maxi int)
begin 
select * from property where property_price between  mini and maxi;
end //
delimiter ;
call range_of_amount(100000,300000);

-- total property owned by owner ----
delimiter //
create procedure total_property_of_owner(in id int,out a int)
begin 
select count(property_id) into a from property where owner_id=id;
end //
delimiter ;
call total_property_of_owner(27,@totalProperty);
select  @totalProperty;

-- total earing of owner --
delimiter //
create procedure total_earning_owner(in id int)
begin 
select sum(amount) as Total_Amount ,owner_id from transactions where owner_id=id group by owner_id;
end //
delimiter ;
call total_earning_owner(2); 


