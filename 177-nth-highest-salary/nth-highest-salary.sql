CREATE FUNCTION getNthHighestSalary(@N INT) 
RETURNS INT 
AS
BEGIN
    DECLARE @result INT;
    select @result = salary
    from(
        select salary, DENSE_RANK() OVER (ORDER BY SALARY DESC) as dens_rnk
        from employee) as rank_sal
        where dens_rnk = @n;
    RETURN @result
END