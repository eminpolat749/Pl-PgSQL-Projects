select count(*) from film
where length > 
(
	select avg(length) from film
);

select count(*) from film
where rental_rate = 
(
	select max(rental_rate) from film
);

select * from film
where replacement_cost = 
(
	select min(replacement_cost) from film
)
and rental_rate = 
(
	select min(rental_rate) from film
);

select * from payment;

select customer.first_name, customer.last_name, payment.amount from customer
inner join payment on customer.customer_id = payment.customer_id
where amount = 
(
	select max(amount) from payment
);