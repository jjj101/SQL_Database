create proc DoctorAdmin_spoc
as 
Begin

select d.lastname, ad.admitdate
from doctor d
left join AdmitDischarge ad
on d.doctorID = ad.AdmitDoc
end