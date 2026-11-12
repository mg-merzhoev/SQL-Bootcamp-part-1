WITH Kate AS (
    SELECT person_id, pizzeria_id, visit_date
    FROM person_visits
    JOIN person ON person.id = person_visits.person_id 
    WHERE person.name = 'Kate'
    )
SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name, visit_date
FROM Kate
JOIN menu ON Kate.pizzeria_id = menu.pizzeria_id
JOIN pizzeria ON pizzeria.id = Kate.pizzeria_id
WHERE price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;