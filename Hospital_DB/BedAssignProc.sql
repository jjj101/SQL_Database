create proc BedAssign_sproc
as 
Begin

select p.lastName, d.lastName, ad.AdmitDate, b.BedID, b.WardID
from Patient p
join AdmitDischarge ad
on p.PatientID = ad.PatientID
join Bed b
on b.BedID = p.BedID
join Doctor d
on d.DoctorID = ad.AdmitDoc
end 





