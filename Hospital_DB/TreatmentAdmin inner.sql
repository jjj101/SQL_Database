create proc TreatmentAdmin_spoc
as
begin

select d.lastname, t.treatmentname, p.lastname, ta.date
from Doctor d
join TreatmentAdmin ta
on d.DoctorID = ta.DoctorID
join Patient p
on p.PatientID = ta.PatientID
join Treatment t
on t.TreatmentID = ta.TreatmentID
end