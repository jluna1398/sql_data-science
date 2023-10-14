-- create a new line an dtable for data analysis
	/*
		We need to implement a new relational database
			- Primary keys 
			-  Seconndary keys
		Data modeling
			- What is data modeling and how can use to implement a new data structure
			
	*/
	
	
--  Filtering

select title, description, release_year, rental_rate, rating from film
WHERE rental_rate > 3 AND rating = 'PG-13';

 -- is best to use parentesis if you want something to run fisrt
 
 
 
 
 -- Wild Cards
 	-- '% Pizza' grabs anything ending with word pizza
	-- 'Pizza%' grabs anything after word pizza
	-- "%Pizza%" grabs anyhting before and after pizza
 	-- Best for string values or text data, searching patter from a text based on seatch criteria

select * from film
	WHERE description like '%Drama%';
	
	
-- sorting and using by
select title, release_year, rating, rental_rate, release_year * rental_rate AS CPA
from film
where (rental_rate > 3 ) and ( title like '%Sweet%')
ORDER BY rating;



-- aggregation functions to help data analysis
	-- We can use AVG, COUNT, MIN, MAX and SUM for analysis
	-- The only problem is that we cannot performn

select AVG(rental_rate) as avg_price 
from film
where rating = 'PG-13';

-- This allows us to see unique values in somethig. from the column
select DISTINCT rating
from film;

-- Select the raring column, then gruop by the types of values that are present in the 
	-- rating then count each values how many times they appear

select  rating , count(rating) from film
	group by (rating)
	

-- How to use where vs having
