
  --with logic check
  select p.PatientID, p.lastname 'Patient', d1.doctorID, d1.lastname 'Doctor', ad.AdmitDate, d2.doctorID,
  d2.lastName 'Doctor', ad.DischargeDate
  from AdmitDischarge ad
  join Patient p
  on p.PatientID = ad.PatientID
  join Doctor d1
  on d1.doctorID = ad.AdmitDoc
  join Doctor d2
  on d2.doctorID = ad.DischargeDoc
  select top 20 * from AdmitDischarge