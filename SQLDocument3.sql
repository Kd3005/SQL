-- 1. List all customers who live in Texas 

select customer.first_name, customer.last_name, district
from customer
full join address
on customer.address_id = address.address_id
where district = 'Texas'
;
-- 2. Get all payments above $6.99 with the Customer's Full Name
select first_name, last_name, amount
from payment
full join customer
on payment.customer_id = customer.customer_id
where amount > 6.99
;
-- 3. Show all customers names who have made payments over $175
select first_name, last_name, amount
from payment
full join customer
on payment.customer_id = customer.customer_id
where first_name in (
	select first_name
	from payment 
	group by first_name, last_name
	having sum(amount) > 175
	order by sum(amount) desc 
);	
-- 4. List all customers that live in Nepal
select customer.first_name, customer.last_name, customer.email, country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id
full join country
on city.country_id= country.country_id
where country = 'Nepal'
;
-- 5. Which staff member had the most transactions?
Select staff_id, Count(*) as transaction_count
from payment
group by staff_id
order by transaction_count Desc
Limit 1
;
-- 6. How many movies of each rating are there?
Select rating, Count(*) 
from film 
group by rating
;
-- 7.Show all customers who have made a single payment above $6.99
select customer.customer_id, customer.first_name ,customer.last_name, payment.amount 
from customer
inner join payment
on customer.customer_id=payment.customer_id
where payment.amount > 6.99
;
-- 8. How many free rentals did out store give away?
select count(*) as free_rentals
from payment
where amount=0
;

