/*

In the previous stage, you have shown your ability to create tables and establish 
relationships by analyzing the ERD. To avoid redundancy, we have prepared all the 
tables and their corresponding relationships in this stage.

We currently have agreements with Toyota and General Motors (GM) car makes. 
Our inventory comprises the Camry and Corolla models for Toyota and Silverado
 and Camaro for GM. These car models are among the most highly demanded vehicles in our locality.

To maintain precise records of our car sales and inventory, we must constantly 
update the inventory table whenever a deal is made. While it is possible to 
update the sales table first and then the inventory table, this approach 
has the potential for errors, as there is a risk of forgetting to update one of 
these tables. Consequently, if we stock our inventory, our records may not balance properly.

Presently, our inventory table, which has been initialized, for us look like this:

product_id	quantity	reorder_level	last_inventory_date
1	50	2	2023-04-30
2	30	2	2023-04-30
3	25	2	2023-04-30
4	30	2	2023-04-30
Since our opening, we have made some sales. After setting the trigger, the next step is to insert our sales into the sales table in the database:

INSERT INTO sales (sale_date, customer_id, product_id, employee_id, quantity, total_price) 
VALUES
    (DATE('2023-05-01'), 1, 1, 1, 2, 56000.00),
    (DATE('2023-05-02'), 2, 2, 1, 1, 22000.00),
    (DATE('2023-05-02'), 1, 3, 2, 1, 41250.00),
    (DATE('2023-05-03'), 2, 4, 2, 2, 60000.00),
    (DATE('2023-05-03'), 1, 1, 2, 3, 84000.00);

Next, you will output the inventory table and observe that, indeed, it has automatically been updated:

SELECT * FROM inventory;

So, your code submission will comprise three SQL queries: a query to update_inventory trigger, a query to insert into the sales table, and a query to output the inventory table.

Objectives
Set up the trigger, update_inventory, which automatically updates the inventory table whenever there is a sale.
Example
Output:
+------------+----------+---------------+---------------------+
| product_id | quantity | reorder_level | last_inventory_date |
+------------+----------+---------------+---------------------+
| 1          | 45       | 2             | 2023-05-03          |
| 2          | 29       | 2             | 2023-05-02          |
| 3          | 24       | 2             | 2023-05-02          |
| 4          | 28       | 2             | 2023-05-03          |
+------------+----------+---------------+---------------------+


*/



CREATE TRIGGER update_inventory
AFTER INSERT ON sales
FOR EACH ROW
BEGIN
    UPDATE inventory
    SET quantity = quantity - NEW.quantity,
        last_inventory_date = NEW.sale_date
    WHERE product_id = NEW.product_id;
END;

INSERT INTO sales (sale_date, customer_id, product_id, employee_id, quantity, total_price) 
VALUES
    (DATE('2023-05-01'), 1, 1, 1, 2, 56000.00),
    (DATE('2023-05-02'), 2, 2, 1, 1, 22000.00),
    (DATE('2023-05-02'), 1, 3, 2, 1, 41250.00),
    (DATE('2023-05-03'), 2, 4, 2, 2, 60000.00),
    (DATE('2023-05-03'), 1, 1, 2, 3, 84000.00);

SELECT * FROM inventory;