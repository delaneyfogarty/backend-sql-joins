-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

--city, address, customer, rental, payment
SELECT
city.city,
SUM(payment.amount) as sum
FROM city
LEFT JOIN address on city.city_id = address.city_id
LEFT JOIN customer on address.address_id = customer.address_id
INNER JOIN payment on customer.customer_id = payment.customer_id
GROUP BY city.city_id
ORDER BY sum DESC
LIMIT(10);
