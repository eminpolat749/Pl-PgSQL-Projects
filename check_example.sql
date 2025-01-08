create table products (
	product_no serial primary key,
	name text,
	price numeric CHECK (price > 0),
	discounted_price numeric CHECK (discounted_price > 0),
	CHECK (price > discounted_price)
);

insert into products (name,price,discounted_price) values ('eraser', 10, 9.5);
insert into products (name,price,discounted_price) values ('glass', 25.99, 22.75);
insert into products (name,price,discounted_price) values ('sofa', 1000, 750);

alter table products
add unique (name);

alter table products
alter column name
set not null;

select * from products;