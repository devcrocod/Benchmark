SELECT count(*) FROM weather;
SELECT count(*) FROM weather WHERE date >= '2017-09-09';
SELECT city, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' GROUP BY city;
SELECT city, count(DISTINCT id) FROM weather GROUP BY city;
SELECT extract(MONTH from date) as date, city, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' GROUP BY extract(MONTH from date), city;
SELECT extract(MONTH from date) as date, city, count(DISTINCT id) FROM weather GROUP BY extract(MONTH from date), city;
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, city, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01'), city;
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, city, count(DISTINCT id) FROM weather GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01'), city;
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' AND city = 'Saint-Petersburg' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE city = 'Saint-Petersburg' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' AND city = 'Moscow' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE city = 'Moscow' GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE date >= '2017-09-09' AND city = 'Saint-Petersburg' AND precipitation >= 40 GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');
SELECT concat(extract(YEAR from date), '-', extract(MONTH from date), '-01') as date, count(DISTINCT id) FROM weather WHERE city = 'Saint-Petersburg' AND precipitation >= 40 GROUP BY concat(extract(YEAR from date), '-', extract(MONTH from date), '-01');