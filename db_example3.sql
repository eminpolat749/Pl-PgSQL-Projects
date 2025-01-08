create table brand (
	id serial primary key,
	name text not null
);

insert into brand (name) values ('Toyota');
insert into brand (name) values ('Wv');
insert into brand (name) values ('Mazda');
insert into brand (name) values ('Honda');
insert into brand (name) values ('Mersedes');
insert into brand (name) values ('Renault');

select * from brand;

create table cars (
	id serial primary key,
	model text,
	brand_id integer,
	foreign key (brand_id) references brand(id)
);

select * from cars;

insert into cars (model,brand_id) values ('Corolla',1);
insert into cars (model,brand_id) values ('Yaris',1);
insert into cars (model,brand_id) values ('Polo',2);
insert into cars (model,brand_id) values ('Passat',2);
insert into cars (model,brand_id) values ('Golf',2);

select * from cars 
join brand on brand.id = cars.brand_id;



