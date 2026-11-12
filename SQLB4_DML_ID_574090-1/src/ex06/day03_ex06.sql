WITH pizzas AS (
SELECT menu.pizza_name, menu.price, menu.pizzeria_id, pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id 
)
SELECT 
	pz1.pizza_name AS pizza_name, 
	pz1.pizzeria_name AS pizzeria_name_1, 
	pz2.pizzeria_name AS pizzeria_name_2, 
	pz1.price  
FROM pizzas AS pz1
JOIN pizzas AS pz2 ON pz1.pizza_name = pz2.pizza_name AND pz1.price = pz2.price 
WHERE pz1.pizzeria_id < pz2.pizzeria_id 
ORDER BY pizza_name;