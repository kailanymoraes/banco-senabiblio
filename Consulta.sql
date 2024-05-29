/*filtros - ordenação agrupamento*/

SELECT nomeAssociado, cpf, cidade FROM associados INNER JOIN enderecoassociado ON 
associados.idAssociado = enderecoassociado.idAssociado WHERE cidade='são vicente' ORDER BY nomeAssociado DESC

/*função de agrupação 
*/
/*count - contar
sum - somar
avg - extrair a media
min - valor minimo 
max - maior valor
*/

SELECT COUNT(idAssociado) AS 'total de associados' FROM associados
GROUP BY cidade

SELECT cidade, COUNT(idAssociado) AS 'total de associados' FROM enderecoassociado
GROUP BY cidade HAVING COUNT(idAssociado)>=4

SELECT cidade, COUNT(idAssociado) AS 'total de associados' FROM enderecoassociado
GROUP BY cidade HAVING COUNT(idAssociado)>=4 ORDER BY COUNT(idAssociado) ASC

/*distinct separa os dados de forma diferentes, por ex, de forma direta e sem repetir os mesmo dados,
te mostra quantos cidades unicamente existe dentro da tabela */
 
SELECT distinct  cidade FROM enderecoassociado ORDER BY cidade ASC /* ordem alfabetica crescente*/

/* O valor, o nome do associado e os contatos (email e telefone) 
do associado que pagou a maior multa */
 
SELECT nomeassociado, ddd, numero, email, valor FROM multas 
INNER JOIN emprestimos
ON multas.idemprestimo = emprestimos.idemprestimo
INNER JOIN associados
ON associados.idAssociado = emprestimos.idassociado
INNER JOIN emails
ON associados.idAssociado = emails.idAssociado
INNER JOIN contatostelefonicos
ON associados.idAssociado = contatostelefonicos.idAssociado
WHERE valor=(SELECT MAX(valor) FROM multas)
 
SELECT valor FROM multas
LIMIT 3
 
/*  todos os livros que possuam dois autores ou mais. dados dos livros: nome livro, qtd paginas, editora*/
 
SELECT nome, qtdpaginas, editoras.nomeEditora FROM livros 
INNER JOIN autoreslivros
ON livros.idLivro = autoreslivros.idLivro
INNER JOIN autores
ON autores.idAutor = autoreslivros.idLivro
INNER JOIN editoras
ON editoras.ideditora = livros.idEditora
GROUP BY livros.idlivro
HAVING COUNT(autoreslivros.idAutor)>=2
 
SELECT * FROM autoreslivros
 
/*Relatório de quantos livros cada autor escreveu
levando em conta apenas os autores que escreveram mais de 2
livros. Tudo isto em ordem alfabética por nome do autor*/

SELECT * FROM livros
SELECT * FROM autores



SELECT nomeAutor FROM autoreslivros
INNER JOIN autores ON autoreslivros.idautor=autores.idautor
INNER JOIN livros ON autoreslivros.idlivro=livros.idlivro
GROUP BY nomeAutor having COUNT(autoreslivros.idautor)>=2; 

/*Trazer quantos emprestimos foram realizados por data*/

SELECT * FROM emprestimos
SELECT * FROM emprestimosLivros

SELECT dataretirada, COUNT(idEmprestimo)
AS 'total emprestimo'
FROM emprestimos
GROUP BY dataretirada
ORDER BY dataretirada DESC


/*Sumiu um livro na biblioteca e precisamos saber o histórico
dos emprestimos deste livro. 
A query deve trazer o nome de quem o emprestou, a data, o nome 
do associado. Escolha um livro para servir como filtro da busca.
O resultado deve ser mostrado da data mais atual para a mais antiga*/


SELECT * FROM emprestimos 
SELECT * FROM funcionarios
SELECT * FROM associados
SELECT * FROM emprestimoslivros


/*--------views--------*/

CREATE VIEW vw_EmprestimosPorFuncionarioEAssociado AS 
SELECT nomefuncionario, dataretirada, datadevolucaoefetiva, nomeassociado FROM funcionarios
INNER JOIN emprestimos ON funcionarios.idfuncionario=emprestimos.idfuncionario
INNER JOIN associados ON associados.idassociado=emprestimos.idassociado
INNER JOIN emprestimoslivros ON emprestimoslivros.idemprestimo=emprestimos.idemprestimo
INNER JOIN livros ON emprestimoslivros.idlivro = livros.idLivro
WHERE nome= 'a cantiga dos pássaros e das serpentes'
ORDER BY dataretirada desc

SELECT * FROM vw_EmprestimosPorFuncionarioEAssociado


CREATE VIEW vw_AssociadoContatos AS 
SELECT nomeAssociado, email, numero FROM associados
INNER JOIN emails ON associados.idassociado=emails.idAssociado
INNER JOIN contatostelefonicos ON associados.idassociado=contatostelefonicos.idAssociado


/* ------stored procedures - procedimentos armazenados--------

criar uma procedure para inserir uma editora
*/

CREATE PROCEDURE pi_editoras
(IN nome VARCHAR(30))
INSERT INTO editoras (nomeeditora)
VALUES (nome);

call pi_editoras ('abril')


SELECT * FROM editoras


SELECT * FROM emprestimos




SELECT emprestimo, nomeassociado COUNT(idEmprestimo) FROM emprestimos
INNER JOIN associados ON associados.idassociados=emprestimos.idassociados
GROUP BY(idAssociado)





























