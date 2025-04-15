
-- Dados de exemplo simulados para Pagila
INSERT INTO category (name) VALUES ('Action'), ('Comedy'), ('Drama');

INSERT INTO film (title, length, category_id) VALUES
('The Matrix', 136, 1),
('Forrest Gump', 142, 3),
('Toy Story', 81, 2);

INSERT INTO customer (first_name, last_name) VALUES
('Lucas', 'Silva'),
('Maria', 'Oliveira'),
('João', 'Souza');

INSERT INTO rental (film_id, customer_id) VALUES
(1, 1),
(2, 1),
(3, 2);

INSERT INTO payment (customer_id, rental_id, amount) VALUES
(1, 1, 4.99),
(1, 2, 3.99),
(2, 3, 2.99);
