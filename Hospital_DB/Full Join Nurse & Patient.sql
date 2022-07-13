create proc Nurse_Patient_sproc
as
begin

select p.firstname, p.lastname, n.firstname, n.lastname
from NursePatient npe
full join Patient p 
on p.PatientID = npe.PatientID
full join Nurse n
on n.NurseID = npe.NurseID
end