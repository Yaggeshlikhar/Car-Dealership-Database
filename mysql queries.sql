Use lamborghini;

Insert  Into customer Values (101, 'Yaggesh Likhar', '123@234.com', '4325336573', 'M');
Insert  Into customer Values (102, 'Pratik Parija', '321@234.com', '4325336456', 'M');
Insert  Into customer Values (103, 'Dhruv Sharma', '654@234.com', '7845337894', 'M');
Insert  Into customer Values (104, 'Pooja Aloney', '7854@234.com', '4325987557', 'F');
Insert  Into customer Values (105, 'Kruti Lakhani', '9632@234.com', '3692336573', 'F');
Insert  Into customer Values (106, 'Mayank Gangrade', '7471@234.com', '3696497573', 'M');
Insert  Into customer Values (107, 'Shreyansh Singh', '3698@234.com', '1236497573', 'M');
Insert  Into customer Values (108, 'Raveesh Avashia', '5656@234.com', '5656497573', 'M');
Insert  Into customer Values (109, 'Urvi Shah', '8888@234.com', '3699963573', 'F');


Insert Into address values(1001,'9858 Redwing','Chone','Boston','USA','456213',101);
Insert Into address values(1002,'3210 Darwin Street','Dallas','Texas','USA','987654',102);
Insert Into address values(1003,'314 Luis Park','Newton','Florida','USA','987654',103);
Insert Into address values(1004,'7 Grover way','Chicago','Hawaii','USA','987456',104);
Insert Into address values(1005,'532 Pond Place','Seattle','Virginia','USA','987456',105);
Insert Into address values(1006,'75 St Alphonsus','Boston','Mass','USA','02120',106);
Insert Into address values(1007,'18 Peterboro','Seattle','Virginia','USA','987456',107);
Insert Into address values(1008,'78 Hemenway','Arlington','Texas','USA','965456',108);
Insert Into address values(1009,'188 Chain Street','New York city','New York','USA','231546',109);



Insert Into Dealers Values (01, ' 531 Boston Post Rd', 'Lamborghini Boston', 'City', '1234567');
Insert Into Dealers Values (02, '115 S Service Rd', 'Lamborghini Long Island', 'Jericho', '5162033000');
Insert Into Dealers Values (03, '401 NJ-17', 'Lamborghini Paramus', 'New Jersey', '2012678850');
Insert Into Dealers Values (04, '100 NJ-73', 'Lamborghini Palmyra', 'Palmyra', '8775529718');
Insert Into Dealers Values (05, '1310 W Wendover Ave', 'Lamborghini Carolinas', 'Greensboro', '8884452626');



Insert Into car_features values(110,'Automatic','550','Y');
Insert Into car_features values(111,'Mannual','600','N');
Insert Into car_features values(112,'Mannual','750','Y');
Insert Into car_features values(113,'Automatic','800','N');
Insert Into car_features values(114,'Mannual','650','Y');

insert into car_models values(501,'Aventador','Supercar',5,399500,01);
insert into car_models values(501,'Aventador','Supercar',2,399500,02);
insert into car_models values(501,'Aventador','Supercar',2,399500,04);
insert into car_models values(502,'Huracan','Supercar',2,456789,01);
insert into car_models values(502,'Huracan','Supercar',2,456789,05);
insert into car_models values(502,'Huracan','Supercar',2,456789,03);
insert into car_models values(503,'Centenario','Supercar',2,499000,01);
insert into car_models values(503,'Centenario','Supercar',2,499000,03);
insert into car_models values(504,'Urus','Suv',5,399500,01);
insert into car_models values(504,'Urus','Suv',2,399500,03);
insert into car_models values(504,'Urus','Suv',2,399500,05);
insert into car_models values(504,'Urus','Suv',2,399500,04);


insert into cars_sold values(91,399000,'2010-10-10',0,109,501,01);
insert into cars_sold values(92,456000,'2010-10-10',5000,105,501,05);
insert into cars_sold values(93,399000,'2010-10-10',6000,105,503,02);
insert into cars_sold values(94,399000,'2010-10-10',5500,103,501,04);
insert into cars_sold values(95,385000,'2009-11-15',5000,109,501,01);
insert into cars_sold values(96,395000,'2012-11-03',0,109,504,03);
insert into cars_sold values(97,455000,'2009-11-15',5000,109,502,02);
insert into cars_sold values(98,385000,'2013-10-15',0,101,501,01);
insert into cars_sold values(99,485000,'2009-11-15',5000,109,503,03);
insert into cars_sold values(100,375000,'2016-04-23',5250,102,501,04);
insert into cars_sold values(101,499000,'2007-02-28',0,104,501,01);
insert into cars_sold values(102,385000,'2009-11-15',5000,106,504,05);
insert into cars_sold values(103,480000,'2006-01-16',0,108,502,03);
insert into cars_sold values(105,450000,'2007-10-10',0,107,503,04);


Insert Into insurance_policies Values (900, '2017-08-09', '2018-07-09', 100000, 91);
Insert Into insurance_policies Values (901, '2016-08-09', '2019-07-09', 150000, 92);
Insert Into insurance_policies Values (902, '2015-08-09', '2017-07-09', 200000, 93);
Insert Into insurance_policies Values (903, '2017-09-18', '2020-09-15', 180000, 94);
Insert Into insurance_policies Values (904, '2016-10-15', '2018-10-15', 100500, 95);
Insert Into insurance_policies Values (905, '2013-04-23', '2017-04-23', 120000, 96);
Insert Into insurance_policies Values (906, '2016-06-04', '2018-06-04', 100000, 97);
Insert Into insurance_policies Values (908, '2017-08-09', '2019-07-09', 100000, 98);
Insert Into insurance_policies Values (909, '2017-10-09', '2018-07-09', 50000, 99);
Insert Into insurance_policies Values (910, '2015-09-09', '2017-09-09', 250000, 100);
Insert Into insurance_policies Values (911, '2016-08-09', '2018-07-09', 200000, 101);
Insert Into insurance_policies Values (912, '2015-06-19', '2017-06-20', 100000, 102);
Insert Into insurance_policies Values (913, '2016-03-12', '2018-03-12', 80000, 103);

Insert Into events values(201,'Product Launch','Mandarin Oriental','2015-12-25');
Insert Into events values(202,'Customer Meetup','The Ritz-Carlton Central Park','2014-12-25');
Insert Into events values(203,'Christmas Ride','Montage Beverly Hills','2013-12-25');
Insert Into events values(204,'Product Launch','The Peninsula','2012-12-25');
Insert Into events values(205,'Anniversary Party','Park Hyatt','2011-12-25');


Insert into features_on_cars_for_sale values(110,501,100001);
Insert into features_on_cars_for_sale values(111,502,100002);
Insert into features_on_cars_for_sale values(110,504,100003);
Insert into features_on_cars_for_sale values(112,503,100004);
Insert into features_on_cars_for_sale values(113,502,100005);
Insert into features_on_cars_for_sale values(114,504,100006);
Insert into features_on_cars_for_sale values(113,503,100007);
Insert into features_on_cars_for_sale values(112,501,100008);
Insert into features_on_cars_for_sale values(111,502,100009);

Insert into customer_prefrence values (101,110,51);
Insert into customer_prefrence values (102,114,52);
Insert into customer_prefrence values (103,112,53);
Insert into customer_prefrence values (104,113,54);
Insert into customer_prefrence values (105,111,55);
Insert into customer_prefrence values (106,110,56);
Insert into customer_prefrence values (107,114,57);
Insert into customer_prefrence values (108,112,58);
Insert into customer_prefrence values (109,113,59);

Insert into events_has_customer values (201,101);
Insert into events_has_customer values (201,102);
Insert into events_has_customer values (201,104);
Insert into events_has_customer values (201,108);
Insert into events_has_customer values (201,109);
Insert into events_has_customer values (201,103);
Insert into events_has_customer values (202,101);
Insert into events_has_customer values (202,103);
Insert into events_has_customer values (202,105);
Insert into events_has_customer values (202,109);
Insert into events_has_customer values (202,107);
Insert into events_has_customer values (203,101);
Insert into events_has_customer values (203,102);
Insert into events_has_customer values (203,108);
Insert into events_has_customer values (203,104);
Insert into events_has_customer values (204,101);
Insert into events_has_customer values (204,103);
Insert into events_has_customer values (204,107);
Insert into events_has_customer values (204,109);
Insert into events_has_customer values (205,102);
Insert into events_has_customer values (205,104);
Insert into events_has_customer values (205,106);
Insert into events_has_customer values (205,108);
Insert into events_has_customer values (205,103);

Insert into customer_payment values (151,'Cash','2017-10-15','2017-11-15',385000,101);
Insert into customer_payment values (152,'Cheque','2016-11-15','2016-12-15',375000,102);
Insert into customer_payment values (153,'Car loan','2017-10-15','2017-11-15',399000,103);
Insert into customer_payment values (154,'Cash','2017-5-17','2017-7-20',499000,104);
Insert into customer_payment values (155,'Car loan','2017-8-8','2017-8-8',456000,105);
Insert into customer_payment values (156,'Cheque','2016-4-4','2016-5-15',385000,101);
Insert into customer_payment values (157,'Car Loan','2016-8-10','2017-11-15',385000,106);
Insert into customer_payment values (158,'Cash','2017-10-15','2017-11-15',480000,107);
Insert into customer_payment values (159,'Car loan','2017-10-15','2018-11-15',480000,108);
Insert into customer_payment values (160,'Cash','2016-10-15','2016-11-15',455000,109);

Insert into car_loan values (1111,'2015-10-10','2025-10-10',103);
Insert into car_loan values (1112,'2013-08-01','2023-08-01',105);







