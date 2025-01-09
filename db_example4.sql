create table categories (
	categoryID serial primary key,
	categoryName text not null unique,
	description	text
);

insert into categories (categoryID, categoryName, description) values (1,'Beverages','Soft drinks,coffees');
insert into categories (categoryID, categoryName, description) values (2,'Condiments','sweet sauces');
insert into categories (categoryID, categoryName, description) values (3,'Confections','desserts');
insert into categories (categoryID, categoryName, description) values (4,'Dairy Products','cheeses');
insert into categories (categoryID, categoryName, description) values (5,'Grains/Cereals','breads');

create table products (
	productID serial primary key,
	productName	text not null unique,
	categoryID integer references categories(categoryID),
	unit text,
	price decimal
);

insert into products (productID, productName, categoryID, unit, price) 
	values (1,'Chais',1,'10 boxes 20 bags',18);
insert into products (productID, productName, categoryID, unit, price) 
	values (2,'Chang',1,'24-12 oz bottles',19);
insert into products (productID, productName, categoryID, unit, price) 
	values (3,'Aniseed Syrup',2,'12-550 ml bottles',10);
insert into products (productID, productName, categoryID, unit, price) 
	values (4,'Chef Antons Cajun Seasoning',2,'48-6 oz jars',22);
insert into products (productID, productName, categoryID, unit, price) 
	values (5,'Chef Antons Gumbo Mix',2,'36 boxes',21.35);

select productName, categoryName from products
inner join categories on categories.categoryID = products.categoryID;

select * from categories
inner join products on categories.categoryID = products.categoryID;

