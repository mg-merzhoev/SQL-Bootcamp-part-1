select 
    menu.pizza_name, 
    pizzeria.name as pizzeria_name, 
    menu.price
from pizzeria
join menu on pizzeria.id = menu.pizzeria_id
where menu.pizza_name in ('mushroom pizza', 'pepperoni pizza')
order by menu.pizza_name, pizzeria.name;