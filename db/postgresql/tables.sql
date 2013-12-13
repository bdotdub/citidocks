DROP TABLE IF EXISTS "stations";
CREATE TABLE "stations"
(
  id integer PRIMARY KEY,
  latitude float,
  longitude float,
  station_name text,
  station_address text
);

DROP TABLE IF EXISTS "station_statuses";
CREATE TABLE "station_statuses"
(
  station_id integer,
  status text,
  bikes_available integer,
  docks_available integer,
  month integer,
  day integer,
  hour integer,
  minute integer,
  PRIMARY KEY (station_id, day, hour, minute)
)
