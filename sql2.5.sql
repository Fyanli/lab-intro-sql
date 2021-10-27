-- activity 2.5
use sakila;

select * from actor
where first_name='Scarlett';

select count(dinstinct(rental_id)), count(distinct(inventory_id)) 
from sakila.rental;

select max(film.length) as max_duration,min(film.length) as min_duration
from sakila.film;

select floor(avg(length)/60) as hours, floor(avg(length)%60) as minutes
from sakila.film;

select count(dinstinct(last_name)) as different_last_name
from sakila.film_actor;

select max(convert(payment_date, DATE))-min(convert(payment_date,DATE))
as operation_day from sakila.payment;

SELECT DATEDIFF(MAX(payment_date),MIN(payment_date)) 
FROM sakila.payment;

select *, extract(month from rental_date) as month, 
dayofweek(rental_date) as week_day 
from sakila.rental limit 20;

select *, 
case 
when dayofweek(rental_date) <=5 then 'weekday'
else 'weekend'
end as 'weekend flag'
from sakila.rental;

select title, release_year from sakila.film;

select title from sakila.film
where title like '%ARMAGEDDON%';

select title from sakila.film
where title like '%APOLLO';

select title,length from akila.film
order by length desc
limit 10;

select count(*) from sakila.film
where special_features like '%Behind the Scenes%';

















