create database travel;
use travel;
create table planes(
num integer primary key,
country_start char(25),
country_arrival char(25)
);
insert into planes values (5,'france','usa');
insert into planes values (10,'canada','mexico');
insert into planes values (15,'china','japan');
insert into planes values (20,'india','australia');
insert into planes values(25,'new zealand','singapore');
select * from planes ;
select *from planes order by country_start;
select num from planes;
select *from planes limit 5; 
select country_start as 'start' from planes;
select country_arrival from planes;
create table ftypes(
num integer primary key,
flight_type char(25),
food_on_plane char(25),
plane_num integer ,
foreign key(plane_num) references planes(num)
);
insert into ftypes values ('1','direct','yes','5');
insert into ftypes values ('2','direct','yes','10');
insert into ftypes values ('3','stops','no','15');
insert into ftypes values ('4','stops','no','20');
insert into ftypes values ('5','direct','yes','25');
select *from planes;
select * from ftypes;
select *from ftypes 
where num<=2;
select *from planes
where  country_start like '%ca%';
select *from planes
where country_arrival like '%an%';
select *from planes
where country_start like '%an%';
select *from ftypes; 
update ftypes
set food_on_palne='no'
where num ='3';
update ftypes
set food_on_palne='yes'
where num ='4';
select *from ftypes
where  food_on_palne like '%y%';
select *from ftypes
where  food_on_palne like '%n%';
select *from ftypes
where  food_on_palne like '%y%' and flight_type like '%di%';
select *from ftypes
where  food_on_palne like '%n%' and flight_type like '%st%';
select *from planes 
where country_start like '%l%' and country_arrival like '%i%';
select *from ftypes 
where num between 1 and 3;
select*from ftypes;
delete from ftypes where num=5;
select *from planes
left join ftypes on planes.num=ftypes.plane_num;
select *from planes
right join  ftypes on planes.num=ftypes.plane_num;
select *from planes
join  ftypes on planes.num=ftypes.plane_num;








