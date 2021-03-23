1-

SELECT DISTINCT  orderNumber FROM `orderdetails` 
WHERE productCode LIKE "s18_%" and priceEach >100
ORDER BY orderNumber

2-
SELECT * FROM `payments`
WHERE paymentDate LIKE"%5-05-%" or paymentDate LIKE"%6-06-%"
or paymentDate LIKE"%5-06-%" or paymentDate LIKE"%6-05-%"


3-
SELECT * FROM `customers`
WHERE country='usa' and phone like "%5555%" 
ORDER BY creditLimit DESC
LIMIT 1 OFFSET 5 