-- Week 5 - Wednesday Questions
-- 1. List all customers who live in Texas (use JOINs)
SELECT first_name, last_name, district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
SELECT amount, first_name, last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99;

-- 3. Show all customers names who have made payments over $175(use subqueries)
--Not getting subqueries yet

-- 4. List all customers that live in Nepal (use the city table)
SELECT first_name, last_name, country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_id
Where country = 'Nepal';

-- 5. Which staff member had the most transactions?
SELECT COUNT(amount), staff_id
FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC
LIMIT 1;


-- 6. How many movies of each rating are there?
SELECT COUNT(rating), rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating);

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
-- Not getting subqueries yet