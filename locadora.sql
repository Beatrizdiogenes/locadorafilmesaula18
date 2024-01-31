CREATE DATABASE locadora;
USE locadora;

CREATE TABLE filmes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255),
    genero VARCHAR (255),
    ano INT,
    preco FLOAT
);

CREATE TABLE cliente (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255),
    idade INT,
    endereco TEXT
);
CREATE TABLE aluguel (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id),
    id_filme INT,
    FOREIGN KEY (id_filme) REFERENCES filmes (id)
);

INSERT INTO 
filmes (nome, genero, ano, preco)
VALUES
("O Rei leão", "fantasia", 1994, 10.90),
("O senhor dos aneis", "Mistério", 2010, 15.99),
("Harry Potter", "Fantasia", 2005, 20.00),
("Star Wars", "ação", 1977, 17.99),
("Vingadores", "ação", 2018, 25.99),
("A vida é bela", "tragicomédia",1997, 7.99),
("O exterminador do futuro 2", "Ficção cientifica", 1991, 17.99),
("Capitão america", "ação", 2016, 15.99),
("Guardians of the Galaxy Vol 2 ", "Ação", 2017, 8.99),
("Spider-Man", "Ação", 2017, 14.99);

INSERT INTO 
cliente (nome, idade, endereco)
VALUES
("Maria",27, "Jovita feitosa, 477"),
("João", 25, "Carolina Sucupira, 1555"),
("Livia", 19, "Dr general, 459"),
("Valmir", 28, "Av bezerra de menezes, 777"),
("Eric", 40, "Rua Cardoso de barros, 111");

INSERT INTO 
aluguel (id_cliente, id_filme)
VALUES
	(1, 3),
    (1, 5),
    (2, 1),
    (2, 2),
    (2, 8),
    (5, 7),
    (5, 9),
    (5, 10);
    
UPDATE filmes SET nome = "Narnia", genero = "Fantasia", ano = 2003, preco = 4.50  WHERE id =4;

DELETE FROM filmes WHERE id = 6;   

SELECT * FROM filmes; 

SELECT * FROM filmes WHERE ano >= 2010; 

SELECT * FROM filmes WHERE preco <= 5;



SELECT * FROM filmes;
