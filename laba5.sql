SELECT region, SUM(population) AS Sum_of_region
FROM cities
GROUP BY region;


SELECT region, COUNT(name)AS number_of_cities, SUM(population) AS Sum_of_region
FROM cities
GROUP BY region
HAVING COUNT(name) >= 10;


SELECT id, name, population
FROM cities
WHERE region IN (SELECT uuid
FROM regions
WHERE area_quantity >4)
ORDER BY population DESC
LIMIT 5 OFFSET 10




SELECT id, region, name, SUM(population) AS pop
FROM cities
WHERE population IN (SELECT population 
FROM cities
WHERE population>300000 )
GROUP BY region 



SELECT id, name, population
FROM cities
WHERE region IN (SELECT uuid
FROM regions
WHERE area_quantity <5) AND population>150000 AND population<500000











