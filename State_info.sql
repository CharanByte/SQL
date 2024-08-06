create database StateInformation;

use StateInformation;

create table state_info(state_id int, state_name varchar(20), state_capital varchar(20), official_language varchar(20), governor varchar(20), average_incomme float, gdp bigint, population bigint, area varchar(20), largest_city varchar(20));


alter table state_info add column established_year int;
alter table state_info add column tourist_places varchar(20);
alter table state_info add column no_of_industries int;
alter table state_info add column major_industries varchar(20);
alter table state_into add column name_of_police_force varchar(20);

desc state_info;

select * from state_info;

insert into state_info values(1, 'Andhra Pradesh', 'Amaravati', 'Telugu', 'BiswaBhusan', 60000, 100000000000, 54000000, '162968Km', 'Visakhapatnam', 1956, 'Tirupati', 200, 'IT,Agriculture');
insert into state_info values(2, 'Arunachal Pradesh', 'Itanagar', 'Hindi, Arunachali', 'Dr.B.D.Mishra', 50000,10000000000, 1400000, '83743Km', 'Itanagar', 	1987, 'ziro Valley', 50, 'Handicrafts');
insert into state_info values(3, 'Assam', 'Dispur', 'Assamese', 'Gulab Chand Kataria', 55000, 90000000000, 35000000, '78438Km', 'Guwahati', 1950, 'NationalPark',100, 'Tea, Oil');
insert into state_info values(4, 'Bihar', 'Patna', 'Hindi', 'Rajendra Arlekar', 40000, 80000000000, 120000000, '94163Km', 'Patna', 1950, 'Bodh Gaya, Naland',80, 'Education');
insert into state_info values(5, 'Chhattisgarh', 'Raipur', 'Hindi', 'VishwasKailas', 55000, 90000000000,29000000, '135192Km', 'Raipur', 2000, 'ChitrakootFallValley',70, 'Mining, Steel');
insert into state_info values(5, '	Goa', 'Panaji', 'Konkani', 'P.S.Sreedharan', 70000, 40000000000,2000000, '3702Km', 'Vasco da Gama', 1987, 'Baga Beach',30, 'Tourism, Mining');
insert into state_info values(6, 'Gujarat', 'Gandhinagar', 'Gujarati', 'Acharya Devvrat', 65000, 150000000000,65000000, '196024Km', 'Ahmedabad', 1960, 'Gir National Park,',150, 'Textiles,Chemicals,');
insert into state_info values(7, 'Haryana', 'Chandigarh', 'Hindi', 'Bandaru Dattatreya', 70000, 130000000000,28000000, '44212Km', 'Faridabad', 	1966, 'Sultanpur Lake',60, 'Manufacturing,');
INSERT INTO state_info values(8, '	Haryana','Chandigarh', 'Hindi', 'Bandaru Dattatreya', 7000, 130000000000, 28000000, '44212kM', 'Faridabad', 1966, 'Kurukshetra',60,'IT, Agriculture'), (9, 'Himachal Pradesh', 'Shimla', 'Hindi', 'Shiv Pratap Shukla', 60000, 60000000000, 7500000, '55673Km',  'Shimla', 1971,'Manali, Dharamshala', 40, 'Tourism, Hydro Power');
INSERT INTO state_info values(9, 'Himachal Pradesh','Shimla', 'Hindi', 'Shiv Pratap Shukla', 6000, 60000000000, 7500000, '55673kM', 'Shimla', 1971, 'Manali, Dharamshala',40,'Tourism,Hydro Power'), (10, 'Jharkhand', 'Ranchi', 'Hindi', 'C.P. Radhakrishnan', 50000, 70000000000, 38000000, '79714Km',  'Jamshedpur', 2000,'Netarhat, Jamshedpur', 80, 'Steel, Engineering');
INSERT INTO state_info values(11, '	Karnataka','Bengaluru', 'Kannada', 'Thaawarchand Gehlot', 7000, 200000000000, 65000000, '191791kM', 'Bengaluru', 1956, 'Hampi, Coorg',150,'IT, Aerospace'), (12, 'Kerala', 'Thiruvananthapuram', '	Malayalam', 'Arif Mohammed Khan', 80000, 60000000000, 34000000, '38863KKm',  'Kochi', 1956,'Munnar, Alappuzha', 100, 'Rubber');
INSERT INTO state_info values(13, 'Madhya Pradesh','Bhopal', '	Hindi', 'Mangubhai Patel', 55000, 90000000000, 80000000, '308350kM', 'Indore', 1956, 'Khajuraho, Sanchi',90,'Agriculture'), (14, 'Maharashtra', 'Mumbai', 'Marathi', 'Ramesh Bais', 80000, 300000000000, 120000000, '307713KKm', 'Mumbai', 1960,'AjantaCaves', 200, 'IT, Film, Textiles');
INSERT INTO state_info values(15, 'Manipur','Imphal', 'Manipuri', 'La. Ganesan', 50000, 30000000000, 3000000, '22327kM', 'Imphal', 1972,'Kangla Fort',30,'Handicrafts'), (16, 'Meghalaya', 'Shillong', 'English', 'Phylla Syiem', 55000, 20000000000, 3500000, '22429KKm', 'Shillong', 1972,'Cherrapunji', 40,'Tourism, Agriculture');
INSERT INTO state_info values(17, 'Mizoram','Aizawl', 'Mizo', 'Kambhampati HariBabu', 45000, 10000000000, 1200000, '21081Km', 'Aizawl', 1987,'Mizoram Museum',20,'Agriculture'), (18, 'Nagaland', 'Kohima', 'English', 'Jagdish Mukhia', 50000, 15000000000, 2200000, '16579KKm', 'Dimapur', 1963,'KohimaWarCemetery', 25,'Agriculture');
INSERT INTO state_info values(19, 'Odisha','Bhubaneswar', 'Oriya', 'Ganeshi Lal Yadav', 55000, 70000000000, 46000000, '155707Km', 'Bhubaneswar', 1936,'Chilika Lake',80,'Mining'), (20, 'Punjab', 'Chandigarh', 'Punjabi', 'Banwarilal Purohit', 65000, 120000000000, 30000000, '50362KKm', 'Ludhiana', 1966,'Golden Temple', 70,'Manufacturing');

alter table state_info rename column largest_city to Major_city;
alter table state_info rename column established_year to Formation_year;
alter table state_info rename column tourist_places to tourist_attraction;
alter table state_info rename column no_of_industries to Industries_count;
alter table state_info rename column gdp to economic_output;

update state_info set economic_output = 80000000000 where state_id = 17;
update state_info set governor = 'Kalraj Mishra' where state_name = 'Haryana';
update state_info set Industries_count = 85 where area = '307713KKm';
update state_info set population = 590000000 where state_name = 'Karnataka';
update state_info set major_industries = 'Aerospace Industries' where state_id = 11; 
update state_info set state_capital = 'Manglore' where state_id = 11;
update state_info set average_incomme = 314476 where state_id = 11;
update state_info set area = '5635Km' where state_id = 20;
update state_info set Formation_year = 1988 where state_id = 5;
update state_info set tourist_attraction = null where state_id = 8;

delete from state_info where Industries_count between 50 and 60;
delete from state_info where state_id = 12;
delete from state_info where state_capital = 'Panaji';
select count(*) from state_info;

select * from state_info where state_id between 1 and 10 and economic_output between 100000000000 and 130000000000;

select * from state_info where Industries_count in (70, 100, 150);

select * from state_info where economic_output not in (40000000000, 10000000000, 70000000000);
select * from state_info;






