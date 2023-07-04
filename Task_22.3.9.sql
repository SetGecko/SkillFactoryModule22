SELECT 
  order_id, 
  amount 
FROM 
  positions 
WHERE 
  product_id = (
    SELECT 
      id 
    FROM 
      products 
    WHERE 
      name = 'Велосипед горный'
  );
