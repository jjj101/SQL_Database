Create proc patient_bed_sproc
as
begin

select ba.bedID, p.lastname
from Patient p
full join BedAssignment ba
on p.PatientID = ba.PatientID
end