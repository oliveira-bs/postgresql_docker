-- -- Criação das tabelas
-- CREATE TABLE IF NOT EXISTS categories (
--     category_id SERIAL PRIMARY KEY,
--     category_name VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS products (
--     product_id SERIAL PRIMARY KEY,
--     product_name VARCHAR(100) NOT NULL,
--     category_id INT REFERENCES categories(category_id),
--     price NUMERIC(10, 2) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS stock (
--     stock_id SERIAL PRIMARY KEY,
--     product_id INT REFERENCES products(product_id),
--     quantity INT NOT NULL DEFAULT 0
-- );

-- -- Inserção de dados iniciais
-- INSERT INTO categories (category_name) VALUES
--     ('Eletrônicos'),
--     ('Móveis'),
--     ('Roupas');

-- INSERT INTO products (product_name, category_id, price) VALUES
--     ('Smartphone', 1, 1999.99),
--     ('Sofá', 2, 899.99),
--     ('Camiseta', 3, 29.99);

-- INSERT INTO stock (product_id, quantity) VALUES
--     (1, 50),
--     (2, 20),
--     (3, 100);
