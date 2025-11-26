USE AMAZON;
GO

-- Orders
INSERT INTO ORDERS (Status, OrderDate, CustomerID) VALUES
('Pending', '2025-01-05', 1),
('Completed', '2025-01-10', 2),
('Shipped', '2025-01-12', 3),
('Completed', '2025-01-15', 4),
('Cancelled', '2025-01-20', 5),
('Completed', '2025-01-22', 6),
('Pending', '2025-01-25', 7),
('Shipped', '2025-01-28', 8),
('Completed', '2025-02-01', 9),
('Pending', '2025-02-03', 10),
('Completed', '2025-02-05', 1),
('Completed', '2025-02-08', 2),
('Shipped', '2025-02-10', 3),
('Pending', '2025-02-12', 4),
('Completed', '2025-02-15', 5);

-- Order_Products
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(2, 2, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(2, 7, 3);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(3, 3, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(3, 8, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(4, 4, 2);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(5, 5, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(6, 9, 2);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(7, 10, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(8, 11, 2);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(8, 12, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(9, 13, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(10, 14, 2);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(11, 15, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(12, 16, 1);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(13, 17, 2);
INSERT INTO ORDER_PRODUCTS (OrderID, ProductID, Quantity) VALUES
(14, 18, 1);

-- Reviews
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(4.5, 'Excellent product!', 1, 1);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(3.8, 'Good, but could be better.', 2, 2);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(5.0, 'Loved it!', 3, 3);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(2.5, 'Not as expected.', 4, 4);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(4.0, 'Pretty decent.', 5, 5);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(3.0, 'Average quality.', 6, 6);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(4.7, 'Highly recommended.', 7, 7);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(5.0, 'Fantastic!', 8, 8);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(4.2, 'Very good.', 9, 9);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(3.5, 'Satisfactory.', 10, 10);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(4.8, 'Excellent choice.', 1, 11);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(4.3, 'Worth the price.', 2, 12);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(3.9, 'Good value.', 3, 13);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(2.8, 'Could improve.', 4, 14);
INSERT INTO REVIEWS (Rating, Comment, CustomerID, ProductID) VALUES
(5.0, 'Perfect!', 5, 15);

-- Payments
INSERT INTO PAYMENT (PaymentStatus, PaymentMethod, OrderID) VALUES
('Completed', 'PayPal', 2),
('Completed', 'Debit Card', 3),
('Completed', 'Credit Card', 4),
('Cancelled', 'Credit Card', 5),
('Completed', 'PayPal', 6),
('Pending', 'Debit Card', 7),
('Completed', 'Credit Card', 8),
('Completed', 'Credit Card', 9),
('Pending', 'PayPal', 10),
('Completed', 'Credit Card', 11),
('Completed', 'Debit Card', 12),
('Completed', 'Credit Card', 13),
('Pending', 'PayPal', 14);