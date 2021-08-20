CREATE TABLE dates (
	id SERIAL PRIMARY KEY,
	space_id int,
	status varchar,
	date DATE,
	FOREIGN KEY (space_id) REFERENCES spaces (id)
);