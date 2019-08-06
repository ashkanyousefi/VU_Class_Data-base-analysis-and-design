
select title as film_title, name as category_name , rental_date,return_date

from

(select f.film_id,f.title, c.name
from film f
join film_category fc 
on f.film_id=fc.film_id
join category c
on c.category_id=fc.category_id) t1

join
(select f.film_id,re.rental_id , re.rental_date, re.return_date
from film f
join inventory iy
on f.film_id=iy.film_id
join rental re
on re.inventory_id=iy.inventory_id) t2

on t1.film_id=t2.film_id

where name in ('Animation','Children','Classics','Comedy','Family','Music')





