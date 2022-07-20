
  /* Query to show Patient's Bed Assignment */
  select concat(p.firstname, ' ', p.lastname) as 'Patient Name', ba.bedID as 'Bed Assignment'
  from patient p
  join bedAssignment ba
  on p.patientID = ba.PatientID
  order by p.lastName asc


/*Query to show Paitent's Hospital Admission details */
select concat(p.firstname, ' ', p.lastname) as 'Patient Name', ad.admitdate as 'Admit Date', ad.admitdoc as 'Admit Doctor', ba.bedID, w.wardID
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
order by ad.AdmitDate asc 

/* Cross Join to show all possible Bed/Ward Combinations */
select top 1000 b.BedID, w.WardID
from Bed b
cross join ward w
order by bedID 

/*Cross Join to show all possible Nurse/Ward Combinations*/
select top 1000 concat(firstname, ' ' , lastname) as 'Nurse Name', wardID
from Nurse
cross join ward
order by WardID

/* Stored Procedure with parametewrs for BedID and WardID  to find patient's admission info*/
create proc [dbo].[BedAssign_para] @bedID int, @wardID int
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
where b.BedID = @bedID and WardID = @wardID
end 

select d.lastname, ad.admitdate
from doctor d
left join AdmitDischarge ad
on d.doctorID = ad.AdmitDoc