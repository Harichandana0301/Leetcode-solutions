/* Write your T-SQL query statement below */


select product_id, product_name, description
from Products
where CONCAT(' ',description,' ') like '% SN[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] %'