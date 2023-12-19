
CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);
/**For input of countries table use of countries.csv
and header option must be ticked in postgres**/
CREATE TABLE countries(
	id SERIAL primary key,
	country_code varchar(200) ,
	country_name varchar(200) 

);

INSERT INTO users (name, color)
VALUES ('Amit', 'green'), ('Birdar', 'powderblue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('IN', 1), ('NP', 1), ('CA', 2), ('FR', 2 );

SELECT * FROM visited_countries
JOIN users
ON users.id = user_id;
