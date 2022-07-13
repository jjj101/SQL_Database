create proc Npe_spoc
as
begin

select p.lastname, n.lastname, npe.EventID
from NursePatient npe
join Patient p
on p.PatientID = npe.PatientID
join nurse n
on n.NurseID = npe.NurseID
end