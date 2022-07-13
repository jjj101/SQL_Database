Create proc Wards_Beds_sproc
as
begin

select top 1000 b.BedID, w.WardID
from Bed b
cross join ward w
order by bedID 
end