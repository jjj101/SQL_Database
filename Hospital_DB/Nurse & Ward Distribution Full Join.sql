use Hospital_JJJ

select firstname, lastname, WardID
from Nurse
cross join Ward
order by firstname 