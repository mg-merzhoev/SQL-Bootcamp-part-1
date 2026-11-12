select (name || ' (age:' || age || ',gender:' || '''' || gender || '''' ||  ',address:' || '''' || address || '''' || ')') as person_information2
from person
order by person_information2;