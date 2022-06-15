-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

-- country, city, customer, payment

SELECT
country.country,
AVG(payment.amount) as avg
FROM country
LEFT JOIN city on country.country_id = city.country_id
LEFT JOIN address on city.city_id = address.city_id
INNER JOIN customer on address.address_id = customer.address_id
LEFT JOIN payment on customer.customer_id = payment.customer_id
GROUP BY country.country_id
ORDER BY avg DESC
LIMIT(10);