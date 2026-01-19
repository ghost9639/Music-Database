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
	BillingCity,
	round(avg(total), 2) AS 'City Average'

FROM
	Invoice 

	
WHERE 
	BillingCity LIKE 'B%' 


GROUP BY
	BillingCity
	
HAVING
	avg(total) 
	
ORDER BY 
	BillingCity 

