DELETE FROM 
  clients 
WHERE 
  id NOT IN (
    SELECT 
      client_id 
    FROM 
      orders
  );
