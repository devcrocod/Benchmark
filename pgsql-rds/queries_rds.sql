--- 1 ---
SELECT count(*) FROM weather;

--- 2 ---
SELECT count(*) FROM weather WHERE date >= '2017-09-09';

--- 3 --
SELECT city, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' GROUP BY city;

--- 4 ---
SELECT city, count(DISTINCT id) FROM weather GROUP BY city;

--- 5 ---
SELECT extract(MONTH from date) as date, city, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' GROUP BY extract(MONTH from date), city;

--- 6 ---
SELECT extract(MONTH from date) as date, city, count(DISTINCT id) FROM weather GROUP BY extract(MONTH from date), city;

--- 7 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, city, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01'), city;

--- 8 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, city, count(DISTINCT id) FROM weather GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01'), city;

--- 9 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' AND city = 'Saint-Petersburg' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');

--- 10 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE city = 'Saint-Petersburg' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');

--- 11 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' AND city = 'Moscow' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');

--- 12 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE city = 'Moscow' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');

--- 13 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' AND city = 'Saint-Petersburg' AND precipitation >= 40 GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');

--- 14 ---
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE city = 'Saint-Petersburg' AND precipitation >= 40 GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');