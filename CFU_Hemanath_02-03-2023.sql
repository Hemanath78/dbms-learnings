CREATE DATABASE IF NOT EXISTS cfu;

USE cfu;

CREATE TABLE IF NOT EXISTS countries (

country_id VARCHAR(2) NOT NULL primary key,
country_name VARCHAR(40) NULL,
region_id INT NULL

);

DESCRIBE countries;

ALTER TABLE countries ADD country_code VARCHAR(3) NOT NULL;

ALTER TABLE countries DROP country_code;

INSERT INTO countries (country_id, country_name, region_id) VALUES ("1", "India" , "1"),("2", "USA" , "2"),("3", "UK" , "3");

SELECT * FROM countries;

INSERT INTO countries (country_id, country_name) VALUES ("4", "Japan"),("5", "China");


INSERT INTO countries (country_id, country_name, region_id) VALUES ("6", "Korea" , "6"),("7", "Russia" , "7"),("8", "Israel", NULL);


UPDATE countries SET region_id ="1234567890" WHERE country_id="8";
 
