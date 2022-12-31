create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	payment_info VARCHAR(150),
	cart_id INTEGER not null,
	foreign key(cart_id) references cart(cart_id)
);

create table cart(
	cart_id SERIAL primary key,
	ticket_id INTEGER not null,
	foreign key(ticket_id) references ticket(ticket_id),
	item_id INTEGER not null,
	foreign key(item_id) references concession(item_id),
	total_cost NUMERIC(5,2)
);

create table concession(
	item_id SERIAL primary key,
	amount NUMERIC(3,2)
);

create table movie(
	movie_id SERIAL primary key,
	title VARCHAR(100),
	rating VARCHAR(10)
);

create table ticket(
	ticket_id SERIAL primary key,
	amount NUMERIC(3,2),
	movie_id INTEGER not null,
	foreign KEY(movie_id) references movie(movie_id)
);