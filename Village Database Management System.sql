create table villages(
 village_id varchar2(10) primary key,
 village_name varchar2(20) not null
);

insert into villages values('V1','shalgaon');

create table sub_village (
  sub_village_id varchar2(5) primary key,
  sub_village_name varchar2(20) not null,
  len_id varchar2(5),
  village_id varchar2(10),
  constraints s1 foreign key(village_id) references 
  villages(village_id) on delete cascade
);

insert into sub_village values('Nc','Narsignah_chowk','L1','V1');
insert into sub_village values('Jn','Jotiba_nagar','L2','V1');
insert into sub_village values('Jw','Jadhav_wada','L3','V1');
insert into sub_village values('Sw','Shinde_wada','L4','V1');
insert into sub_village values('Gm','Ghodake_mala','L5','V1');
insert into sub_village values('Nm','Nangare_mala','L6','V1');
insert into sub_village values('Zm','Zanzan_malavi','L7','V1');
insert into sub_village values('Hs','High_school','L8','V1');
insert into sub_village values('Bk','Barukhol','L9','V1');
insert into sub_village values('Db','Doba','L10','V1');
insert into sub_village values('Mw','Malwadi','L11','V1');
insert into sub_village values('Sv','Sutar_vasti','L12','V1');
insert into sub_village values('Sp','Satpata','L13','V1');
insert into sub_village values('Rm','Rudraapa_mala','L14','V1');
insert into sub_village values('Nv','Nalawade_vasti','L15','V1');
insert into sub_village values('Lth','Lakshman_tatya_hill','L16','V1');
insert into sub_village values('Maw','Mahar_wada','L17','V1');
insert into sub_village values('Kw','Kumbhar_wada','L18','V1');
insert into sub_village values('Bp','Bajar_peth','L19','V1');

create table peoples (
  people_id varchar2(10) primary key,
  first_name varchar2(50) ,
  last_name varchar2(50) ,
  phone_number number(10) ,
  married_status varchar2(10),
  age number(3) ,
  Gender varchar2(10) , 
  Background varchar2(50),
  DOB date ,
  ration_card varchar2(50),
  caste varchar2(50) ,
  home_id varchar2(10) ,
  sub_village_id varchar2(5),
  village_id varchar2(10),
  constraints p1 foreign key( sub_village_id) references
  sub_village( sub_village_id) on delete cascade,
  constraints p2 foreign key(village_id) references 
  villages(village_id) on delete cascade
);


insert into peoples values('P1','omkar','karande',9022102613,'no',21,
'male','student','28-apr-2001','orange','hindu_maratha','H1','Jn','V1');
insert into peoples values('P2','santosh','karande',9850824105,'yes',47,
'male','farmer','18-01-1975','orange','hindu_maratha','H1','Jn','V1');
insert into peoples values('P3','vaishali','karande',8668877869,'yes',42,
'female','house_wife','27-03-1980','orange','hindu_maratha','H1','Jn','V1');
insert into peoples values('P4','sanket','bhosale',9730972568,'no',20,
'male','student','12-04-2005','orange','hindu_maratha','H2','Jn','V1');
insert into peoples values('P5','mahendra','karande',100,'yes',49,
'male','farmer','28-04-1972','orange','hindu_maratha','H3','Jn','V1');
insert into peoples values('P6','shubham','karande',101,'no',21,
'male','student','28-04-2002','orange','hindu_maratha','H4','Nc','V1');
insert into peoples values('P7','digya','karande',102,'yes',26,
'male','job','28-04-1994','orange','hindu_maratha','H5','Nc','V1');
insert into peoples values('P8','manoj','karande',103,'no',23,
'male','student','28-04-1998','orange','hindu_maratha','H6','Nc','V1');
insert into peoples values('P9','avi','mohite',104,'no',21,
'male','student','12-06-2001','orange','hindu_chabhar','H7','Jw','V1');
insert into peoples values('P10','devendra','chavan',105,'no',21,
'male','student','08-09-2000','yellow','NT','H8','Rm','V1');
insert into peoples values('P11','prajwal','karande',106,'no',21,
'male','job','03-06-2001','orange','hindu_maratha','H9','Jw','V1');
insert into peoples values('P12','kartik','shinde',107,'no',24,
'male','job','18-11-2000','orange','hindu_maratha','H10','Sw','V1');
insert into peoples values('P13','anjali','karande',108,'no',20,
'female','student','21-01-2001','orange','hindu_maratha','H11','Gm','V1');
insert into peoples values('P14','karan','yadav',109,'no',21,
'male','job','01-12-2001','yellow','hindu_maratha','H12','Nm','V1');
insert into peoples values('P15','arjun','yadav',110,'yes',22,
'male','job','13-03-2000','yellow','hindu_maratha','H12','Nm','V1');
insert into peoples values('P16','mK','aaba',111,'yes',50,
'male','farmer','28-04-1970','orange','hindu_maratha','H13','Zm','V1');
insert into peoples values('P17','suresh','buva',112,'yes',40,
'male','farmer','07-04-1980','orange','hindu_maratha','H14','Hs','V1');
insert into peoples values('P18','omkar','mulik',113,'no',21,
'male','job','17-04-2000','orange','hindu_maratha','H15','Bk','V1');
insert into peoples values('P19','amit','mulik',114,'no',27,
'male','student','28-04-1995','white','hindu_maratha','H16','Bk','V1');
insert into peoples values('P20','rushi','mulik',115,'no',21,
'male','job','30-11-2000','orange','hindu_maratha','H17','Db','V1');
insert into peoples values('P21','abhishek','pawar',116,'no',22,
'male','student','29-05-2000','yellow','SC','H17','Mw','V1');
insert into peoples values('P22','saket','jadhav',117,'no',15,
'male','student','28-04-2008','orange','hindu_maratha','H18','Mw','V1');
insert into peoples values('P23','vaibhav','sutar',118,'yes',28,
'male','farmer','02-04-1994','orange','hindu_maratha','H19','Sv','V1');
insert into peoples values('P24','satish','mulik',119,'no',21,
'male','job','28-04-2003','orange','hindu_maratha','H20','Sp','V1');
insert into peoples values('P25','rushikesh','mulik',120,'no',21,
'male','student','04-04-2000','yellow','hindu_maratha','H21','Rm','V1');
insert into peoples values('P26','ramesh','nalawade',121,'yes',35,
'male','job','17-08-1989','white','hindu_maratha','H22','Nv','V1');
insert into peoples values('P27','gurudatta','pawar',122,'no',24,
'male','job','08-12-1999','orange','hindu_maratha','H23','Lth','V1');
insert into peoples values('P28','adarsh','kavale',123,'no',22,
'male','student','23-05-2001','orange','hindu_maratha','H24','Maw','V1');
insert into peoples values('P29','omkar','kumbhar',124,'yes',26,
'male','job','09-03-1994','orange','hindu_maratha','H25','Kw','V1');
insert into peoples values('P30','pinki','jadhav',125,'no',22,
'female','student','09-05-1999','orange','hindu_maratha','H26','Rm','V1');
insert into peoples values('P31','tejas','patil',126,'yes',24,
'male','student','19-03-1997','yellow','hindu_maratha','H26','Zm','V1');
insert into peoples values('P32','rutuja','jadhav',126,'no',20,
'female','student','27-12-2000','orange','hindu_maratha','H27','Jw','V1');
insert into peoples values('P33','vijay','chavan',127,'no',23,
'male','student','29-03-1998','orange','hindu_maratha','H28','Sw','V1');
insert into peoples values('P34','deepraj','deshmukh',128,'yes',24,
'male','student','09-07-1997','orange','hindu_maratha','H29','Mw','V1');
insert into peoples values('P35','guddi','karande',129,'no',22,
'female','student','12-04-2000','orange','hindu_maratha','H30','Jn','V1');
insert into peoples values('P36','pappu','bhosale',130,'no',23,
'male','student','15-01-1996','orange','hindu_maratha','H31','Gm','V1');
insert into peoples values('P37','nitin','mulik',131,'no',19,
'male','student','03-08-2002','orange','hindu_maratha','H32','Lth','V1');
insert into peoples values('P38','kajal','mane',132,'no',25,
'female','student','24-04-1996','orange','hindu_maratha','H33','Sp','V1');
insert into peoples values('P39','deep','patil',133,'yes',26,
'male','job','23-12-2001','white','hindu_maratha','H34','Jn','V1');
insert into peoples values('P40','vijaya','chavan',134,'yes',27,
'male','job','19-10-1996','orange','hindu_maratha','H35','Gm','V1');
insert into peoples values('P41','vrushali','nanekar',134,'no',20,
'female','job','17-05-2003','orange','hindu_maratha','H36','Mw','V1');
insert into peoples values('P42','komal','bhingarkar',135,'no',20,
'female','job','14-05-2003','orange','hindu_maratha','H37','Sp','V1');
insert into peoples values('P43','gauri','more',136,'yes',21,
'female','job','12-09-2002','orange','hindu_maratha','H38','Mw','V1');
insert into peoples values('P44','rajashree','ware',137,'yes',24,
'female','job','22-06-1999','orange','hindu_maratha','H39','Rm','V1');
insert into peoples values('P45','om','karande',138,'no',22,
'male','job','28-04-2001','orange','hindu_maratha','H40','Sp','V1');
insert into peoples values('P46','tej','kondhalkar',139,'yes',25,
'male','job','23-01-2001','orange','hindu_maratha','H41','Nv','V1');
insert into peoples values('P47','ganesh','unde',140,'yes',23,
'male','job','23-05-1999','orange','hindu_maratha','H42','Hs','V1');
insert into peoples values('P48','kajal','madam',141,'no',20,
'female','job','24-04-2003','orange','hindu_maratha','H43','Jn','V1');
insert into peoples values('P49','bhaiya','tivari',142,'yes',34,
'male','job','01-03-1987','orange','hindu_maratha','H44','Maw','V1');
insert into peoples values('P50','akshay','ware',143,'yes',29,
'male','job','04-03-1993','orange','hindu_maratha','H45','Rm','V1');
insert into peoples values('P51','prasad','mulik',144,'yes',29,
'male','job','04-03-1993','orange','hindu_maratha','H45','Bp','V1');


create table locations(
location_id varchar2(100) primary key,
sub_village_id varchar2(50) unique,
constraints lo1 foreign key( sub_village_id) references
sub_village( sub_village_id)on delete cascade
);


insert into locations values('L1','Nc');
insert into locations values('L2','Jn');
insert into locations values('L3','Jw');
insert into locations values('L4','Sw');
insert into locations values('L5','Gm');
insert into locations values('L6','Nm');
insert into locations values('L7','Zm');
insert into locations values('L8','Hs');
insert into locations values('L9','Bk');
insert into locations values('L10','Db');
insert into locations values('L11','Mw');
insert into locations values('L12','Sv');
insert into locations values('L13','Sp');
insert into locations values('L14','Rm');
insert into locations values('L15','Nv');
insert into locations values('L16','Lth');
insert into locations values('L17','Maw');
insert into locations values('L18','Kw');
insert into locations values('L19','Bp');


create table schools (
school_id varchar2(5) primary key,
school_type varchar2(200),
location_id varchar2(100),
constraints sch foreign key (location_id) references
locations(location_id)on delete cascade
);

insert into schools values('S1','1st std to 4th std','L11');
insert into schools values('S2','5th std to 10th std','L8');
insert into schools values('S3','balvadi','L17');
insert into schools values('S4','balvadi','L14');
insert into schools values('S5','balvadi','L16');
insert into schools values('S6','balvadi','L11');
insert into schools values('S7','balvadi','L18');

create table temples(
temple_id varchar2(50) primary key,
temple_name varchar2(100),
location_id varchar2(100),
constraints t1 foreign key (location_id) references
locations(location_id)on delete cascade
);


insert into temples values('T1','hanuman mandir','L2');
insert into temples values('T2','mukundraj mandir','L18');
insert into temples values('T3','jotiba mandir','L4');
insert into temples values('T4','vitthal rukmai mandir','L19');
insert into temples values('T5','jotiba mandir','L19');
insert into temples values('T6','shaley gram mat','L19');
insert into temples values('T7','hanuman mandir','L19');
insert into temples values('T8','mahadev mandir','L13');
insert into temples values('T9','datta mandir','L19');
insert into temples values('T10','bhavai mandir','L12');
insert into temples values('T11','nrushih mandir','L1');
insert into temples values('T12','sidhanath mandir','L8');
insert into temples values('T13','lakshmi mandir','L17');
insert into temples values('T14','pir mandir','L12');
insert into temples values('T15','pavkta mandir','L8');


create table students (
student_id varchar2(50) primary key,
qualification varchar2(50),
medium varchar2(50),
join_date date,
end_date date ,
people_id varchar2(100) unique,
school_id varchar2(50),
constraint std foreign key(people_id) references
peoples(people_id)on delete cascade,
constraint std1 foreign key(school_id) references
schools(school_id)on delete cascade
);


insert into students values('std1','10th','english','16-06-2014','28-04-2017','P1','S2');
insert into students values('std2','10th','marathi','15-05-2016','18-03-2019','P4','S2');
insert into students values('std3','BE','english','16-06-2019','20-05-2023','P6',null);
insert into students values('std4','msc','semi_english','01-06-2007','02-04-2013','P8',null);
insert into students values('std5','10th','english','16-06-2014','28-04-2017','P9',null);
insert into students values('std6','bsc','english','17-05-2017','20-01-2021','P10',null);
insert into students values('std7','bcs','semi_english','06-11-2012','14-03-2016','P13',null);
insert into students values('std8','civil','english','16-06-2018','28-07-2023','P19',null);
insert into students values('std9','mechanical','english','16-06-2018','28-09-2022','P22',null);
insert into students values('std10','it','english','06-03-2011','20-07-2015','P25',null);
insert into students values('std11','bcom','english','01-04-2009','08-03-2014','P28',null);
insert into students values('std12','bsc','semi_english','02-08-2018','12-05-2022','P30',null);
insert into students values('std13','bcs','english','19-08-2019','28-03-2022','P31',null);
insert into students values('std14','pharmacy','semi_english','15-06-2020','17-03-2023','P32',null);
insert into students values('std15','it','english','23-04-2015','10-09-2019','P33',null);
insert into students values('std16','iti','semi_english','21-04-2009','12-05-2012','P34',null);
insert into students values('std17','BE','english','06-04-2019','26-06-2023','P35',null);
insert into students values('std18','msc','english','02-06-2021','17-12-2023','P36',null);
insert into students values('std19','civil','english','09-07-2009','24-07-2014','P37',null);
insert into students values('std20','MBA','english','06-03-2014','01-04-2017','P38',null);


create table jobs(
job_id varchar2(100) primary key,
hire_date date,
start_date date ,
salary number(10) ,
job_type varchar2(100),
address varchar2(100),
people_id varchar2(100),
constraints jb foreign key(people_id) references
peoples(people_id)on delete cascade
);



insert into jobs values('J1','06-08-2022','01-01-2023',30000,'devloper','pune','P7');
insert into jobs values('J2','15-02-2023','01-04-2023',25000,'contractor','satara','P11');
insert into jobs values('J3','20-01-2020','01-06-2020',25000,'designer','wakad','P12');
insert into jobs values('J4','28-04-2022','01-09-2023',45000,'web_devloper','mumbai','P14');
insert into jobs values('J5','19-01-2023','01-03-2023',60000,'data_science','hydrabad','P5');

update jobs set people_id='P15' where job_id='J5';

insert into jobs values('J6','10-08-2022','01-12-2022',15000,'tester','pune','P18');
insert into jobs values('J23','01-01-2022','01-05-2022',30000,'devloper','vagholi','P20');
insert into jobs values('J7','01-01-2022','01-05-2022',30000,'devloper','vagholi','P24');
insert into jobs values('J8','11-08-2021','01-11-2021',35000,'devloper','nashik','P26');
insert into jobs values('J9','18-07-2019','01-10-2019',21500,'tester','pune','P27');
insert into jobs values('J10','14-01-2022','01-03-2020',18000,'maintainance','mumbai','P29');
insert into jobs values('J11','04-12-2019','01-03-2023',18000,'maintainance','mumbai','P39');
insert into jobs values('J12','14-11-2018','01-03-2023',35000,'SQL developer','pune','P40');
insert into jobs values('J13','15-03-2020','01-03-2020',55000,'developer','mumbai','P41');
insert into jobs values('J14','25-04-2021','01-03-2020',30000,'Data analyst','pune','P42');
insert into jobs values('J15','12-06-2020','01-03-2020',100000,'Dy sp','Dubai','P43');
insert into jobs values('J16','24-07-2021','01-03-2020',40000,'SQL developer','hinjewadi','P44');
insert into jobs values('J17','19-02-2023','01-03-2020',8000,'data analystt','banglore','P45');
insert into jobs values('J18','03-11-2022','01-03-2020',60000,'data engineer','kalyan','P46');
insert into jobs values('J19','04-03-2022','01-03-2020',115000,'Pilot','pune','P47');
insert into jobs values('J20','29-08-2021','01-03-2020',70000,'teacher','kharadi','P48');
insert into jobs values('J21','21-11-2020','01-03-2020',18000,'office workar','kharadi','P49');
insert into jobs values('J22','21-11-2020','01-03-2020',80000,'service advisor','ubhale nagar','P50');


create table Grampanchayat (
gram_id varchar2(50) primary key,
post_name varchar2(50),
join_date date,
end_date date,
votes number(10),
years number(10) ,
people_id varchar2(100),
village_id varchar2(100),
constraints g1 foreign key(people_id) references
peoples(people_id)on delete cascade,
constraints g2 foreign key(village_id) references 
villages(village_id)on delete cascade  
);

alter table grampanchayat add
party varchar2(20);

insert into Grampanchayat values('G1','sarpanch','20-06-2011','20-06-2016',5273,2011,'P2','V1','bjp');
insert into Grampanchayat values('G2','sabhapati','01-01-2015','20-06-2016',5203,2015,'P5','V1','congress');
insert into Grampanchayat values('G3','sarpanch','21-06-2016','20-06-2021',5623,2016,'P16','V1','bjp');
insert into Grampanchayat values('G4','up_sarpanch','20-07-2016','20-06-2021',2223,2016,'P17','V1','bjp');
insert into Grampanchayat values('G5','sadashya','20-06-2016','20-06-2021',2023,2016,'P23','V1','bjp');
insert into Grampanchayat values('G6','Police Patil','20-06-2018','20-06-2021',850,2018,'P43','V1','Apksh');
insert into Grampanchayat values('G7','sadashya','28-11-2018','20-06-2022',650,2018,'P46','V1','bjp');
insert into Grampanchayat values('G8','socity adhyaksh','20-06-2021','20-06-2023',895,2021,'P47','V1','bjp');
insert into Grampanchayat values('G9','sadashya','20-01-2019','02-03-2022',953,2019,'P41','V1','bjp');
insert into Grampanchayat values('G10','sadashya','20-01-2019','02-03-2022',465,2019,'P42','V1','bjp');
insert into Grampanchayat values('G11','sadashya','20-01-2019','02-03-2022',365,2019,'P43','V1','bjp');
insert into Grampanchayat values('G12','sadashya','20-01-2019','02-03-2022',658,2019,'P26','V1','bjp');
insert into Grampanchayat values('G13','sadashya','20-01-2019','02-03-2022',568,2019,'P38','V1','bjp');
insert into Grampanchayat values('G14','chaireman','02-06-2019','20-06-2023',1026,2019,'P50','V1','bjp');


create table shopes (
shope_id varchar2(100) primary key,
variety_shop varchar2(500) ,
menu varchar2(100) ,
people_id varchar2(100),
sub_village_id varchar2(50),
constraints sh1 foreign key(people_id) references
peoples(people_id) on delete cascade,
constraints sh2 foreign key( sub_village_id) references
sub_village( sub_village_id)on delete cascade
);

insert into shopes values('SH1','genral store','foods material','P3','Jn');
insert into shopes values('SH2','medical','medicine','P1','Kw');
insert into shopes values('SH3','hotel','vadapav,bhaji,misal,edali,pavbhaji','P10','Sw');
insert into shopes values('SH4','sallon','jents hair cutting','P20','Nc');
insert into shopes values('SH5','Garej','2 wheelar servising center','P16','Maw');
insert into shopes values('SH6','electronics','repairing electric material','P9','Mw');
insert into shopes values('SH7','hospital','hospital','P5','Jw');
insert into shopes values('SH8','Gift gallary','gretting card,birthday gifts,decoration material','P25','Kw');
insert into shopes values('SH9','wine shop','desi,chapti,19,tango,black','P47','Mw');
insert into shopes values('SH10','gauri snack center','vadapav,samosa,kachori,bhaji,dhokla,pav bhaji','P43','Mw');
insert into shopes values('SH11','ganesh bekary','biskit,cake,bancake,cupcake,tost,chips,gulabjam,mithai','P47','Mw');
insert into shopes values('SH12','tejas vadewale','vadapav,samosa,kachori,bhaji,dhokla,pav bhaji','P46','Mw');
insert into shopes values('SH13','vijay basundi','Masale milk,basundi,shrikhand,aamrkhand','P40','Gm');
insert into shopes values('SH14','chotu kirana store','all kirana store','P45','Jn');
insert into shopes values('SH15','ram medical','medicine','P35','Rm');



create table vehicles (
vehicle_id varchar2(50) primary key,
passing varchar2(100),
vehicle_no varchar2(100) ,
vehicle_type varchar2(100) ,
vehicle_model varchar2(100),
people_id varchar2(100),
constraints v1 foreign key(people_id) references
peoples(people_id)on delete cascade
);

insert into vehicles values('V1','MH10','TY6139','4 wheeler','bolero','P1');
insert into vehicles values('V2','MH10','AP6139','4 wheeler','bolero','P4');
insert into vehicles values('V3','MH12','JC4971','2 wheeler','suziki','P6');
insert into vehicles values('V4','MH12','MS2139','4 wheeler','tata','P15');
insert into vehicles values('V5','MH10','CL5135','4 wheeler','honda','P9');
insert into vehicles values('V6','MH50','TY8558','2 wheeler','bajaj','P5');
insert into vehicles values('V7','MH10','WD4562','4 wheeler','bajaj','P25');
insert into vehicles values('V8','MH10','PL3207','2 wheeler','bajaj','P30');
insert into vehicles values('V9','MH50','AK1465','4 wheeler','suzuki swift','P30');
insert into vehicles values('V10','MH50','ED9695','2 wheeler','tvs star','P35');
insert into vehicles values('V11','MH50','JC4562','2 wheeler','bajaj ct x110','P45');
insert into vehicles values('V12','MH12','KS4689','2 wheeler','yamaha rx100','P50');
insert into vehicles values('V13','MH10','MS1463','4 wheeler','tata punch','P42');
insert into vehicles values('V14','MH12','AP8826','4 wheeler','ennova','P5');
insert into vehicles values('V15','MH10','TY9999','4 wheeler','tata','P9');
insert into vehicles values('V16','MH10','AP9898','4 wheeler','baleno','P50');
insert into vehicles values('V17','MH50','TY6542','2 wheeler','tvs star','P1');
insert into vehicles values('V18','MH12','OK1245','2 wheeler','bajaj','P23');
insert into vehicles values('V19','MH12','SK6598','4 wheeler','swift','P36');
insert into vehicles values('V20','MH50','GC3614','2 wheeler','bajaj','P46');
insert into vehicles values('V21','MH10','TY1788','4 wheeler','toyota','P14');


select * from GRAMPANCHAYAT;
select * from jobs;
select * from locations;
select * from peoples;
select * from schools;
select * from shopes;
select * from students;
select * from sub_village;
select * from temples;
select * from vehicles;
select * from villages;

