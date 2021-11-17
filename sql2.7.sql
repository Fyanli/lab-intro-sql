use sakila;
-- lab2.7 sqljoin part 1

-- 1. How many films are there for each of the categories in the category table

select f.category_id, c.name, count(film_id) as number
from film_category f
join category c
on f.category_id=c.category_id
group by fc.category_id and c.name
order by number desc;

-- 2. Display the total amount rung up by each staff member in August of 2005.

SELECT * FROM payment;
SELECT MONTH(payment_date) FROM payment;
SELECT * FROM staff;
SELECT s.staff_id, SUM(amount) AS `total amount`
FROM staff s
JOIN payment p 
ON s.staff_id = p.staff_id
WHERE MONTH(p.payment_date) = 8 AND YEAR (p.payment_date) = 2005
GROUP BY s.staff_id;

-- 3. Which actor has appeared in the most films?

SELECT * FROM actor;
SELECT * FROM film_actor;
SELECT a.actor_id, COUNT(actor_id) AS total_films
FROM actor a
JOIN film_actor f  USING (actor_id)
GROUP BY actor_id
ORDER BY total_films DESC;


-- 4.Most active customer

select *, count(r.rental_id) as rental_count
from customer c
join rental r
on c.customer_id=r.customer_id
group by c.customer_id
order by rental_count desc
limit 1;

-- 5.Display the first and last names, as well as the address, of each staff member.

select s.first_name, s.last_name, a.address
from staff s
join address a
on a.address_id=s.address_id;


-- 6.List each film and the number of actors who are listed for that film

select f1.title,count(f2.actor_id) as number_actor
from film as f1
join film_actor f2
on f1.film_id=f2.film_id
group by f1.film_id;


-- 7. Using the tables payment and customer and the JOIN command,
-- list the total paid by each customer.List the customers alphabetically 
-- by last name.

SELECT * FROM payment;
SELECT * FROM customer;
SELECT c.first_name, c.last_name, SUM(amount) AS 'total paid'
FROM customer c
JOIN payment p USING (customer_id)
GROUP BY c.customer_id
ORDER BY last_name;


-- 8.List number of films per category

select c.category_name, count(f.film_id) as number_film 
from category c
join film_category f
on c.category_id=f.category_id
group by c.category_id;


