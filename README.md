# Explorando DDL e DML

## DDL e DML no SQL

O SQL (Structured Query Language) é a linguagem utilizada para criar, gerenciar e manipular bancos de dados relacionais.
Dentro dele, existem subconjuntos de comandos com finalidades diferentes (os principais são o DDL e o DML).

---
## DDL — Data Definition Language (Linguagem de Definição de Dados)

A linguagem DDL é responsável por criar e estruturar a base do banco de dados.
Ou seja, ela define como o banco de dados será organizado.

Pense no DDL como a construção do prédio: você cria as paredes, portas, divisões e toda a estrutura física.

O que o DDL faz?
- Cria objetos do banco de dados (tabelas, esquemas, índices, visões).
- Altera objetos já existentes.
- Remove objetos do banco.

## Principais comandos DDL
1. CREATE — Cria estruturas
Usado para criar novas tabelas, bancos de dados ou objetos.

Exemplo:
```
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);
```
2. ALTER — Altera estruturas
Permite modificar uma tabela já existente.

Você pode:
- Adicionar novas colunas
- Renomear colunas
- Mudar o tipo dos atributos
- Remover colunas

Exemplo:
```
ALTER TABLE produtos
ADD categoria VARCHAR(30);
```

3. DROP — Exclui estruturas
Remove definitivamente uma tabela, coluna ou outro objeto.
```
DROP TABLE produtos;
```

---

## Resumo do DDL
| Comando | Função                      |
| ------- | --------------------------- |
| CREATE  | Cria tabelas e estruturas   |
| ALTER   | Modifica tabelas existentes |
| DROP    | Exclui tabelas e objetos    |

---

## DML — Data Manipulation Language (Linguagem de Manipulação de Dados)
Se o DDL constrói o prédio, o DML é o que acontece dentro dele: pessoas entrando, saindo, móveis sendo colocados, informações circulando.

A linguagem DML permite manipular os dados armazenados nas tabelas criadas pelo DDL.

O que o DML faz?
- Insere dados
- Atualiza dados
- Remove dados
- Consulta dados

## Principais comandos DML

1. INSERT — Insere novos registros
Usado para adicionar linhas dentro de uma tabela.

Exemplo:
```
INSERT INTO produtos (nome, preco, estoque)
VALUES ('Café Expresso', 7.50, 25);
```

2. SELECT — Consulta dados
É o comando mais usado no SQL.
Permite buscar, filtrar e visualizar registros.

Exemplos:
```
SELECT * FROM produtos;
```

Filtrar por preço:
```
SELECT nome, preco FROM produtos
WHERE preco BETWEEN 5 AND 10;
```

3. UPDATE — Atualiza dados existentes
Usado para alterar valores específicos de uma linha.

Exemplo:
```
UPDATE produtos
SET preco = 8.00
WHERE nome = 'Café Expresso';
```

4. DELETE — Exclui registros
Remove linhas específicas de uma tabela.

Exemplo:
```
DELETE FROM produtos
WHERE id = 3;
```

---

## Resumo do DML
| Comando | Função             |
| ------- | ------------------ |
| INSERT  | Insere registros   |
| SELECT  | Consulta dados     |
| UPDATE  | Atualiza registros |
| DELETE  | Remove registros   |

---

## DDL x DML — Diferença Principal

| DDL                     | DML                          |
| ----------------------- | ---------------------------- |
| Mexe na **estrutura**   | Mexe nos **dados**           |
| Cria tabelas            | Insere dados                 |
| Altera colunas          | Atualiza dados               |
| Remove tabelas          | Consulta e remove dados      |
| Afeta o sistema inteiro | Afeta os registros da tabela |
