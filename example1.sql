create table book (
	id serial primary key,
	title varchar(100) not null,
	page_number integer not null,
	author_id integer references author(id)
);

select * from book
join author on author.id = book.author_id;