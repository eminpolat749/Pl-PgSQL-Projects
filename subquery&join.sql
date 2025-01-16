
    select author.first_name, author.last_name, book.title, book.page_number from author
    inner join book on author.id = book.author_id
    where book.page_number > 
    (
        select avg(page_number) from book
    );

    select actor.first_name, actor.last_name, film.title, film.length from actor 
    inner join film_actor on actor.actor_id = film_actor.actor_id
    inner join film on film.film_id = film_actor.film_id
    where film.length = 
    (
        select max(length) from film
    );
