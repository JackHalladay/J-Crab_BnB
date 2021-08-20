CREATE TABLE requests (
	id SERIAL PRIMARY KEY,
	dates_id int,
	space_id int,
	date DATE,
	user_id int,
	FOREIGN KEY (dates_id) REFERENCES dates (id),
	FOREIGN KEY (space_id) REFERENCES spaces (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
); 
