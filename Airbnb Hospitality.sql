-- Q2 Write a query to show names from Listings table
 SELECT * FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q3 Write a query to fetch total listings from the listings table
 select count(id) from `air bnb`.`sql airbnb hospitality project 2 new17075530021`;
 -- Q4  Write a query to fetch total listing_id from the booking_details table
 select count(listing_id) from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q5 Write a query to fetch host ids from listings table
 select host_id from `air bnb`.`sql airbnb hospitality project 2 new17075530021`;
 -- Q6 Write a query to fetch all unique host name from listings table
 select distinct(host_name) from `air bnb`.`sql airbnb hospitality project 2 new17075530021`
 order by host_name;
 -- Q7 Write a query to show all unique neighbourhood_group from listings table
 select distinct(neighbourhood_group) from `air bnb`.`sql airbnb hospitality project 2 new17075530021`
 order by neighbourhood_group;
 -- Q8 Write a query to show all unique neighbourhood from listings table
 select distinct(neighbourhood) from `air bnb`.`sql airbnb hospitality project 2 new17075530021`
 order by neighbourhood;
 -- Q9   Write a query to fetch unique room_type from listings tables
 select distinct(room_type) from `air bnb`.`sql airbnb hospitality project 2 new17075530021`;
 -- Q10 Write a query to show all values of Brooklyn & Manhattan from listings tables
 select * from `air bnb`.`sql airbnb hospitality project 2 new17075530021`
 where neighbourhood_group = 'Brooklyn' & 'Manhattan';
 -- Q11 Write a query to show maximum price from booking_details table
 select max(price) as Max_price from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q12 Write a query to show minimum price fron booking_details table
 select min(price) as Min_price from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q13 Write a query to show average price from booking_details table
 select avg(price) as Avg_Price from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q14 Write a query to show minimum value of minimum_nights from booking_details table
 select min(minimum_nights) as Min_nights from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q15 Write a query to show maximum value of minimum_nights from booking_details table
 select max(minimum_nights) as Max_Min_nights from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q16 Write a query to show average availability_365
 select avg(availability_365) as Avg_Availability_365 from `air bnb`.`sql airbnb hospitality project 2 new17075530020`;
 -- Q17 Write a query to show id , availability_365 and all availability_365 values greater than 300
 select listing_id as Id, availability_365, availability_365 as all_availability_365 from `air bnb`.`sql airbnb hospitality project 2 new17075530020`
 where availability_365 > 300;
 -- Q18 Write a query to show count of id where price is in between 300 to 400
 select count(listing_id) as ID, price from `air bnb`.`sql airbnb hospitality project 2 new17075530020`
 where price between 300 and 400;
 -- Q19 Write a query to show count of id where minimum_nights spend is less than 5
 select count(listing_id) as ID from `air bnb`.`sql airbnb hospitality project 2 new17075530020`
 where minimum_nights < 5;
 -- Q20 Write a query to show count where minimum_nights spend is greater than 100
 select count(*) as count_Min_nights  from `air bnb`.`sql airbnb hospitality project 2 new17075530020`
 where minimum_nights > 100;
 -- Q21 Write a query to show all data of listings & booking_details
 select * 
 FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
 join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id;
  -- Q22 Write a query to show host name and price
  select t1.price,t2.host_name FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id;
  -- Q23 Write a query to show room_type and price
   select t1.price,t2.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id;
  -- Q24 Write a query to show neighbourhood_group & minimum_nights spend
  select t1.minimum_nights,t2.neighbourhood_group FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id;
  -- Q25 Write a query to show neighbourhood & availability_365
 select t1.availability_365,t2.neighbourhood FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id;
  -- Q26 Write a query to show total price by neighbourhood_group
   select sum(t1.price) as Total_price ,t2.neighbourhood_group FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id
  group by neighbourhood_group;
  -- Q27 Write a query to show maximum price by neighbourhood_group
  select max(t1.price) as Maximum_price ,t2.neighbourhood_group FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id
  group by neighbourhood_group;
-- Q28 Write a query to show maximum night spend by neighbourhood_group
 select max(t1.minimum_nights) as Maximum_night ,t2.neighbourhood_group FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id
  group by neighbourhood_group;
  -- Q29 Write a query to show maximum reviews_per_month spend by neighbourhood
  select max(t1.reviews_per_month) as Maximum_reviews_per_month ,t2.neighbourhood FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id
  group by neighbourhood;
  -- Q30  Write a query to show maximum price by room type
   select max(t1.price) as Maximum_price ,t2.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id
  group by room_type;
  -- Q31 Write a query to show average number_of_reviews by room_type
  select avg(t1.number_of_reviews) as average_number_of_reviews ,t2.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as t1
  join 
  `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2
  on t1.listing_id = t2.id
  group by room_type;
  -- Q32 Write a query to show average price by room type
  select avg(t1.price) as average_price, t2.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020`  as t1
  join
   `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2 
   on t1.listing_id = t2.id
   group by room_type;
  -- Q33 Write a query to show average night spend by room type
    select avg(t1.minimum_nights) as average_night, t2.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020`  as t1
  join
   `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2 
   on t1.listing_id = t2.id
   group by room_type;
   -- Q34 Write a query to show average price by room type but average price is less than 100
  select avg(t1.price) as average_price, t2.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020`  as t1
  join
   `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2 
   on t1.listing_id = t2.id
   where price <100
   group by room_type;
 -- Q35 Write a query to show average night by neighbourhood and average_nights is greater than 5
 select avg(t1.minimum_nights) as average_night, t2.neighbourhood FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020`  as t1
  join
   `air bnb`.`sql airbnb hospitality project 2 new17075530021` as t2 
   on t1.listing_id = t2.id
   where minimum_nights > 5
   group by neighbourhood;
   -- Q36 Write a query to show all data from listings where price is greater than 200 using sub-query.
   SELECT t1.*, t2.price
FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` AS t1
JOIN `air bnb`.`sql airbnb hospitality project 2 new17075530020` AS t2
ON t1.id = t2.listing_id
WHERE t2.listing_id IN (
    SELECT listing_id
    FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020`
    WHERE price > 200
);
-- Q37 Write a query to show all values from booking_details table where host id is 308652 using sub-query.
SELECT t1.*, t2.host_id
FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` AS t1
  JOIN `air bnb`.`sql airbnb hospitality project 2 new17075530021` AS t2
ON t1.listing_id = t2.id
WHERE t2.id IN (
    SELECT id
    FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021`
    WHERE host_id = 308652
);
-- Q38 Find all pairs of id having the same host id, each pair coming once only.
SELECT 
    a.id AS id1, 
    b.id AS id2, 
    a.host_id
FROM 
    `air bnb`.`sql airbnb hospitality project 2 new17075530021` AS a
JOIN 
    `air bnb`.`sql airbnb hospitality project 2 new17075530021` AS b
ON 
    a.host_id = b.host_id;
-- Q39 Write an sql query to show fetch all records that have the term cozy in name
SELECT * FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021`
where name like'%Cozy%';
-- Q40 Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
select a.price,b.host_id,b.neighbourhood_group FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as a
join
`air bnb`.`sql airbnb hospitality project 2 new17075530021` as b
on a.listing_id = b.id
where neighbourhood_group = 'Manhattan';
-- Q41 Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100
select  a.price,b.id,b.host_name,b.neighbourhood FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as a
join
`air bnb`.`sql airbnb hospitality project 2 new17075530021` as b
on a.listing_id = b.id
where neighbourhood in ('Upper West Side' , 'Williamsburg') 
having price >100;
-- Q42 Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
select a.id,a.host_name,a.neighbourhood,b.price FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` as a
join
 `air bnb`.`sql airbnb hospitality project 2 new17075530020`as b
on a.id = b.listing_id
where neighbourhood = 'Bedford-Stuyvesant';
-- Q43 Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select a.host_name, b.availability_365, b.minimum_nights FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` as a
join 
 `air bnb`.`sql airbnb hospitality project 2 new17075530020` as b
 on a.id = b.listing_id
 where availability_365 and minimum_nights >100;
 -- Q44 Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+
select a.number_of_reviews,a.reviews_per_month, b.id as fetch_id ,b.host_name  FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as a
join 
`air bnb`.`sql airbnb hospitality project 2 new17075530021` as b
on a.listing_id = b.id
where number_of_reviews>=400;
-- Q45 Write a query to show neighbourhood_group which have most total number of review
select a.neighbourhood_group ,sum(b.number_of_reviews) as Total_Reviews FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` as a
join 
`air bnb`.`sql airbnb hospitality project 2 new17075530020` as b
on a.id = b.listing_id
group by neighbourhood_group
order by number_of_reviews desc
limit 1;
-- Q46 Write a query to show host name which have most cheaper total price
select a.host_name ,sum(b.price) as total_price FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` as a
join 
`air bnb`.`sql airbnb hospitality project 2 new17075530020` as b
on a.id = b.listing_id
group by host_name
order by price asc
limit 1;
-- Q47  Write a query to show host name which have most costly total price
select a.host_name ,sum(b.price) as total_price FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` as a
join 
`air bnb`.`sql airbnb hospitality project 2 new17075530020` as b
on a.id = b.listing_id
group by host_name
order by price desc
limit 1;
-- Q48 Write a query to show host name which have max price using sub-query
SELECT a.host_name, SUM(b.price) AS total_price
FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` AS a
JOIN `air bnb`.`sql airbnb hospitality project 2 new17075530020` AS b
ON a.id = b.listing_id
GROUP BY a.host_name
HAVING total_price = (
    SELECT MAX(total_price)
    FROM (
        SELECT SUM(price) AS total_price
        FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` AS a
        JOIN `air bnb`.`sql airbnb hospitality project 2 new17075530020` AS b
        ON a.id = b.listing_id
        GROUP BY a.host_name
    ) AS subquery
)
LIMIT 1;
-- Q49 Write a query to show neighbourhood_group where price is less than 100
select a.neighbourhood_group,b.price FROM `air bnb`.`sql airbnb hospitality project 2 new17075530021` as a
join 
`air bnb`.`sql airbnb hospitality project 2 new17075530020` as b
on a.id = b.listing_id
where price <100;
-- Q50 Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.
select max(a.price) as max_price, avg(a.availability_365) as average_ava_365,b.room_type FROM `air bnb`.`sql airbnb hospitality project 2 new17075530020` as a
join 
`air bnb`.`sql airbnb hospitality project 2 new17075530021` as b 
on a.listing_id = b.id
group by room_type
order by price asc ;



