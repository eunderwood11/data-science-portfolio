use cafedb;
insert into location values
(1, 'Cafe Mocha', '123 Coffee St', 'San Francisco', 'CA', '94101', 12, 3000),
(2, 'Brewed Awakening', '456 Latte Ave', 'Los Angeles', 'CA', '90001', 15, 3500),
(3, 'Espresso Express', '789 Espresso Blvd', 'Chicago', 'IL', '60601', 10, 2500),
(4, 'The Daily Grind', '101 Brew Dr', 'New York', 'NY', '10001', 18, 4000),
(5, 'Java Junction', '202 Java Ln', 'Austin', 'TX', '73301', 20, 3300),
(6, 'Café Harmony', '303 Harmony Rd', 'Miami', 'FL', '33101', 8, 2200),
(7, 'Steaming Cup', '404 Steam Ave', 'Portland', 'OR', '97201', 12, 2800),
(8, 'The Beanery', '505 Bean Blvd', 'Seattle', 'WA', '98101', 14, 3100);

insert into supplier values
(1, 'Brew Supply Co.', 'John', 'Doe', '123 Brew St', 'San Francisco', 'CA', '94101', '4155551234', 'john.doe@brewsupply.com'),
(2, 'Coffee Bean Distributors', 'Jane', 'Smith', '456 Bean Ave', 'Los Angeles', 'CA', '90001', '2135555678', 'jane.smith@coffeebeandist.com'),
(3, 'Latte Imports', 'Michael', 'Johnson', '789 Latte Blvd', 'Chicago', 'IL', '60601', '3125559101', 'michael.johnson@latteimports.com'),
(4, 'Espresso Parts', 'Emily', 'Brown', '101 Espresso Dr', 'New York', 'NY', '10001', '2125552345', 'emily.brown@espressoparts.com'),
(5, 'Roast Masters', 'William', 'Davis', '202 Roast Ln', 'Austin', 'TX', '73301', '5125556789', 'william.davis@roastmasters.com'),
(6, 'Café Supplies Inc.', 'Sarah', 'Wilson', '303 Supply Rd', 'Miami', 'FL', '33101', '3055554321', 'sarah.wilson@cafesupplies.com'),
(7, 'Perfect Grind', 'David', 'Martinez', '404 Grind Ave', 'Portland', 'OR', '97201', '5035553456', 'david.martinez@perfectgrind.com'),
(8, 'The Bean Company', 'Linda', 'Garcia', '505 Bean Rd', 'Seattle', 'WA', '98101', '2065557890', 'linda.garcia@thebeancompany.com');

insert into paymentMethod values
(1, 'Credit Card'),
(2, 'Debit Card'),
(3, 'Cash'),
(4, 'Mobile Payment'),
(5, 'Check'),
(6, 'Gift Card'),
(7, 'PayPal'),
(8, 'Bank Transfer');

insert into category values
(1, 'Hot Drinks'),
(2, 'Cold Drinks'),
(3, 'Pastries'),
(4, 'Sandwiches'),
(5, 'Specialty Drinks'),
(6, 'Machinery'),
(7, 'Ingredients'),
(8, 'Tea Leaves'),
(9, 'Coffee Beans'),
(10, 'Brew Equipment'),
(11, 'Cups & Mugs'),
(12, 'Syrups & Flavorings'),
(13, 'Cleaning Supplies'),
(14, 'Packaging Materials');

insert into inventory values
(201, 'Coffee Beans - Arabica', 10, 35.00, 1, 9),
(202, 'Milk - Whole (Gallon)', 5, 4.50, 2, 7),
(203, 'Sugar Packets (Box of 1000)', 2, 15.00, 3, 7),
(204, 'Paper Cups (Sleeves of 50)', 10, 8.00, 4, 11),
(205, 'Espresso Syrup - Vanilla', 3, 12.75, 5, 12),
(206, 'Oat Milk (Carton)', 7, 5.25, 6, 7),
(207, 'Tea Bags - Earl Grey (Box of 25)', 5, 7.50, 3, 8),
(208, 'Pastry Boxes', 20, 6.00, 4, 7);

insert into role values
(1, 'Manager'),
(2, 'Barista'),
(3, 'Assistant Manager'),
(4, 'Cashier'),
(5, 'Kitchen Staff'),
(6, 'Key Carrier'),
(7, 'Janitor');

insert into employee values
(1001, 'Alice', 'Smith', '123 Main St', NULL, 'Smithfield', 'RI', '02917', '957391234', 15.50, 0, '2023-08-15', '4015551111', 'alice.smith@email.com', 'Ms.', NULL, 2),
(1002, 'Bob', 'Johnson', '456 Oak Ave', 'Apt 2B', 'Providence', 'RI', '02903', '485265678', 18.00, 0, '2022-11-20', '4015552222', 'bob.johnson@email.com', 'Mr.', NULL, 2),
(1003, 'Charlie', 'Brown', '789 Pine Ln', NULL, 'Cranston', 'RI', '02910', '305629012', 16.25, 0, '2024-01-05', '4015553333', 'charlie.brown@email.com', 'Mr.', NULL, 2),
(1004, 'Diana', 'Lee', '101 Elm St', 'Unit 4', 'Smithfield', 'RI', '02917', '594793456', 22.00, 0, '2021-05-10', '4015554444', 'diana.lee@email.com', 'Mrs.', NULL, 1),
(1005, 'Ethan', 'Davis', '222 Willow Dr', NULL, 'Pawtucket', 'RI', '02860', '057087890', 14.75, 1, '2023-03-01', '4015555555', 'ethan.davis@email.com', 'Mr.', NULL, 4),
(1006, 'Fiona', 'Miller', '333 Birch Ct', NULL, 'Woonsocket', 'RI', '02895', '683032345', 17.00, 0, '2024-06-12', '4015556666', 'fiona.miller@email.com', 'Ms.', NULL, 4),
(1007, 'George', 'Wilson', '444 Oak Ter', 'Suite 1A', 'North Providence', 'RI', '02911', '593858789', 19.50, 0, '2022-09-28', '4015557777', 'george.wilson@email.com', 'Mr.', 'Jr.', 3),
(1008, 'Hannah', 'Moore', '555 Pine Rd', NULL, 'Lincoln', 'RI', '02865', '583750123', 15.00, 0, '2023-12-01', '4015558888', 'hannah.moore@email.com', 'Mrs.', NULL, 1);

insert into employee_has_role values
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 1),
(1005, 2),
(1006, 4),
(1007, 2),
(1008, 3);

insert into shift values
(10003, TIMESTAMP('2025-04-09', '07:00:00'), TIMESTAMP('2025-04-09', '15:00:00'), 0.00, '2025-04-09', 1002, 'Opening shift'),
(10004, TIMESTAMP('2025-04-09', '08:00:00'), TIMESTAMP('2025-04-09', '16:30:00'), 0.50, '2025-04-09', 1003, 'Covered extra lunch rush'),
(10005, TIMESTAMP('2025-04-09', '11:00:00'), TIMESTAMP('2025-04-09', '19:00:00'), 0.00, '2025-04-09', 1006, 'Afternoon cashier'),
(10006, TIMESTAMP('2025-04-09', '14:00:00'), TIMESTAMP('2025-04-09', '22:00:00'), 1.00, '2025-04-09', 1007, 'Closing barista, stayed late for cleaning'),
(10009, TIMESTAMP('2025-04-10', '07:00:00'), TIMESTAMP('2025-04-10', '12:00:00'), 0.00, '2025-04-10', 1001, 'Morning manager duties'),
(10010, TIMESTAMP('2025-04-10', '09:00:00'), TIMESTAMP('2025-04-10', '17:00:00'), 0.00, '2025-04-10', 1002, NULL),
(10012, TIMESTAMP('2025-04-10', '12:00:00'), TIMESTAMP('2025-04-10', '20:30:00'), 0.75, '2025-04-10', 1003, 'Helped with dishes'),
(10014, TIMESTAMP('2025-04-10', '15:00:00'), TIMESTAMP('2025-04-10', '23:00:00'), 0.00, '2025-04-10', 1004, 'Evening manager');

insert into shift_has_role values
(10003, 2),
(10004, 4),
(10004, 3),
(10005, 2),
(10014, 4),
(10014, 2),
(10012, 5),
(10010, 1),
(10009, 2),
(10006, 3);

INSERT INTO Seating (TableID, TableCapacity, Location_locationID) VALUES
  (1, 4, 1),
  (2, 2, 1),
  (3, 4, 1),
  (4, 2, 4),
  (5, 4, 7),
  (6, 2, 6),
  (7, 4, 7),
  (8, 2, 8);
  
INSERT INTO menu (itemCode, name, listPrice, available, description, category_categoryID) VALUES
  ('1', 'Espresso', 2.50, TRUE,  'Single shot espresso', 1),
  ('2', 'Caffe Latte', 4.00, TRUE,  'Espresso with steamed milk', 1),
  ('3', 'Cappuccino', 4.25, TRUE,  'Espresso with steamed milk and foam', 1),
  ('4', 'Iced Coffee', 3.50, TRUE,  'Cold–brewed coffee over ice', 2),
  ('5', 'Blueberry Muffin', 2.75, TRUE,  'Freshly baked blueberry muffin', 3),
  ('6', 'Ham & Cheese Croissant', 5.00, TRUE, 'Buttery croissant with ham and cheese', 3),
  ('7', 'Turkey Sandwich', 6.50, TRUE,  'Turkey, lettuce, and tomato on sourdough', 4),
  ('8', 'Mocha Frappuccino', 5.50, TRUE,  'Blended mocha with whipped cream', 5);  
  
INSERT INTO orders (orderID, menuCode, orderquantity, orderdate, ordernotes) VALUES
(1, 1, 2, '2025-04-10', 'No sugar'),
(2, 2, 1, '2025-04-10', 'Oat milk'),
(3, 3, 1, '2025-04-11', 'Extra foam'),
(4, 3, 3, '2025-04-11', 'Light ice'),
(5, 6, 2, '2025-04-12', 'To go'),
(6, 6, 1, '2025-04-12', 'Heated'),
(7, 7, 1, '2025-04-13', 'No mayo'),
(8, 8, 2, '2025-04-13', 'Whipped cream');

INSERT INTO orders_has_paymentMethod (orders_orderID, paymentMethod_paymentMethodID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5),
(5, 1),
(6, 1),
(7, 6),
(8, 2);
  
INSERT INTO location_has_menu (Location_locationID, menu_itemCode) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '7'),
(7, '7'),
(8, '1');






