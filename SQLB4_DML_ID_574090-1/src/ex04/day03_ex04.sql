SELECT pizzeria.name AS pizzeria_name
FROM (
    SELECT pizzeria_id
    FROM person_order
    JOIN menu ON menu.id = person_order.menu_id 
    JOIN person ON person.id = person_order.person_id
    GROUP BY pizzeria_id
    HAVING COUNT(CASE WHEN person.gender = 'male' THEN 1 END) = COUNT(person.gender)
) AS male_dominated
JOIN pizzeria ON pizzeria.id = male_dominated.pizzeria_id
UNION
SELECT pizzeria.name AS pizzeria_name
FROM (
    SELECT pizzeria_id
    FROM person_order
    JOIN menu ON menu.id = person_order.menu_id 
    JOIN person ON person.id = person_order.person_id
    GROUP BY pizzeria_id
    HAVING COUNT(CASE WHEN person.gender = 'female' THEN 1 END) = COUNT(person.gender)
) AS female_dominated
JOIN pizzeria ON pizzeria.id = female_dominated.pizzeria_id
ORDER BY pizzeria_name;