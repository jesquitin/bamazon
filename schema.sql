CREATE DATABASE bamazon_db;

CREATE TABLE products(
item_id int(11) AUTO_INCREMENT PRIMARY KEY, 
product_name varchar(50) ,
department varchar(30), 
price decimal(8,2), 
stock_quantity int(11)
);







INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('1', 'Ping G25 Iron Set - Steel', 'Sports', '599.99', '50');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('2', 'Callaway Men\'s Strata', 'Sports', '318.6', '90');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('3', 'Dell XPS 15', 'Electronics', '1649.99', '150');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('4', 'Apple Mac Pro', 'Electronics', '898.97', '250');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('5', 'Hoka One M Clifton running shoes', 'Shoes', '169.75', '500');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('6', 'Mizuno Wave Prophecy running shoes', 'Shoes', '189.99', '10');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('7', 'Moleskine planner', 'Office', '36.5', '25');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('8', 'Leather journal', 'Office', '55.5', '60');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('9', 'Vacplus Car vacuum cleaner', 'Automotive', '23.88', '20');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('10', 'High Road Car Trash can', 'Automotive', '29.99', '15');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('1', 'Ping G25 Steel  set', 'Sports', '599.99', '50');																	
INSERT INTO `bamazon_db`.`products` (`item_id`, `product_name`, `department`, `price`, `stock_quantity`) VALUES ('2', 'Callaway Men Strata set', 'Sports', '318.6', '90');																	
