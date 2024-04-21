-- Question 1) How many actors are there with the last name 'Walberg'?
select first_name, last_name
from actor
where last_name = 'Wahlberg'

-- Question 2) How many payments were made between $3.99 and $5.99?
select customer_id, amount
from payment
where amount between 3.99 and 5.99;

-- Question 3) What film does the store have the most of?
select COUNT(film_id), film_id
from inventory
group by film_id
order by COUNT(film_id) desc;

select title, count(title)
from film 
group by title
order by COUNT(title);
-- Question 4) How many customers have the last name ‘William’?
select first_name, last_name
from customer 
where last_name = 'William';

-- Question 5) What store employee (get the id) sold the most rentals?
select COUNT(staff_id)
from rental 
group by staff_id;

-- Question 6) How many different district names are there?
select count(distinct district)
from address

-- Question 7) What film has the most actors in it? (use film_actor table and get film_id)

select film_id, COUNT(film_id)
from film_actor 
group by film_id
order by COUNT(film_id) desc;

-- Question 8)From store_id 1, how many customers have a last name ending with ‘es’?// use customer table
select store_id, last_name
from customer 
where last_name like '%es';

-- Question 9) How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)

Select amount, COUNT(*) 
from payment
where customer_id Between 380 And 430 
group by amount 
having COUNT(*) > 250;

-- Question 10) Within the film table, how many rating categories are there? And what rating has the most movies total?
Select COUNT(DISTINCT rating)
from film;
-- for the count of types of film ratings
select rating, COUNT(rating)
from film
group by rating
order by COUNT(rating) desc;
-- to see what rating has the most movies total