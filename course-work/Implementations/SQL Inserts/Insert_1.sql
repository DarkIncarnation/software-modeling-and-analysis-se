USE AMAZON;
GO

-- Categories
INSERT INTO CATEGORIES (Name, Description) VALUES
('Electronics', 'Devices such as phones, laptops, cameras, etc.'),
('Clothing', 'Apparel for men, women, and kids'),
('Books', 'All kinds of books and e-books'),
('Home & Kitchen', 'Appliances, utensils, and furniture'),
('Toys & Games', 'Toys for children and adults'),
('Sports & Outdoors', 'Sports equipment and outdoor gear'),
('Beauty & Personal Care', 'Cosmetics, skincare, hygiene products'),
('Automotive', 'Car accessories and tools'),
('Health & Wellness', 'Supplements and health devices'),
('Pet Supplies', 'Food, toys, and accessories for pets');

-- Sellers
INSERT INTO SELLERS (Name, Email, Region, PhoneNumber) VALUES
('TechWorld', 'techworld@example.com', 'North', '123-456-7890'),
('FashionHub', 'fashionhub@example.com', 'East', '234-567-8901'),
('BookBarn', 'bookbarn@example.com', 'South', '345-678-9012'),
('HomeComfort', 'homecomfort@example.com', 'West', '456-789-0123'),
('ToyLand', 'toyland@example.com', 'North', '567-890-1234'),
('SportyGoods', 'sportygoods@example.com', 'East', '678-901-2345'),
('BeautyPlus', 'beautyplus@example.com', 'South', '789-012-3456'),
('AutoGear', 'autogear@example.com', 'West', '890-123-4567'),
('HealthFirst', 'healthfirst@example.com', 'North', '901-234-5678'),
('PetParadise', 'petparadise@example.com', 'East', '012-345-6789');
