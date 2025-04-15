
-- CONSULTAS DA ATIVIDADE COM O BANCO PAGILA

-- 1. Filmes com mais de 2 horas, ordenados por duração decrescente (top 10)
SELECT title, length
FROM film
WHERE length > 120
ORDER BY length DESC
LIMIT 10;

-- 2. Nome dos filmes e suas respectivas categorias
SELECT f.title, c.name AS categoria
FROM film f
JOIN category c ON f.category_id = c.category_id;

-- 3. 5 filmes mais alugados, com respectivos totais de aluguel
SELECT f.title, COUNT(r.rental_id) AS total_alugueis
FROM film f
JOIN rental r ON f.film_id = r.film_id
GROUP BY f.title
ORDER BY total_alugueis DESC
LIMIT 5;

-- 4. Total gasto por cliente (nome completo), do maior para o menor
SELECT c.first_name || ' ' || c.last_name AS nome_completo,
       SUM(p.amount) AS total_gasto
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY nome_completo
ORDER BY total_gasto DESC;

-- 5. Receita total por categoria de filme, da maior para a menor
SELECT c.name AS categoria,
       SUM(p.amount) AS receita_total
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN film f ON r.film_id = f.film_id
JOIN category c ON f.category_id = c.category_id
GROUP BY c.name
ORDER BY receita_total DESC;
