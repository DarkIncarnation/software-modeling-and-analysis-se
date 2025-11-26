USE AMAZON;

GO

CREATE FUNCTION GetOrdersByCustomers
(
	@CustomerID INT
)
RETURNS TABLE
AS
RETURN
(
	SELECT OrderID, OrderDate, Status, TotalAmount
	FROM ORDERS
	WHERE ORDERS.CustomerID = @CustomerID
);

GO

CREATE FUNCTION GetProductAverageRating
(
	@ProductID INT
)
RETURNS DECIMAL(4,2)
AS
BEGIN
	DECLARE @AverageRating DECIMAL(4,2);

	SELECT @AverageRating = AVG(Rating)
	FROM REVIEWS
	WHERE REVIEWS.ProductID = @ProductID;

	RETURN @AverageRating;
END;