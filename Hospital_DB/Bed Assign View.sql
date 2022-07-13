create view BedAssignmentView
as

select p.firstname as 'First Name', p.lastname as 'Last Name', ad.admitDate as 'Admit Date', ad.admitdoc as 'Admidit Doctor', ba.bedID as 'BedID', w.wardID as 'WardID'
from Doctor d
join AdmitDischarge ad
on d.DoctorID = ad.AdmitDoc
join Patient p
on p.PatientID = ad.PatientID
join BedAssignment ba
on p.PatientID = ba.PatientID
join Bed b
on b.BedID = ba.BedID
 join ward w
on w.WardID = b.WardID