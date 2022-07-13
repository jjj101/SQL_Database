use Hospital_JJJ

select p.lastname, ba.bedID
from Patient p
cross join BedAssignment ba
order by bedID