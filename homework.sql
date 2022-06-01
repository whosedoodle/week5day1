--1. How many actors are there with the last name ‘Wahlberg’?
select * from ACTOR
where last_name = 'Wahlberg'
--Answer: 2

--2. How many payments were made between $3.99 and $5.99?
select count(payment_id) from payment 
where amount between 3.99 and 5.99
--Answer: 5607

--3. What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc

--Answer: Film 193

--4. How many customers have the last name ‘William’?
select * from customer
where last_name = 'William'
--Answer: 0

--5. What store employee (get the id) sold the most rentals?
select COUNT(STAFF_ID) from rental
group by staff_id 
order by count(staff_id) 
--Answer: 2

--6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address
--Answer: 378

--7. What film has the most actors in it? (use film_actor table and get film_id)
select count(film_id), film_id  from film_actor
group by film_id
order by count(film_id) desc
--Answer: Film 508

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(customer_id) from customer
where last_name like '%es'
--Answer: 21

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select count(amount) from payment
where customer_id between 380 and 430
having count(amount) > 250

--Answer: 1257

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT COUNT(DISTINCT fulltext), fulltext
FROM film
group by fulltext 
order by count(fulltext) desc 


--Answer: Baloon most rated but ? how many categories