USE diabetes_data;

-- Query 1: Group patients by birth weight category and calculate average glucose, cholesterol, blood pressure.
SELECT
  CASE
    WHEN p.birth_weight < 2500 THEN 'Low Birth Weight'
    WHEN p.birth_weight > 4000 THEN 'High Birth Weight'
    ELSE 'Normal Birth Weight'
  END AS birth_weight_group,
  AVG(lr.blood_glucose_levels) AS avg_blood_glucose,
  AVG(lr.cholesterol_levels) AS avg_cholesterol,
  AVG(lr.blood_pressure) AS avg_blood_pressure,
  COUNT(p.patient_id) AS num_of_patients
FROM Patients p
JOIN LabResults lr ON lr.patient_id = p.patient_id
GROUP BY birth_weight_group
ORDER BY birth_weight_group;

-- Query 2: Identify patients who are smokers with abnormal liver function tests.
SELECT p.patient_id, lf.smoking_status, lr.liver_function_tests, p.target
FROM Patients p
JOIN LifestyleFactors lf ON p.patient_id = lf.patient_id
JOIN LabResults lr ON lf.patient_id = lr.patient_id
WHERE lf.smoking_status = 'Smoker'
AND lr.liver_function_tests = 'Abnormal';

-- Query 3: Cholesterol levels by diabetes diagnosis and dietary habits.
SELECT
  p.target AS diagnosis_type,
  AVG(l.cholesterol_levels) AS avg_chol,
  MIN(l.cholesterol_levels) AS min_chol,
  MAX(l.cholesterol_levels) AS max_chol, 
  COUNT(l.patient_id) AS num_of_patients,
  ROUND(AVG(CASE
    WHEN lf.dietary_habits = 'Healthy' THEN l.cholesterol_levels
  END), 2) AS avg_chol_healthy_diet,
  ROUND(AVG(CASE
    WHEN lf.dietary_habits = 'Unhealthy' THEN l.cholesterol_levels
  END), 2) AS avg_chol_unhealthy_diet
FROM Patients p
JOIN LabResults l ON p.patient_id = l.patient_id
JOIN LifestyleFactors lf ON p.patient_id = lf.patient_id
GROUP BY p.target
HAVING 
  COUNT(CASE WHEN lf.dietary_habits = 'Healthy' THEN 1 END) > 0 AND
  COUNT(CASE WHEN lf.dietary_habits = 'Unhealthy' THEN 1 END) > 0;

-- Query 4: Patients with no steroid history or PCOS history, showing glucose and genetic markers.
SELECT 
  p.patient_id,
  p.target AS diagnosis_type,
  AVG(v.glucose_level) AS avg_glucose,
  COUNT(*) AS health_history,
  COUNT(DISTINCT mh.genetic_markers) AS genetic_marker_types
FROM Patients p
JOIN MedicalHistory mh ON p.patient_id = mh.patient_id
JOIN VitalSigns v ON p.patient_id = v.patient_id
WHERE mh.steroid_use_history = 'No' OR mh.history_of_PCOS = 'Yes'
GROUP BY p.target, p.patient_id
HAVING COUNT(*) >= 1;
