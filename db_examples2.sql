create table planes (
	id serial primary key,
	name varchar(100) not null
);

create table airports (
	id serial primary key,
	name varchar(100) not null
);

create table passengers (
	id serial primary key,
	full_name varchar(100) not null
);

create table flights (
	id serial primary key,
	plane_id integer,
	departure_airport_id integer,
	arrival_airport_id integer,
	passenger_id integer,
	foreign key (plane_id) references planes(id),
	foreign key (departure_airport_id) references airports(id),
	foreign key (arrival_airport_id) references airports(id),
	foreign key (passenger_id) references passengers(id)
);

insert into planes (name) values ('TK01');
insert into planes (name) values ('TK02');
insert into planes (name) values ('TK03');
insert into planes (name) values ('TK04');
insert into planes (name) values ('TK05');

insert into airports (name) values ('Ankara Esenboğa');
insert into airports (name) values ('Adana Şakirpaşa');
insert into airports (name) values ('İstanbul Atatürk');
insert into airports (name) values ('Kıbrıs Ercan');
insert into airports (name) values ('İzmir Adnan Menderes');

insert into passengers (full_name) values ('Emin Polat');
insert into passengers (full_name) values ('Miraç Yorulmaz');
insert into passengers (full_name) values ('Betül Korkut');
insert into passengers (full_name) values ('Mustafa Kemal Atatürk');
insert into passengers (full_name) values ('Edin Dzeko');
insert into passengers (full_name) values ('Samet Akçadağ');
insert into passengers (full_name) values ('İsmail Kuyucu');
insert into passengers (full_name) values ('Miray Yorulmaz');
insert into passengers (full_name) values ('Veda Polat');

INSERT INTO flights (plane_id, departure_airport_id, arrival_airport_id, passenger_id)
VALUES (1, 2, 1, 1);
INSERT INTO flights (plane_id, departure_airport_id, arrival_airport_id, passenger_id)
VALUES (2, 1, 2, 2);
INSERT INTO flights (plane_id, departure_airport_id, arrival_airport_id, passenger_id)
VALUES (1, 2, 1, 3);
INSERT INTO flights (plane_id, departure_airport_id, arrival_airport_id, passenger_id)
VALUES (2, 1, 2, 8);

SELECT 
    f.id AS flight_id,
    p.name AS plane_name,
    dep_airport.name AS departure_airport,
    arr_airport.name AS arrival_airport,
    ps.full_name AS passenger_name
FROM flights f
JOIN planes p ON f.plane_id = p.id
JOIN airports dep_airport ON f.departure_airport_id = dep_airport.id
JOIN airports arr_airport ON f.arrival_airport_id = arr_airport.id
JOIN passengers ps ON f.passenger_id = ps.id;