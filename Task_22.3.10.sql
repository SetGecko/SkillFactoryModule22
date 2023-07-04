UPDATE 
  positions 
set 
  amount = amount + 1 
WHERE 
  product_id = (
    SELECT 
      id 
    FROM 
      products 
    WHERE 
      name = 'Велосипед горный'
  );
