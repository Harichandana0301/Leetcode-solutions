/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */
SELECT name  FROM SalesPerson 
WHERE sales_id  NOT IN (
        SELECT sales_id
        FROM Orders  O JOIN Company C
        ON O.com_id  = C.com_id  AND C.NAME = 'RED')