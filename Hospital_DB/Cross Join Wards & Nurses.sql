create proc  Ward_Nurse_sproc
as
begin 

select top 1000 lastname, firstname, wardID
from Nurse
cross join ward
order by WardID
end