create proc NursePAtientAssign_sproc
as
begin 

select p.firstname as 'Patient First Name', p.lastname as 'Patient Last Name', n.firstname as 'Nurse First Name', n.lastname as 'Nurse Last Name'
from NursePatient npe
full join Patient p 
on p.PatientID = npe.PatientID
full join Nurse n
on n.NurseID = npe.NurseID
end