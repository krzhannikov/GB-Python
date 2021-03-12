SELECT
  id,
  name,
  (SELECT name FROM catalogs WHERE catalogs.id = products.catalog_id) AS type
  FROM products;