
/*

The manufacturers table contains the information about manufacturers of cars in our dealership.
The attributes of this table are the manufacturer_id, name, and country.

The products table contains information describing the cars in our dealership. You can 
view information such as the car model, price, horsepower, and fuel_efficiency. 
Customers want the best deals, and this information helps them decide.

You can find the current car inventory information on the inventory table; information 
on car sales is on the sales table. Information about our customers and employees 
is stored in the customers and employees tables respectively.

Your task is to create the manufacturers, products, and inventory tables with the 
ERD's required attributes, data types, and relations.

Take note of the following:

There is a one-to-many identifying relationship between the products and inventory tables.
The product_id attribute in the inventory table is a FOREIGN KEY referenced to the products table.
The TINYINT datatype stores boolean values where 0 represents false, and 1 represents true.
Restrict the attributes of all the tables to NOT NULL except for attributes set as PRIMARY KEY.
AUTO_INCREMENT the attributes set as PRIMARY KEYexcept in the inventory table.
The dealership reorders a car from the manufacturer when the inventory quantity drops to two cars.
Please use IF NOT EXISTS when creating tables.

*/


CREATE TABLE IF NOT EXISTS manufacturers (
  manufacturer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  country VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  manufacturer_id INT NOT NULL,
  model VARCHAR(45) NOT NULL,
  price DECIMAL NOT NULL,
  horsepower INT NOT NULL,
  fuel_efficiency INT NOT NULL,
  FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id)
);

CREATE TABLE IF NOT EXISTS inventory (
  inventory_id INT PRIMARY KEY AUTO_INCREMENT,
  quantity INT NOT NULL,
  reorder_level INT NOT NULL DEFAULT 2,
  last_inventory_date DATE NOT NULL,
  product_id INT PRIMARY KEY,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);