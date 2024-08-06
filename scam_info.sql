create database scam;
use scam;
create table scam_info(scam_id int, scan_name varchar(20), scam_type varchar(20), victim varchar(20), reported_case int, loss float, year_of_scam int, action_taken varchar(20),reported_date date, judgemet varchar(20));
alter table scam_info add column scam_origin varchar(10);
alter table scam_info add column operating_year int;
alter table scam_info add column scam_status varchar(20);
alter table scam_info add column case_close_date date;
alter table scam_info add column reported_state varchar(20);

insert into scam_info (scam_id, scan_name, victim, reported_case, loss, year_of_scam, reported_date, judgemet, operating_year, scam_status)
values(1,'BMTC scam', 'Suresh', 20, 2222.548, 2015, '2015-08-10', 'Not declared', 2015-2016, 'inactive');  
insert into scam_info (scam_id, scan_name, reported_case, year_of_scam, reported_date, operating_year, scam_status, case_close_date,reported_state)
values(2, 'PWD scam', 25, 2018, '2018-04-27', 2018-2022, 'Inactive', '2022-07-24', 'Andra Pradesh');  
insert into scam_info(scam_id, reported_date, operating_year, judgemet, case_close_date, reported_state)
values(3, '2022-01-25', 2024, '5yearsofimprisonment', '2024-08-06', 'Tamilnadu');
insert into scam_info(scam_id, scan_name, victim, reported_date, loss, year_of_scam, action_taken, operating_year, reported_state)
values(4, 'Forest scam', 'Girish', '2015-08-10', 56000.247, 2015, 'Investigation', 2016, 2015); 
insert into scam_info(scam_id, scan_name, victim, reported_case, loss, year_of_scam, reported_date, scam_status, case_close_date, reported_state)
values(5, 'Railway scam', 'Prakash', 78, 555555.6897, 2017, '2018-4-09', 'active', '2022-10-09', 'Kerala');
insert into scam_info values(6, 'Hydro power scam', null, 'Rahul', 35, 25896314.258, 2012, 'Investigation', '2012-10-7', 'Improsonment', null, 2020, 'Inactive', '2020-12-30', 'Maharastra');
insert into scam_info values(7, 'Electricity scam', null, 'Girish najraj', 14, 349796314.258, 2020, null, '2020-12-21', null , null, null, 'Active', null, 'UP');
insert into scam_info values(8, 'School scam', null, 'Najraj', 35, 59796314.258, 2010, 'Investigation', '2011-12-21', 'Not declared' , null, 2011, 'Active', null, 'Kranataka');
insert into scam_info values(9, null, null, 'Rajesh', 10, 455879.245, 2020, 'Investigation', '2020-10-9', 'Not declared', null, 2021, 'Active',null, 'Madya Prdesh');
insert into scam_info values(10, 'KSRTC scam', null, 'Rakesh', 5, 85792.215, 2005, null, '2006-10-9', 'Pending', null, 2015, 'Active', null, 'Karnataka');
insert into scam_info values(11, 'Bank Fraud', NULL, 'Rajesh', 20, 1200000.00, 2008, 'Investigation', '2009-04-15', 'Pending', NULL, 2016, 'InActive', NULL, 'Maharashtra');
insert into scam_info values(12, 'Insurance Scam', NULL, 'Rohan', 15, 600000.50, 2010, 'Investigation', '2011-08-23', 'Under Investigation', NULL, 2017, 'InActive', '2020-9-8', 'Tamil Nadu');
insert into scam_info values(13, 'OnlineShoppingFraud', NULL, 'Online Shoppers', 50, 300000.75, 2012, 'Uder investigation', '2013-05-14', 'Closed', NULL, 2018, 'Inactive', NULL, 'Delhi');
insert into scam_info values(14, 'Timber scam', NULL, 'Forest minister', 103, 20000000.00, 2013, null, '2014-07-20', 'Pending', NULL, 2020, 'Active', NULL, 'Gujarat');
insert into scam_info values(15, 'Incometax Fraud', null, 'DK Shivkumar', 200, 5642293.2457, 2012, 'Undre Investigation','2010-10-01', 'Not declared', null, 2024, 'Active', null, 'Karnataka');
insert into scam_info values(16, 'Nandhini milk scam', null, null, null, 546781.2356, 2020, 'Investgationover', '2020-10-10','Declared', null, null, 'Completed', '2021-12-16', null);
insert into scam_info values(17, 'Honey trapping', null, 'Priya', 57, null, 2018, 'under investigation', '2019-07-27', '10yearsimprisonmet', null, null, 'Completed', '2020-05-30', 'Rajastan');
insert into scam_info values(18, 'Coal scam', null, 'Ragav', 60, 60645.2349, 2020, 'under investigation', '2021-09-01', 'Not declared', null, 2023, 'Inactive', null, 'Haryana');

update scam_info set reported_case = 70 where scam_id =18;
update scam_info set loss = 47895485600.23498 where scan_name = 'Hydro power scam';
update scam_info set year_of_scam = 2005 where reported_date = '2015-08-10';
update scam_info set judgemet = 'Declared' where scam_id = 18;
update scam_info set scam_status = 'active' where scan_name = 'Coal scam';
update scam_info set operating_year = 2017 where scam_id = 5;
update scam_info set loss = 2348936.248 where year_of_scam =2018;
update scam_info set action_taken = 'Uderinvestigaion'  where scam_id =10;
update scam_info set reported_state = 'Madya Pradesh' where scam_id = 15;
update scam_info set judgemet = 'case clodsed' where reported_case = 60;

alter table scam_info rename column reported_case to noofcases;
alter table scam_info rename column action_taken to lieagl_action_taken;


delete from scam_info where noofcases between 60 and 70;
delete from scam_info where year_of_scam between 2020 and 2024;
rollback;
delete from scam_info where scam_status = 'Active';

select * from scam_info;
select * from scam_info where noofcases = 65 and scam_id = 18;
select * from scam_info where noofcases in (60, 75);
select * from scam_info where noofcases not in (60, 103);
