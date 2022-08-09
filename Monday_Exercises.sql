-- Question 1.
-- How many actors are there with the last name Wahlberg?

SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- Answer: 2 actors (Nick & Daryl)
------------------------------------------------------------------------------------------------
-- Question 2. 
-- How many payments were made between $3.99 and $5.99

SELECT *
FROM payment
WHERE amount >=3.99 AND amount <=5.99
ORDER BY payment_id DESC;

-- Answer: 32,096
------------------------------------------------------------------------------------------------
-- Question 3:
-- What films have exactly 7 copies? (search in inventory)


SELECT film.title AS seven_copies
FROM inventory
WHERE film_id = 7;

--SELECT title
--FROM inventory;

--* going to have to come back to this one
------------------------------------------------------------------------------------------------
-- Question 4. 
-- How many customers have the first name 'Willie'

SELECT *
FROM customer
WHERE first_name = 'Willie'

-- Anwer: 2 customers (Willie Howell & Willie Markham)
------------------------------------------------------------------------------------------------

-- Question 5.
-- What store employee (get the id) sold the most rentals (use the rental table)

SELECT staff_id, count(staff_id) AS most_sales
FROM rental
GROUP BY staff_id 
ORDER BY most_sales DESC;

-- Answer:  Mike sold the most rentals with 8,040 sales vs Jon who had 8,004 sales
------------------------------------------------------------------------------------------------
-- Question 6.
-- How many unique district names are there? (use the address table)

SELECT district, count(district)
FROM address
GROUP BY address.district
ORDER BY district;

-- Answer: 377 unique distric names (bc the first row had no district name, so I don't think that counts)
------------------------------------------------------------------------------------------------
-- Question 7.
-- What film has the most actors in it? (use film_actor table and get film_id)

SELECT count(actor_id), film_id  
FROM film_actor
group BY film_id
ORDER  BY count(actor_id) DESC;

--Answer: Lambs Cincinatti -- I think I did this right? 
------------------------------------------------------------------------------------------------
-- Question 8: 
-- From store_id 1, how many customers have a last name ending with 'es' (use customer table)

SELECT count(last_name) 
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Answer: 13 customers
------------------------------------------------------------------------------------------------
--Question 9:
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT amount, count(amount)
FROM payment
GROUP BY amount
HAVING customer_id > 380 AND customer_id < 430 AND count(amount) > 250
ORDER BY count(amount);

-- come back to this one
------------------------------------------------------------------------------------------------
-- Question 10.
-- Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT rating, count(rating) 
FROM film
GROUP BY rating
ORDER BY count(rating) DESC;
-- Answer: There are 5 rating categories. PG-13 is the rating with the most movies.





