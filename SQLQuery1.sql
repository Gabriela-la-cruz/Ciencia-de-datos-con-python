--una linea de comentario 
USE Neptuno

--Las sentencias SQL que muestran datos, son las que empiezan por SELECET y no los modifica 
--es de solo lectura. La sentencia SELECT tiene 2 partes 
-- que son sujeto y predicado, el sujeto es la sentencia hasta el from
-- el predicado despues del from 

SELECT *
FROM Pedidos;

SELECT Cargo, Destinatario
FROM Pedidos;

SELECT Destinatario as Cliente 
FROM Pedidos;

SELECT * 
FROM Pedidos
ORDER BY Destinatario DESC;

SELECT *
FROM Pedidos
WHERE PaísDestinatario = 'Alemania';

SELECT *
FROM Pedidos
WHERE PaísDestinatario = 'Alemania'
ORDER BY CiudadDestinatario;

SELECT TOP 5 *
FROM Pedidos;

-- Si tiene espacio en blancos la tabla, va entre corchetes
SELECT *
FROM [Detalles de pedidos];

-- Calcular un campo

SELECT PrecioUnidad, Cantidad,IdPedido, (PrecioUnidad*Cantidad) as Importe
FROM [Detalles de pedidos];


SELECT TOP 50 *
FROM pedidos
WHERE PaísDestinatario = 'Finlandia' or PaísDestinatario = 'Suiza';

SELECT *
FROM Categorías;