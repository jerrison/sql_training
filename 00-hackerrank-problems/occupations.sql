SELECT
    CASE
        WHEN Occupation IN ('Doctor') THEN name
        ELSE NULL
    END AS 'Doctor',
    CASE
        WHEN Occupation IN ('Professor') THEN name
        ELSE NULL
    END AS 'Professor',
    CASE
        WHEN Occupation IN ('Singer') THEN name
        ELSE NULL
    END AS 'Singer',
    CASE
        WHEN Occupation IN ('Actor') THEN name
        ELSE NULL
    END AS 'Actor'
FROM
    occupations