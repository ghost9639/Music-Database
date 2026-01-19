/* 
Created by: RG
Created date: 26/06/2025
generates customer first name, customer last name, employee first name, and employee last name 
order by representatives last name and then by customers last name 
alias customer table as c and employee table as e 
cfirstname = 'CustomerFirstName', cLastName = 'CustomerLastName', e.FirstName = 'SupportRepFirstName', 
eLastName = 'SupportRepLastName'
*/

SELECT 
	c.FirstName AS 'CustomerFirstName',
	c.LastName AS 'CustomerLastName',
	e.FirstName AS 'SupportRepFirstName',
	e.LastName AS 'SupportRepLastName'

FROM 
	Customer AS c
INNER JOIN 
	Employee AS e 
ON 
	c.SupportRepId = e.EmployeeId

ORDER BY 
	e.LastName,
	c.LastName
