SELECT 
    menu.pizza_name,
    menu.price,
    pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE NOT EXISTS (
    SELECT 1 
    FROM person_order 
    WHERE person_order.menu_id = menu.id
)
ORDER BY menu.pizza_name, menu.price;