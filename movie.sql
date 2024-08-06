create database movie;
use movie;
create table movie_info( movie_name varchar(20), hero_name varchar(30),price bigint, year bigint,going boolean);
desc movie_info;
alter table movie_info
add column heroin_name varchar(29);
alter table movie_info
add column director varchar(29);
alter table movie_info
add column movie_Language varchar(29);
alter table movie_info
add column budget int;
alter table movie_info
add column runtime float;
alter table movie_info
rename column budget to movie_budget;
alter table movie_info
rename column movie_Language to movie_lang;
alter table movie_info
rename column runtime to movie_runtime;
alter table movie_info
rename column hero_name to name_of_hero;
alter table movie_info
rename column year to movie_year;
insert into movie_info values('kgf','yash',200,2020,true,'shetty','neel','kannada',200000,2);
insert into movie_info values('kgf2','yash',200,2022,true,'shetty','neel','kannada',500000,3);
insert into movie_info values('bahubali','prabhas',300,2020,true,' anushka shetty','rajamouli','telugu',400000,2);
insert into movie_info values('bahubali-2','prabhas',500,2023,true,'anushka shetty','rajamouli','telugu',800000,3);
insert into movie_info values(' Inception','Thomas',200,2020,false,'Ellen','Christopher','english',900000,2);
insert into movie_info values('Bharateeyudu','Kamal Haasan',200,2000,true,'Kajal','shankar','tamil',200000,2),
								('Bharateeyudu -2','Kamal Haasan',200,2020,true,'Kajal','shankar','tamil',900000,3),
                                ('Bommarillu','Bommarillu Baskar',200,2020,true,'Kajal','Bommarillu','telugu',900000,3),
                              ('Rangasthalam','ram charan',200,2020,true,'samantha','sukumar','telugu',300000,3),
								('pushpa','allu arjun',200,2021,true,'rashmika','sukumar','telugu',400000,3);
select * from movie_info;

update movie_info set price=300 where movie_name="pushpa";
update movie_info set price=300 where movie_name="Bommarillu";
update movie_info set going=false where movie_name="Bommarillu";
update movie_info set going=false where movie_name="Bharateeyudu";
update movie_info set price=290 where movie_name="Bharateeyudu";




