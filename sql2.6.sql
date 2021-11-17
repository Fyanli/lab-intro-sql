-- activity 2.6
use sakila;

-- In the table actor, which are the actors whose last names are not repeated?

select last_name, count(*)
from sakila.actor
group by last_name
having count(last_name)=1
order by last_name asc;

-- Which last names appear more than once?
select last_name, count(*)
from sakila.actor
group by last_name
having count(last_name)>1
order by last_name asc;


-- Using the rental table, find out how many rentals were processed by each employee.
select staff_id, count(*)
from sakila.rental
group by staff_id;


-- Using the film table, find out how many films were released each year.
select release_year, count(*) from sakila.film
group by release_year
having count(*);

-- Using the film table, find out for each rating how many films were there.
select rating, count(*) from sakila.film
group by rating;

-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

SELECT rating, AVG(length) FROM sakila.film
GROUP BY rating
HAVING AVG(length);

-- Which kind of movies (rating) have a mean duration of more than two hours?

SELECT rating, AVG(length) FROM sakila.film
GROUP BY rating
HAVING AVG(length) > 120;

-- Rank films by length (filter out the rows that have nulls or 0s in length column)

select title, length from sakila.film
where length>0 and length is not null
order by length desc;












