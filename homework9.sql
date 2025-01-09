select city.city, country.country from city
inner join country on city.country_id = country.country_id;

select payment.payment_id, customer.first_name, customer.last_name from payment
inner join customer on payment.customer_id = customer.customer_id;

select rental.rental_id, customer.first_name, customer.last_name from rental
inner join customer on rental.customer_id = customer.customer_id;