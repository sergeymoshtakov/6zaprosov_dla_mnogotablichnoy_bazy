-- SELECT p.name, c.name
-- FROM Magazin.dbo.Product p JOIN Magazin.dbo.Category c ON p.id_category = c.id
-- JOIN Magazin.dbo.Delivery d ON d.id_product = p.id
-- JOIN Magazin.dbo.Suplier s ON d.id_suplier = s.id
-- WHERE s.name = 'ООО "Паньки"' OR s.name = 'ООО "Какие люди"'

-- SELECT p.name, s.name
-- FROM Magazin.dbo.Product p JOIN Magazin.dbo.Delivery d on p.id = d.id_product
-- JOIN Magazin.dbo.Suplier s ON s.id = d.id_suplier
-- JOIN Magazin.dbo.Producer pr ON pr.id = p.id_producer
-- JOIN Magazin.dbo.Category c ON c.id = p.id_category
-- WHERE pr.name NOT LIKE '%АКМ%' AND c.name <> 'Крупы'

--  p.name, c.name, s.name, co.name
-- FROM Magazin.dbo.Product p JOIN Magazin.dbo.Category c ON p.id_category = c.id
-- JOIN Magazin.dbo.Delivery d ON d.id_product = p.id
-- JOIN Magazin.dbo.Suplier s ON d.id_suplier = s.id
-- JOIN Magazin.dbo.Producer pr ON pr.id = p.id_producer
-- JOIN Magazin.dbo.Adress a ON a.id = pr.id_adress
-- JOIN Magazin.dbo.City ci ON c.id = a.id_city
-- JOIN Magazin.dbo.Region r ON r.id = ci.id_region
-- JOIN Magazin.dbo.Country co ON co.id = r.id_country
-- WHERE co.name NOT IN ('Украина', 'Молдова', 'Польша')
-- AND d.price < 50 AND d.date_of_delivery >= '2023-05-10' AND d.date_of_delivery <= GETDATE()

-- SELECT p.name, su.name, pr.name
-- FROM Magazin.dbo.Product p JOIN Magazin.dbo.Category c ON p.id_category = c.id
-- JOIN Magazin.dbo.Sale s ON s.id_product = p.id
-- JOIN Magazin.dbo.Delivery d ON d.id_product = p.id
-- JOIN Magazin.dbo.Suplier su ON d.id_suplier = su.id
-- JOIN Magazin.dbo.Producer pr ON p.id_producer = pr.id
-- WHERE (c.name = 'Безалкогольные напитки' OR c.name = 'Кондитерские изделия') AND s.quantity > 100

-- SELECT p.name, s.name, c.name, d.date_of_delivery, d.price
-- FROM Magazin.dbo.Product p JOIN Magazin.dbo.Delivery d ON d.id_product = p.id
-- JOIN Magazin.dbo.Suplier s ON s.id = d.id_suplier
-- JOIN Magazin.dbo.Category c ON p.id_category = c.id
-- WHERE s.name = 'Повна чаша' OR s.name = 'Алиэкспресс' OR s.name = 'Евротрейд'
-- ORDER BY p.name ASC

-- SELECT p.name, pr.name, CONCAT(co.name, ', ', c.name, ', ', a.street) AS 'Adress', ca.name, s.date_of_sale, s.price
-- FROM Magazin.dbo.Product p JOIN Magazin.dbo.Producer pr ON p.id_producer = pr.id
-- JOIN Magazin.dbo.Adress a ON a.id = pr.id_adress
-- JOIN Magazin.dbo.City c ON c.id = a.id_city
-- JOIN Magazin.dbo.Region r ON r.id = c.id_region
-- JOIN Magazin.dbo.Country co ON co.id = r.id_country
-- JOIN Magazin.dbo.Category ca ON ca.id = p.id_category
-- JOIN Magazin.dbo.Sale s ON s.id_product = p.id
-- WHERE pr.name <> 'Wolkswagen' AND pr.name <> 'Казахстроймаш'
-- ORDER BY s.price DESC