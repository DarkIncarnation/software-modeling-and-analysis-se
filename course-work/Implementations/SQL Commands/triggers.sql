USE AMAZON;

GO

CREATE TRIGGER UpdateOrderTotal_Insert
ON ORDER_PRODUCTS
AFTER INSERT
AS
BEGIN
	DECLARE @OrderID INT;
	SELECT @OrderID = OrderID FROM inserted;
	EXEC CalculateOrderTotal @OrderID;
END;

GO

CREATE TRIGGER UpdateOrderTotal_Update
ON ORDER_PRODUCTS
AFTER UPDATE
AS
BEGIN
	DECLARE @OrderID INT;
	SELECT @OrderID = OrderID FROM inserted;
	EXEC CalculateOrderTotal @OrderID;
END;

GO

CREATE TRIGGER UpdateOrderTotal_Delete
ON ORDER_PRODUCTS
AFTER DELETE
AS
BEGIN
	DECLARE @OrderID INT;
	SELECT @OrderID = OrderID FROM deleted;
	EXEC CalculateOrderTotal @OrderID;
END;

GO

CREATE TRIGGER UpdateSellerRating_Insert
ON REVIEWS
AFTER INSERT
AS
BEGIN
	DECLARE @SellerID INT;
	SELECT @SellerID = PRODUCTS.SellerID
	FROM inserted
	JOIN PRODUCTS on inserted.ProductID = PRODUCTS.ProductID;
	EXEC CalculateSellerRating @SellerID;
END;

GO

CREATE TRIGGER UpdateSellerRating_Update
ON REVIEWS
AFTER UPDATE
AS
BEGIN
	DECLARE @SellerID INT;
	SELECT @SellerID = PRODUCTS.SellerID
	FROM inserted
	JOIN PRODUCTS on inserted.ProductID = PRODUCTS.ProductID;
	EXEC CalculateSellerRating @SellerID;
END;

GO

CREATE TRIGGER UpdateSellerRating_Delete
ON REVIEWS
AFTER DELETE
AS
BEGIN
	DECLARE @SellerID INT;
	SELECT @SellerID = PRODUCTS.SellerID
	FROM deleted
	JOIN PRODUCTS on deleted.ProductID = PRODUCTS.ProductID;
	EXEC CalculateSellerRating @SellerID;
END;