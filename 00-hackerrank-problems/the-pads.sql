/*
 I don't know why this is marked as incorrect, my output is exactly the same as submissions that got it right
 */
SELECT
    Concat(Name, "(", SUBSTRING(Occupation, 1, 1), ")") AS result
FROM
    (
        SELECT
            *
        FROM
            Occupations
        ORDER BY
            name
    ) t1
UNION
ALL
SELECT
    CONCAT(
        "There are a total of ",
        occupation_count,
        " ",
        occupation,
        "s."
    ) AS result -- CASE
    --     WHEN occupation > 1 THEN CONCAT(
    --         "There are a total of ",
    --         occupation_count,
    --         " ",
    --         occupation,
    --         "s"
    --     )
    --     ELSE CONCAT(
    --         "There are a total of ",
    --         occupation_count,
    --         " ",
    --         occupation
    --     )
    -- END AS result
FROM
    (
        SELECT
            LOWER(occupation) AS occupation,
            COUNT(Occupation) AS occupation_count
        FROM
            Occupations
        GROUP BY
            Occupation
        ORDER BY
            COUNT(Occupation),
            occupation
    ) x