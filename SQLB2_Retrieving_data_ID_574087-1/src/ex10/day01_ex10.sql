select person.name as person_name, menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name
from person 
inner join person_order on person_id = person.id
inner join menu on menu.id = menu_id
inner join pizzeria on pizzeria.id = pizzeria_id
order by person_name asc, pizza_name asc, pizzeria_name asc;