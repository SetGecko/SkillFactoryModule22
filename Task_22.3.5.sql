CREATE TABLE products_count (
  name character varying(100) NOT NULL, 
  full_count integer
);

INSERT into PRODUCTS_COUNT (name, full_count) 
SELECT 
  name, 
  t.full_count 
FROM 
  products 
  JOIN (
    SELECT 
      product_id, 
      count(*) AS full_count 
    FROM 
      positions 
    GROUP BY 
      product_id
  ) AS t ON products.id = t.PRODUCT_ID
