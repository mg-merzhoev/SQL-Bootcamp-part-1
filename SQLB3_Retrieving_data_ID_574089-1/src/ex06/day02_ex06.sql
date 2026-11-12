with
all_orders as (
select person.name, person_order.menu_id 
from person_order
join person on person_order.person_id  = person.id 
where person.name in ('Denis', 'Anna')
)
select pizza_name, pizzeria.name as pizzeria_name
from menu
join all_orders on menu.id  = all_orders.menu_id  
join pizzeria on pizzeria.id = menu.pizzeria_id
order by pizza_name, pizzeria_name;