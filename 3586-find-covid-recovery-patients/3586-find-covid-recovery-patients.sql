SELECT p.patient_id, p.patient_name, p.age,
       DATEDIFF(MIN(c2.test_date), MIN(c1.test_date)) recovery_time
FROM patients p
JOIN covid_tests c1
  ON p.patient_id = c1.patient_id AND c1.result = 'Positive'
JOIN covid_tests c2
  ON p.patient_id = c2.patient_id
 AND c2.result = 'Negative'
 AND c2.test_date > c1.test_date
GROUP BY p.patient_id, p.patient_name, p.age
ORDER BY recovery_time, p.patient_name;