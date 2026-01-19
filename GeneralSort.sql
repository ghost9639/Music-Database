/*
Created by: RG
Created date: 25/06/2025
Identifies buying patterns within specific countries, returns power listeners
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total &lt; 2 THEN 'Baseline Consumer'
	WHEN total BETWEEN 2 AND 6.99 THEN  'Low Purchase'
	WHEN total BETWEEN 7 and 15 THEN 'Target'
	ELSE 'High Roller'
	END AS PurchaseType

FROM 
	Invoice
	
WHERE
    BETWEEN 1.98 AND 5.00
    BillingCity IN ('Brussels', 'London', 'Paris')
	
	InvoiceDate = '2010-05-22 00:00:00'
	
	PurchaseType= 'High Roller'
	
ORDER BY
	InvoiceDate
	
