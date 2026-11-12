WITH 
pepperoni_orders AS (
SELECT person.name, person.id
FROM person_order
JOIN menu ON menu.id = person_order.menu_id 
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female' AND menu.pizza_name = 'pepperoni pizza'
),
cheese_orders AS (
SELECT person.name, person.id
FROM person_order
JOIN menu ON menu.id = person_order.menu_id 
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female' AND menu.pizza_name = 'cheese pizza'
)
SELECT pepperoni_orders.name
FROM pepperoni_orders
JOIN cheese_orders ON pepperoni_orders.id = cheese_orders.id
ORDER BY pepperoni_orders.name ASC;