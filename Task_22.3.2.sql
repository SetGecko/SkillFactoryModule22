 INSERT INTO products (
  id, name, price, category, in_stock
) 
VALUES 
  (
    19, 'Набор посуды', 1400, 
    'товары для дома', 
    5
  ) ON CONFLICT (id) DO 
UPDATE 
SET 
  name = EXCLUDED.name, 
  price = EXCLUDED.price, 
  category = EXCLUDED.category, 
  in_stock = EXCLUDED.in_stock;
