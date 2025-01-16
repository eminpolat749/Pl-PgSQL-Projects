select count(*) from film
where title ilike '%e%e%e%e%';


select category.name, count(*) from category
inner join film_category on category.category_id = film_category.category_id
inner join film on film_category.film_id = film.film_id 
group by category.name;


select count(*), rating from film
group by rating 
order by count(*) desc
limit 1;

select title, length, replacement_cost from film
where title like 'K%' 
order by length desc, replacement_cost
limit 3;


select sum(amount) ,customer.first_name, customer.last_name from payment
inner join customer on customer.customer_id = payment.customer_id
group by payment.customer_id ,customer.first_name, customer.last_name
order by sum(amount) desc
limit 1;

