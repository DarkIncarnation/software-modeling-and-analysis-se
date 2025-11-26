USE AMAZON;

GO

CREATE PROCEDURE CalculateSellerRating
	@SellerID INT
AS
BEGIN
	DECLARE @AverageRating DECIMAL(4,2);

	SELECT @AverageRating = ISNULL(AVG(REVIEWS.RATING), 0)
	FROM REVIEWS 
	JOIN PRODUCTS ON REVIEWS.ProductID = PRODUCTS.ProductID
	WHERE PRODUCTS.SellerID = @SellerID;

	UPDATE SELLERS
	SET ProductsRating = @AverageRating
	WHERE SellerID = @SellerID;
END;

GO

CREATE PROCEDURE GetProductsByCategory
	@CategoryID INT
AS
BEGIN
	SELECT ProductID, Name, Brand, Price
	FROM PRODUCTS
	WHERE CategoryID = @CategoryID
END;

GO

CREATE PROCEDURE CalculateOrderTotal
	@OrderID INT
AS
BEGIN
	DECLARE @Total DECIMAL(8,2);
	SELECT @Total = ISNULL(SUM(PRODUCTS.Price * ORDER_PRODUCTS.Quantity), 0)
	FROM PRODUCTS
	JOIN ORDER_PRODUCTS ON PRODUCTS.ProductID = ORDER_PRODUCTS.ProductID
	WHERE ORDER_PRODUCTS.OrderID = @OrderID;

	UPDATE ORDERS
	SET TotalAmount = @Total
	WHERE ORDERS.OrderID = @OrderID;
END;