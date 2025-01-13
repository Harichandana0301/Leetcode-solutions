/* Write your T-SQL query statement below */
SELECT results 
FROM (
    SELECT TOP(1) U.name AS results 
    FROM Users U 
    INNER JOIN MovieRating M ON U.user_id = M.user_id
    GROUP BY U.name
    ORDER BY COUNT(M.movie_id) DESC, U.name

    UNION ALL

    -- Subquery for top movie
    SELECT TOP(1) M.title AS results 
    FROM Movies M 
    INNER JOIN MovieRating MR ON M.movie_id = MR.movie_id
    where month(created_at) = 2 and year(created_at) = 2020
    GROUP BY M.title
    ORDER BY AVG(CAST(MR.rating AS float)) DESC, M.title
) t;