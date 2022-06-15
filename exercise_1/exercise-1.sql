-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
SELECT
address_id
from address
LEFT JOIN city on address.city_id = city.city_id
WHERE city.city_id = '149';
