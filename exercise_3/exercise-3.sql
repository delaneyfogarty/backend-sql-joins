-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category

SELECT
film.title
from film
LEFT JOIN film_category on film.title = film_category.film_id
LEFT JOIN category on film_category.category_id = category.category_id
WHERE category.category_id = 'Action';