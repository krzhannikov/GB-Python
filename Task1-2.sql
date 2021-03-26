CREATE VIEW prod_cat_name AS
	SELECT pr.name, ca.name AS catalog_name FROM products pr
    JOIN catalogs ca
		ON ca.id = pr.catalog_id;