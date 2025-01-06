create table hospital (
	id serial primary key,
	hospital_name text not null,
	city varchar(20)
);

create table birth_informations (
	baby_id serial primary key,
	baby_firstname varchar(15) not null,
	baby_lastname varchar(15) not null,
	birth_date date,
	birth_weight numeric, 
	hospital_id integer references hospital(id)
);

insert into hospital (hospital_name,city) values ('Acıbadem','Ankara');
insert into hospital (hospital_name,city) values ('Medline','Adana');
insert into hospital (hospital_name,city) values ('Algomet','Adana');
insert into hospital (hospital_name,city) values ('İstanbul Şehir Hastanesi','İstanbul');
insert into hospital (hospital_name,city) values ('Ankara Etlik Şehir Hastanesi','Ankara');
insert into hospital (hospital_name,city) values ('Adana Çukurova Devlet Hastanesi','Adana');
insert into hospital (hospital_name,city) values ('Sezar Hospital','Adana');
insert into hospital (hospital_name,city) values ('Ankara Şehir Hastanesi','Ankara');

insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Ali','Ocak','2025-01-06',3.0,1);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Seher','Gün','2024-01-01',3.1,2);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Zehra','Şen','2025-01-01',2.99,2);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Miraç','Yorulmaz','2023-06-06',4.0,3);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Mehmet','Vefa','2024-12-30',3.5,4);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Kevser','Kasap','2025-01-01',3.2,5);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Cumali','Yaşar','2024-11-29',3.5,6);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Ali','Temel','2025-01-01',3.44,6);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Mehmet','Gün','2024-07-23',3.23,7);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Miray','Yorulmaz','2024-11-18',2.97,3);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Kürşat','Polat','2025-01-04',3.5,8);
insert into birth_informations (baby_firstname,baby_lastname,birth_date,birth_weight,hospital_id) 
values ('Attila','Polat','2024-01-04',3.0,8);

select * from birth_informations
join hospital on hospital_id = hospital.id;

