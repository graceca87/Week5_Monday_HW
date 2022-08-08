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

SELECT *
FROM film_actor
ORDER BY film_id;














