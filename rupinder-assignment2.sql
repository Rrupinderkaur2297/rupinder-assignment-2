                /* RUPINDER KAUR /  8622297 */
                
                        /* PART-1 */         
                
/* Query-1 */
SELECT OrderNumber, QuantityOrdered*QuotedPrice AS Revenue FROM order_details

/* Query-2 */
SELECT EmpFirstName, TIMESTAMPDIFF( YEAR, EmpBirthDate, CURRENT_DATE()) AS Age FROM employees ORDER BY Age ASC

                        /* PART-2 */
 
/* Query-1 */
SELECT EmpFirstName, EmpLastName FROM employees WHERE EmpFirstName LIKE '%r%' AND EmpLastName NOT LIKE '%q%'

                        /* PART-4 */
/* Query-1 */
SELECT DISTINCT customers.CustFirstName, customers.CustPhoneNumber FROM customers JOIN orders ON customers.CustomerID=orders.CustomerID JOIN order_details ON orders.OrderNumber=order_details.OrderNumber JOIN products ON order_details.ProductNumber=products.ProductNumber WHERE products.ProductName LIKE '%helmet%'

/* Query-2 */
SELECT customers.CustFirstName, employees.EmpFirstName FROM customers
INNER JOIN employees
ON customers.CustFirstName=employees.EmpFirstName;

                        /* PART-5 */
 
 SELECT SUM(QuantityOrdered*QuotedPrice*2) AS total FROM order_details JOIN orders ON order_details.OrderNumber=orders.OrderNumber JOIN customers ON orders.CustomerID=customers.CustomerID WHERE customers.CustState='OR'