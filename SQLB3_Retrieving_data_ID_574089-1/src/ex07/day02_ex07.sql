WITH 
all_visits_Dmitriy AS (
SELECT person_visits.pizzeria_id
FROM person_visits
JOIN person ON person.id = person_visits.person_id
WHERE visit_date = '2022-01-08' AND person.name = 'Dmitriy'
),
cheaper AS (
SELECT all_visits_Dmitriy.pizzeria_id
FROM all_visits_Dmitriy
JOIN menu ON all_visits_Dmitriy.pizzeria_id = menu.pizzeria_id
WHERE menu.price < 800
)
SELECT name
FROM pizzeria
JOIN cheaper ON cheaper.pizzeria_id = pizzeria.id;