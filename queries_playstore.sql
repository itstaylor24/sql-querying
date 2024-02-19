-- Comments in SQL Start with dash-dash --
SELECT * from analytics WHERE id = 1880;
--1
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
--2
SELECT category, COUNT(app_name) as num_apps  FROM analytics GROUP BY category;
--3
SELECT app_name, reviews
FROM analytics ORDER BY reviews DESC LIMIT 5;
--4

SELECT app_name, reviews FROM analytics WHERE rating >= 4.8  ORDER BY reviews DESC LIMIT 1;
--5
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;
--6
 SELECT app_name, price, rating FROM analytics WHERE rating <  3 ORDER BY price DESC LIMIT 1;
--7
SELECT app_name, min_installs FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL  ORDER BY rating DESC; 
--8
SELECT app_name, rating, reviews  FROM analytics WHERE rating < 3 AND reviews <= 10000;
--9
SELECT app_name, price, reviews FROM analytics WHERE price BETWEEN 0.10 and 1.00 ORDER BY reviews DESC LIMIT 10;
--10
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
--11
SELECT  app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
--12
SELECT SUM (reviews) FROM analytics;
--13
SELECT category, COUNT(app_name)  from analytics GROUP BY category HAVING COUNT(app_name) > 300;
--14
 SELECT app_name, reviews, min_installs, min_installs/reviews as proportion FROM analytics  WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;
 --15







