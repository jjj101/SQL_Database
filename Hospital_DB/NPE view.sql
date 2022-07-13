Create View NursePatientEvents_vw
as

select p.lastname as 'Patient Last Name', n.lastname as ' Nurse Last Name', npe.EventID
from NursePatient npe
join Patient p
on p.PatientID = npe.PatientID
join nurse n
on n.NurseID = npe.NurseID