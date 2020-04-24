-- Completed successfully
SELECT
    N AS 'Node',
    CASE
        WHEN t1.P IS NULL THEN 'Root'
        WHEN t2.num_children = 2 THEN 'Inner'
        ELSE 'Leaf'
    END AS 'Type'
FROM
    BST t1
    LEFT JOIN (
        SELECT
            P,
            COUNT(N) AS num_children
        FROM
            BST t1
        GROUP BY
            P
    ) t2 ON t1.N = t2.P
ORDER BY
    N