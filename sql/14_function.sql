/*
 * Use a JOIN to count the number films in the specified category.
 * Use table category, film_category, and film.
 */

CREATE OR REPLACE FUNCTION list_category(cat TEXT) RETURNS TABLE(title TEXT) AS
$$
SELECT f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = cat
ORDER BY f.title

$$
LANGUAGE SQL
STABLE
RETURNS NULL ON NULL INPUT;

SELECT list_category('Action');
SELECT list_category('Animation');
SELECT list_category('Children');
SELECT list_category('Classics');
SELECT list_category('Comedy');
SELECT list_category('Documentary');
SELECT list_category('Drama');
SELECT list_category('Family');
SELECT list_category('Foreign');
SELECT list_category('Games');
SELECT list_category('Horror');
SELECT list_category('Music');
SELECT list_category('New');
SELECT list_category('Sci-Fi');
SELECT list_category('Sports');
SELECT list_category('Travel');
