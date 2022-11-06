1. SELECT COUNT(film) FROM film
WHERE length > (SELECT AVG(length) FROM film);

2. SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

3. SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

4. SELECT first_name, last_name, COUNT(payment.customer_id) FROM customer
INNER JOIN payment ON payment.customer_id=customer.customer_id
GROUP BY first_name, last_name
ORDER BY COUNT(payment.customer_id) DESC;
