SELECT pizzeria.name AS pizzeria_name
FROM (
    SELECT pizzeria_id
    FROM person_visits
    JOIN person ON person.id = person_visits.person_id
    WHERE person.name = 'Andrey'
    EXCEPT ALL
    SELECT pizzeria.id
    FROM person_order
    JOIN person ON person.id = person_order.person_id
    JOIN menu ON menu.id = person_order.menu_id
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    WHERE person.name = 'Andrey'
) AS andrey_visited_not_ordered
JOIN pizzeria ON pizzeria.id = andrey_visited_not_ordered.pizzeria_id
ORDER BY pizzeria_name;