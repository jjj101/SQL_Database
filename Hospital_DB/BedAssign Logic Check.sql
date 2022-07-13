use Hospital_JJJ

--patient, admitting physician, discharging physician with dates 
  select p.lastname 'Patient', d1.lastname 'Doctor', ad.AdmitDate, d2.LastName 'Doctor', ad.DischargeDate
  from AdmitDischarge ad
  join Patient p
  on p.PatientID = ad.PatientID
  join Doctor d1
  on d1.DoctorID = ad.AdmitDoc
  join Doctor d2
  on d2.DoctorID = ad.DischargeDoc