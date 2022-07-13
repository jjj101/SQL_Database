use Hospital_JJJ

select p.firstname, p.lastname, ad.admitdate, ad.admitdoc, ba.bedID, w.wardID
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


