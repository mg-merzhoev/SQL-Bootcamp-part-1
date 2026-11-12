select *
from person cross join pizzeria
ORDER BY person.id, pizzeria.id;