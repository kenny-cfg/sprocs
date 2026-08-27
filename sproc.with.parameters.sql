-- 1. Create a stored procedure called UpdateMenuItemPrice to update
-- the price of an item.
-- 2. The procedure should take in the item_id and the new_price as
-- input.
-- 3. Call the procedure to update the price of the item_id with the value
-- 1 to £6.99

USE CodingExample;

DROP PROCEDURE IF EXISTS updateMenuItemPrice;
DELIMITER //
CREATE PROCEDURE updateMenuItemPrice(IN item_id_to_change INT, IN new_price DECIMAL(5, 2))
BEGIN
	UPDATE MenuItems
	SET price = new_price
	WHERE item_id = item_id_to_change;
END //
DELIMITER ;

SELECT * FROM MenuItems;

CALL updateMenuItemPrice(1, 6.99);

SELECT * FROM MenuItems;