CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT
);

INSERT INTO produtos (nome, preco, estoque) VALUES
('Café Expresso', 7.50, 25),
('Cappuccino', 12.00, 18),
('Croissant', 9.00, 12);

INSERT INTO clientes (nome, email) VALUES
('Mariana Alves', 'mariana@gmail.com'),
('Carlos Souza', 'carlos@gmail.com');

INSERT INTO pedidos (cliente_id, produto_id, quantidade) VALUES
(1, 2, 1),
(2, 1, 3);

SELECT * FROM produtos;

SELECT nome, preco FROM produtos
WHERE preco BETWEEN 7 AND 10;

SELECT nome FROM produtos
WHERE preco NOT BETWEEN 8 AND 20;

UPDATE produtos
SET preco = 8.00
WHERE nome = 'Café Expresso';

DELETE FROM clientes
WHERE email LIKE '%gmail%';
