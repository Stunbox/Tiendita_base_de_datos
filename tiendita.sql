

-- Descrease Stock
DELIMITER \\
Create Trigger DecreaseStock after insert on venta_producto
For each row 
BEGIN 
      update producto set Stock = (Stock - new.Cantidad) where idProducto = new.idProducto;
END \\
DELIMITER ;
--
