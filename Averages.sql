/*
calculates average spending amount of customers in each city 
City - names of cities 
AverageSpending - average spent by customers
ordered by city name 
from invoice
results grouped by city 
averages rounded to 2 d.p.
*/

SELECT 
	BillingCity AS City ,
	round(avg(Total),2) AS AverageSpending

FROM 
	Invoice
	
GROUP BY 
	BillingCity
	
HAVING 
	AverageSpending > 5.4
	
ORDER BY
	BillingCity