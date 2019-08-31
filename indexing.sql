SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- 22.135ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' and model_code = 'GT-R';
-- 13.503ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
-- 18.601ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010 and 2015;
-- 191.071ms

SELECT *
FROM car_models
WHERE year = 2010;
-- 48.563ms

CREATE INDEX codeIndex
ON car_models (make_code, model_code);
-- 374.491ms

CREATE INDEX titleIndex
ON car_models (make_title, model_title);
-- 390.453ms

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- 1.307ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' and model_code = 'GT-R';
-- 0.897ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
-- 2.849ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010 and 2015;
-- 204.586ms

SELECT *
FROM car_models
WHERE year = 2010;
-- 68.878ms

-- I think it is not running faster because the year column is not currently indexed.