SELECT pizzeria.name AS pizzeria_name
FROM (
    SELECT pizzeria_id
    FROM person_visits pv
    JOIN person p ON p.id = pv.person_id
    GROUP BY pizzeria_id
    HAVING COUNT(CASE WHEN p.gender = 'male' THEN 1 END) >
           COUNT(CASE WHEN p.gender = 'female' THEN 1 END)
) AS male_dominated
JOIN pizzeria ON pizzeria.id = male_dominated.pizzeria_id
UNION ALL
SELECT pizzeria.name AS pizzeria_name
FROM (
    SELECT pizzeria_id
    FROM person_visits pv
    JOIN person p ON p.id = pv.person_id
    GROUP BY pizzeria_id
    HAVING COUNT(CASE WHEN p.gender = 'female' THEN 1 END) >
           COUNT(CASE WHEN p.gender = 'male' THEN 1 END)
) AS female_dominated
JOIN pizzeria ON pizzeria.id = female_dominated.pizzeria_id
ORDER BY pizzeria_name;