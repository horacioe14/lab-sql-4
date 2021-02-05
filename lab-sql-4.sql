#1. Get film ratings
SELECT rating
FROM sakila.film;

#2. Get release years
SELECT release_year
FROM sakila.film;


#3. Get all films with ARMAGEDDON in the tittle
SELECT film.title
FROM sakila.film
WHERE film.title regexp 'ARMAGEDDON';


#4. Get all films with APOLLO in the tittle
SELECT film.title
FROM sakila.film
WHERE film.title regexp 'APOLLO$';

#4. Get all films with APOLLO in the tittle
SELECT film.title
FROM sakila.film
WHERE film.title regexp 'APOLLO';


#5. Get all films which title ends with APOLLO
SELECT film.title
FROM sakila.film
WHERE film.title regexp 'APOLLO$';


#6. Get all films with word DATE in the title
SELECT film.title
FROM sakila.film
WHERE film.title LIKE '%DATE%';


#7. Get 10 films with the longest title.
SELECT film.title
FROM sakila.film
ORDER by length(title) desc
limit 10;

#8. Get 10 the longest films
SELECT film.title, film.length
FROM sakila.film
ORDER by length desc
limit 10;


#9. How many films include Behind the Scenes content?
SELECT title, special_features
FROM sakila.film
WHERE special_features REGEXP 'behind';

SELECT count(film.special_features)
FROM sakila.film
WHERE special_features REGEXP 'behind';

#10 List films ordered by release year and title in alphabetical order.
SELECT film.title, film.release_year
FROM sakila.film
ORDER BY release_year, title ASC;




