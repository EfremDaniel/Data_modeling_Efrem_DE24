SET search_path TO ezcream;

TRUNCATE TABLE Orders;

INSERT INTO Orders(customer_id, order_date)
VALUES (2, '2024-05-04');
       

-- DELETE FROM ezcream.Orders WHERE customer_id = 50;

SELECT * FROM ezcream.Orders;