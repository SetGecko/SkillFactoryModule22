SELECT 
    products.name, 
    positions.amount 
FROM 
    products 
    JOIN positions ON products.id = positions.product_id 
WHERE 
    positions.order_id IN (
           SELECT 
               id 
           FROM 
               orders 
           WHERE orders.status = 'in progress'
               AND orders.client_id = (
                    SELECT
                        id FROM clients WHERE name = 'Бук Василий Петрович'));
