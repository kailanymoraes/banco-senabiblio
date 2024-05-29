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

