CREATE TABLE Customer1(
	member_id SERIAL primary key,
 	first_name VARCHAR(100),
 	last_name VARCHAR(100),
 	billing_info VARCHAR(150)
 );

CREATE TABLE Inventory1(
	upc SERIAL primary key,
	food_amount INTEGER
);

CREATE TABLE Staff1(
 	staff_id SERIAL primary key,
 	full_name VARCHAR(150)
);

CREATE TABLE Theater1(
	theater_id SERIAL primary key,
	theatre_row VARCHAR(5),
	seat NUMERIC(2,2)
);

CREATE TABLE Movie1(
	movie_id SERIAL primary key,
	movie_name VARCHAR(150)
	screening_time NUMERIC(2,2),
	screening_date DATE,
	theater_id INTEGER not null,
	foreign key (theater_id) references Theater1(theater_id)
);

CREATE TABLE Concessions1(
 	food_id SERIAL primary key,
 	amount NUMERIC(5,2),
 	food_name VARCHAR(150),
 	staff_id INTEGER not null,
 	upc INTEGER not null,
    FOREIGN KEY (staff_id) REFERENCES Staff1(staff_id),
    foreign key (upc) references Inventory1(upc)
);

CREATE TABLE Ticket1(
  ticket_id SERIAL primary key,
  price NUMERIC(10,2),
  staff_id INTEGER not null,
  movie_id INTEGER not null,
  foreign key (staff_id) references Staff1(staff_id),
  foreign key (movie_id) references Movie1(movie_id)
);



