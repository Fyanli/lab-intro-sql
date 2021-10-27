-- activity 2.6
use sakila;

select last_name, count(*)
from sakila.actor
group by last_name
having count(last_name)=1
order by last_name asc;

select last_name, count(*)
from sakila.actor
group by last_name
having count(last_name)>1
order by last_name asc;



select staff_id, count(*)
from sakila.rental
group by staff_id;



select release_year, count(*) from sakila.film
group by release_year
having count(*);


select rating, count(*) from sakila.film
group by rating;

select rating, round(avg(length),2) from sakila.film
group by rating
having avg(length);

select rating, avg(length)>120 from sakila.film
group by rating;

select title, length from sakila.film
where length>0 and length is not null
order by length desc;











