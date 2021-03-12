SELECT
 (SELECT name FROM cities WHERE cities.label = flights.from) AS Откуда,
 (SELECT name FROM cities WHERE cities.label = flights.to) AS Куда
FROM flights;