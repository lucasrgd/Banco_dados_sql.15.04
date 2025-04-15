
-- Estrutura mínima simulada do banco Pagila (exemplo resumido)
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL
);

CREATE TABLE film (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    length INT,
    category_id INT REFERENCES category(category_id)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE rental (
    rental_id SERIAL PRIMARY KEY,
    film_id INT REFERENCES film(film_id),
    customer_id INT REFERENCES customer(customer_id)
);

CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer(customer_id),
    rental_id INT REFERENCES rental(rental_id),
    amount NUMERIC(5,2)
);
