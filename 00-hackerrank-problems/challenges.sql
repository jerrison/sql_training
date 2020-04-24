-- SELECT
-- SELECT t1.hacker_id, t1.name, count(t2.challenge_id) AS challenges_count
-- FROM hackers t1
-- INNER JOIN challenges t2
--     ON hackers.hacker_id = challenges.hacker_id
SELECT
    hacker_id,
    COUNT(challenge_id) AS challenge_count
FROM
    challenges