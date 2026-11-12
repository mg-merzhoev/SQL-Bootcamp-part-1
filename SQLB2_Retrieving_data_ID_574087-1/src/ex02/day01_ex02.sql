select menu.pizza_name
from menu
union
select menu.pizza_name
from menu
ORDER BY pizza_name desc;