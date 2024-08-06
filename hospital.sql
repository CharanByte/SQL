create database hospital1;
use hospital1;
create table hospital_info(id int ,hos_name varchar(29) ,location varchar(30) , pincode int ,
patient_name varchar(30) ,email varchar(30), phone_no bigint, no_of_patient int,no_of_doctors int,
 salary bigint);
 insert into hospital_info values(101,"AV Hospital","bengaluru",56132,"raj","raj@gmail.com",9867878782,20,10,100000),
                                    (102,"rv Hospital","kolar",56332,"chotu","chotu@gmail.com",99988782,10,10,200000),
                                    (103,"snr Hospital","mysuru",54132,"ram","ram@gmail.com",986787782,90,10,300000),
                                    (104,"ssvHospital","malur",59132,"ravi","ravi@gmail.com",963778782,20,10,900000),
                                    (105,"gAV Hospital","bengaluru",56142,"alex","alex@gmail.com",9867878878,10,10,900000),
                                    (106,"maruthi Hospital","bengaluru",56152,"dax","dax@gmail.com",9867878782,60,10,300000),
                                    (107,"apollo Hospital","kgf",56136,"aarav","aarav@gmail.com",9867878782,30,10,2100000),
                                    (108,"jsk Hospital","bengaluru",56272,"dev","dev@gmail.com",986784582,20,70,390000),
                                    (109,"rns Hospital","mangaluru",59432,"kali","kali@gmail.com",988783382,20,10,60133000),
                                    (110,"yns Hospital","bengaluru",59832,"paul","paul@gmail.com",9867878734,50,90,140000);
select * from hospital_info;
 

