-- Assignment 2 SQL Query tasks --  created by Mohamed Ahmed 

use world;
select * from city;

# Task 3 Using the count statemnet to show the number of USA cities 
select count(countryCode) as " Number of USA cities"
from city
where countryCode = 'USA';


# Task 4 Population and Life Expectancy for the people in Argentina (ARG)
select Name, Population, LifeExpectancy
from country
where code = 'ARG';


#Task 5 - The country that has the highest life expectancy
select Code, Name, LifeExpectancy
from country
where LifeExpectancy = (select max(LifeExpectancy)
from country);

-- Another way for creating a query for task 5
select Code, Name, LifeExpectancy
from country
order by LifeExpectancy desc
limit 5;



# Task 6 -  The 25 cities that starts with the letter (F)
select ID, Name, CountryCode
from city
where name like 'F%'
limit 25;



# Task 7 - City table showing the first 10 rows
Select ID, Name, Population
from city
limit 10;



# Task 8 - Cities with a population larger than 2000000
 select ID, name, population
from city
where Population > 2000000;




# Task 9 -  All city names whose name begins with (Be) prefix
select id, Name from city where Name like 'Be%';



# Task 10 - cities with population of 500000 and 1000000 
select  name, population
from city
where Population between 500000 and 1000000 
order by population desc;



#Task 11 - The city with the lowest population 
select min(population) as Lowest_City_with_population
from city;

-- Another way for creating a query for #task 11
select Id, Name, Population
from city
where Population = ( select min(population) 
from city);



# Task 12 - The population of Switzerland and all the languages spoken there 
select c.code, c.Name,c.population, lan.Language,lan.ISOfficial, lan.percentage
from country as c
join countrylanguage as lan
on c.code = lan.countrycode
where c.code = 'CHE'; 

-- to verify the query for task 12 to show the population of Switzerland
select name,population
from country 
where name = 'Switzerland';

-- to verify the query for task 12 to show the langueges spoken in Switzerland
select countryCode,Language
from Countrylanguage
where countryCode = 'CHE';



