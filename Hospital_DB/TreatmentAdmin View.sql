create view TreatmentAdmin_vw
as 

select d.lastname as 'Doctor Last Name', t.treatmentname, p.lastname as 'Patient Last Name', ta.date
from Doctor d
join TreatmentAdmin ta
on d.DoctorID = ta.DoctorID
join Patient p
on p.PatientID = ta.PatientID
join Treatment t
on t.TreatmentID = ta.TreatmentID