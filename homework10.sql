select country.country_id, country.country,city.city from country
left join city on country.country_id = city.country_id;

select customer.first_name, customer.last_name, payment.payment_id from payment
right join customer on customer.customer_id = payment.customer_id;

select customer.first_name, customer.last_name, rental.rental_id from customer
full join rental on rental.customer_id = customer.customer_id;





