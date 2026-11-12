WITH 
all_orders AS (
SELECT person.name, person_order.person_id, person_order.menu_id, person.address
FROM person_order
JOIN menu ON menu.id = person_order.menu_id 
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'male' AND (menu.pizza_name = 'pepperoni pizza' OR menu.pizza_name = 'mushroom pizza')
)
SELECT all_orders.name
FROM all_orders 
WHERE all_orders.address in ('Moscow', 'Samara')
ORDER BY all_orders.name DESC;