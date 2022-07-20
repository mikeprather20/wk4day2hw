CREATE TABLE Customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(20),
    dob INTEGER
);

CREATE TABLE Tickets(
    ticket_id SERIAL PRIMARY KEY,
    cost Numeric(2,2)
);

CREATE TABLE Movies(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    rating VARCHAR(10)
);

CREATE TABLE Concessions(
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(20),
    price Numeric(2,2)
);

CREATE TABLE Concessions_order(
    concessions_order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    concession_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (concession_id) REFERENCES Concessions(concession_id)
);

CREATE TABLE Admission(
    admission_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    movie_id INTEGER,
    customer_id INTEGER,
    consessions_order_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (concessions_order_id) REFERENCES Concessions_order(concessions_order_id)
);
