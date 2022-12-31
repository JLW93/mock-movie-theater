-- Movie

insert into movie(movie_id, title, rating)
values(1, 'The Shawshank Redemption', 'R');

insert into movie(movie_id, title, rating)
values(2, 'The Godfather', 'R');

insert into movie(movie_id, title, rating)
values(3, 'The Dark Knight', 'PG-13');

insert into movie(movie_id, title, rating)
values(4, 'The Godfather Part II', 'R');

insert into movie(movie_id, title, rating)
values(5, 'Schindlers List', 'R');

insert into movie(movie_id, title, rating)
values(6, 'The Lord of the Rings: The Return of the King', 'PG-13');


-- Ticket

insert into ticket(ticket_id, amount, movie_id)
values(1, 9.99, 1);

insert into ticket(ticket_id, amount, movie_id)
values(2, 5.99, 2);

insert into ticket(ticket_id, amount, movie_id)
values(3, 6.99, 3);

insert into ticket(ticket_id, amount, movie_id)
values(4, 5.99, 4);

insert into ticket(ticket_id, amount, movie_id)
values(5, 5.99, 5);

insert into ticket(ticket_id, amount, movie_id)
values(6, 5.99, 6);

-- Concession

insert into concession(item_id, item, amount)
values(1, 'Soda', 3.99);

insert into concession(item_id, item, amount)
values(2, 'Popcorn', 6.99);

insert into concession(item_id, item, amount)
values(3, 'Nachos', 5.99);

insert into concession(item_id, item, amount)
values(4, 'Candy', 2.99);

insert into concession(item_id, item, amount)
values(5, 'Slushie', 5.99);

-- Cart

insert into cart(cart_id, ticket_id, item_id, total_cost)
values(1, 1, 2, 16.98);

insert into cart(cart_id, ticket_id, item_id, total_cost)
values(2, 3, 5, 12.98);

insert into cart(cart_id, ticket_id, item_id, total_cost)
values(3, 5, 4, 8.98);

-- Customer

insert into customer(customer_id, first_name, last_name, payment_info, cart_id)
values(1, 'Ronald', 'McDonald', '4802 3636 2564 1187 653 07/26', 2);

insert into customer(customer_id, first_name, last_name, payment_info, cart_id)
values(2, 'Jonah', 'Jameson', '9836 2254 8564 1283 721 10/27', 3);

insert into customer(customer_id, first_name, last_name, payment_info, cart_id)
values(3, 'Bruce', 'Banner', '2216 3285 5596 3343 587 11/23', 1);



-- Test

select first_name, last_name, title, total_cost
from customer
full join cart
on customer.cart_id = cart.cart_id
full join ticket
on cart.ticket_id = ticket.ticket_id
full join movie
on ticket.movie_id = movie.movie_id
where first_name is not null;






