/*valores*/

INSERT INTO editoras (nomeEditora) VALUES ('Érica'); 
INSERT INTO editoras (nomeEditora) VALUES ('Person'); 
INSERT INTO editoras (nomeEditora) VALUES ('Atlas'); 
INSERT INTO editoras (nomeEditora) VALUES ('FTD');

INSERT INTO generos(nomeGenero) 
VALUES('Romance'), 
		('Drama'), 
		('Tecnologia'), 
		('Fantasia'), 
		('Biografia');
		
INSERT INTO autores(nomeAutor)  
VALUES ('Suzanne Collins'),  
('Mauricio de Sousa'),  
('Stephenie Meyer');

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('Java para Leigos', 'do basico ao avançado da linguagem', '9028017029981', 150, '2a', 3); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora)
VALUES ('A cartuxa de Parma', '', '4921029442771', 325, '1a', 1); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('A casa das marés', '', '3321059442771', 256, '1a', 1); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('PHP avançado', 'avançado da linguagem PHP', '4923029562771', 475, '3a', 2); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('A hospedeira', '', '8923029062779', 280, '7a', 4); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('Ariadne', 'Igual a Irene Idler de S. Holmes', '9923029422779', 512, '1a', 2); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('A distância entre nós', '', '9927008422779', 200, '5a', 3); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('Bill Gates', 'Historia do Bill Gates', '3783022422779', 156, '1a', 4); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('Criador do Linux', 'Historia do Linus Torvalds', '37830213224799', 159, '1a', 3); 

INSERT INTO livros (nome, sinopse, isbn, qtdPaginas, edicao, idEditora) 
VALUES ('A cantiga dos pássaros e das serpentes', 'aves e cobras?', '76829113224799', 156, '3a', 2); 

SELECT * FROM funcionarios;

INSERT INTO associados (nomeAssociado, cpf) values ('Anna Sbrahma', '11045652840'),('Arthur Tiengo','20504598758'), 
 ('Allan Matias', '25687942642'),('José Robson','24647531548'),('Leticia Avolio','42658576631'), 
 ('Kailany Moraes','41325286675'),('Renato Gitson','21358478820'),('Samantha Carioca','20365228447'), 
 ('Marcelo Isidoro','32568545520'),('Edison Saudades','52658442020'); 
 
INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  
VALUES ('Caio Belky', 'Belky23', 'belkyc123'); 

INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  
VALUES ('Maria Silva', 'MaryS', 'maria2024'); 

INSERT INTO funcionarios (nomeFuncionario, loginFuncionario, senhaFuncionario)  
VALUES ('Lais Silva', 'Lais', 'laiss123'); 
db_senabiblio

INSERT INTO emprestimos (dataRetirada, dataDevolucao, idFuncionario, idAssociado) values ('02-03-24', '10-03-24', '1', '2'), ('10-04-23', '18-04-23', '2', '4'), ('20-06-22', '30-06-22', '3', '6')

SELECT * FROM emprestimos;

DELETE FROM emprestimos WHERE idEmprestimo > 0;

INSERT INTO emprestimos (dataRetirada, dataDevolucao, idFuncionario, idAssociado) 
values ('02-03-24', '10-03-24', '1', '2'),
		 ('10-04-23', '18-04-23', '2', '4'), 
		 ('20-06-22', '30-06-22', '3', '6')

SELECT * FROM emprestimos;

DELETE FROM emprestimos WHERE idEmprestimo > 0;

INSERT INTO emprestimos (dataRetirada, dataDevolucao, idFuncionario, idAssociado) 
VALUES ('20-05-06', '20-05-10', '1', '2'), 
		 ('22-08-01', '22-08-07', '2', '4'), 
		 ('23-04-05', '23-04-12', '3', '6')

SELECT * FROM emprestimos;

INSERT INTO emprestimos (dataRetirada, dataDevolucao, idFuncionario, idAssociado)
VALUES ('24-01-05', '24-01-11', '1', '8'),
		 ('24-02-05', '24-02-09', '1', '10');
		 
SELECT * FROM emprestimos;

SELECT * FROM livros;

INSERT INTO emprestimoslivros (idEmprestimo, idLivro, dataDevolucaoEfetiva)
VALUES ('7', '5', '24-01-11'),
		 ('8', '10', '20-05-10'),
		 ('9', '8', '22-08-07'),
		 ('10', '1', '23-04-12'),
		 ('11', '4', '24-02-09');
		 
INSERT INTO autores(nomeAutor) 
VALUES ('Barry Burd'), 
		 ('Stendhal'), 
		 ('Jojo Moyes'), 
		 ('Flávio Lisboa'), 
		 ('Jennifer Saint'), 
		 ('Thrity Umrigar'), 
		 ('Bill Gates'), 
		 ('Linus Torvalds');

INSERT INTO autoreslivros (idAutor,idLivro) 
VALUES 
(4,1),
(5,2),
(6,3),
(7,4),
(3,5),
(8,6),
(9,7),
(10,8),
(11,9),
(1,10),
(3,10),
(3,9);

INSERT INTO tiposcontatostelefonicos (nomeContato)
VALUES('Celular'),
		('Residencial'),
		('Comercial'),
		('Recado');
		
INSERT INTO contatosTelefonicos (ddd, numero, idAssociado,idTipoContatoTelefonico) VALUES
(13, 987654321, 2,1),
(13, 987321654, 1,1),
(13, 987654321, 6,1),
(13, 36974125, 4,2),
(13, 963258741, 3,1),
(13, 35712584, 5,3),
(13, 917530148, 8,1),
(13, 38697225, 7,4),
(13, 963257589, 9,1),
(13, 35747139, 10,2);

SELECT * FROM enderecoassociado;

SELECT * FROM associados;

SELECT * FROM livrosgeneros;

INSERT INTO livrosgeneros(idLivro, idGenero) VALUES
(1, 3),
(2, 2),
(3, 3),
(4, 4),
(5, 2),
(6, 5),
(7, 1),
(8, 5),
(9, 3),
(10, 4);

INSERT INTO enderecoassociado (idAssociado,logradouro, numero, complemento, bairro, cidade, UF, cep ) 
VALUES 
(1 ,'R.Alice Machado',1353, 'casa', 'Naútica', 'São Vicente', 'SP',11330300),
(2,'Av.Salagdo filho', 205, 'casa','Naútica','São Vicente', 'SP',11340500), 
(3,'R.Ten.Durval do Amaral', 158, 'Ap.31','Catipoã','São Vicente', 'SP',11330300),
(4,'Av.Ademar de Barros', 200, 'casa','Santa Rosa','Guarujá', 'SP',11250300),
(5,'Av.Ana Costa' , 478, 'Ap.89','Gonzaga','Santos', 'SP','11315355'), 
(6,'R.Av. Pres. Wilson', 15, 'Ap.51','Gonzaga','Santos', 'SP',11319200),
(7,'Av.Cons.Nébias', 200,'Ap.31','Vila Nova','Santos', 'SP',11221600),
(8,'Av.Bernardino de Campos', 657, 'Ap.85','Gonzaga','Santos','SP',11216625), 
(9,'R.Ten.Durval do Amaral',156,'casa','Catipoã','São Vicente','SP',11330300),
(10,'Av.Cons.Nébias',202,'Ap.31','Vila Nova','Santos', 'SP',11221600);

SELECT * FROM emails;

INSERT INTO emails(email,idAssociado)
VALUES ('anabrahma@gmail.com', 1),('reiarthur2006@gmail.com',2),('allanMatias@gmail.com', 3),('JoséRobson2@gmail.com',4),
('LeticiaItalia@gmail.com', 5),('kaka2006@gmail.com',6),('github@gmail.com', 7),('samanthavulgoRJ@gmail.com',8),
('marcelolideranca@gmail.com', 9),('edinhosumido02@gmail.com',10); 

SELECT * from generos;

associadosINSERT INTO multas (valor, statusMulta, idEmprestimo, idLivro) 
VALUES (5.00, 0, 7, 5), (2.00, 0, 7, 10), (1.00, 1, 8, 8), (3.00, 0, 9, 1), (4.25, 1, 10, 4), 
(3.15, 1, 11, 4);

SELECT * FROM emprestimoslivros;

SELECT * FROM emprestimoslivros;