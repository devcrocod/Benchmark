CREATE TABLE public.weather
(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  city VARCHAR(255),
  temp_low INT,
  temp_high INT,
  precipitation INT,
  date TIMESTAMP
);
CREATE UNIQUE INDEX weather_id_uindex ON public.weather (id);