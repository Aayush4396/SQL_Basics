Select OrganizationLevel, JobTitle, Gender, MaritalStatus,BirthDate
from HumanResources.Employee
join HumanResources.EmployeePayHistory
on HumanResources.Employee.BusinessEntityID=HumanResources.EmployeePayHistory.BusinessEntityID