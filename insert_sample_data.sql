/* SAMPLE DATA */

INSERT INTO Patients (patient_id, birth_weight, target)
VALUES (1, 3622.00, 'Prediabetic'),
       (2, 4426.00, 'Type 2 Diabetes'),
       (3, 2620.00, 'LADA'),
       (4, 3963.00, 'Gestational Diabetes'),
       (5, 2827.00, 'Cystic Fibrosis-Related Diabetes (CFRD)'),
       (6, 3798.00, 'Gestational Diabetes'),
       (7, 2855.00, 'Gestational Diabetes'),
       (8, 2566.00, 'Gestational Diabetes'),
       (9, 3284.00, 'Type 3c Diabetes (Pancreatogenic Diabetes)'),
       (10, 2590.00, 'Gestational Diabetes'),
       (11, 3126.00, 'Prediabetic'),
       (12, 4008.00, 'Gestational Diabetes'),
       (13, 3740.00, 'Cystic Fibrosis-Related Diabetes (CFRD)'),
       (14, 2739.00, 'Prediabetic'),
       (15, 4477.00, 'Gestational Diabetes');
       
INSERT INTO LifestyleFactors (patient_id, smoking_status, dietary_habits, alcohol_consumption) 
VALUES 
  (1, 'Smoker', 'Healthy', 'High'),
  (2, 'Non-Smoker', 'Healthy', 'Moderate'),
  (3, 'Smoker', 'Unhealthy', 'High'),
  (4, 'Smoker', 'Unhealthy', 'Moderate'),
  (5, 'Smoker', 'Healthy', 'Moderate'),
  (6, 'Non-Smoker', 'Healthy', 'Low'),
  (7, 'Non-Smoker', 'Healthy', 'Low'),
  (8, 'Smoker', 'Unhealthy', 'Low'),
  (9, 'Smoker', 'Healthy', 'Low'),
  (10, 'Non-Smoker', 'Unhealthy', 'Low'),
  (11, 'Non-Smoker', 'Healthy', 'Low'),
  (12, 'Smoker', 'Unhealthy', 'Moderate'),
  (13, 'Smoker', 'Healthy', 'Moderate'),
  (14, 'Non-Smoker', 'Unhealthy', 'Moderate'),
  (15, 'Non-Smoker', 'Healthy', 'High');
  
INSERT INTO LabResults (lab_result_id, patient_id, blood_pressure, cholesterol_levels, digestive_enzyme_levels, liver_function_tests, neurological_assessments, blood_glucose_levels) 
VALUES 
     (1, 1, 124, 201, 56, 'Normal', 3, 168),
     (2, 2, 73, 121, 28, 'Normal', 1, 178), 	
     (3, 3, 121, 185, 55, 'Abnormal', 1, 105),
     (4, 4, 100, 151, 60, 'Abnormal', 2, 121),
     (5, 5, 103, 146, 24, 'Normal', 1, 289),
     (6, 6, 127, 208, 52, 'Normal', 2, 142),
     (7, 7, 115, 237, 96, 'Abnormal', 3, 186),
     (8, 8, 80, 157, 29, 'Normal', 1, 206),
     (9, 9, 138, 185, 74, 'Normal', 3, 160),
     (10, 10, 136, 259, 42, 'Abnormal', 2, 192),
     (11, 11, 134, 193, 59, 'Normal', 3, 192),
     (12, 12, 91, 195, 60, 'Abnormal', 1, 114),
     (13, 13, 128, 191, 76, 'Abnormal', 1, 113),
     (14, 14, 71, 126, 29, 'Normal', 1, 175),
     (15, 15, 116, 163, 43, 'Normal', 2, 136);

INSERT INTO MedicalHistory (history_id, patient_id, genetic_markers, genetic_testing, history_of_PCOS, steroid_use_history) 
VALUES 
    (1, 1, 'Positive', 'Positive', 'No', 'No'),
    (2, 2, 'Positive', 'Negative', 'Yes', 'No'),
    (3, 3, 'Positive', 'Negative', 'Yes', 'No'),
    (4, 4, 'Negative', 'Positive', 'No', 'No'),
    (5, 5, 'Negative', 'Positive', 'No', 'No'),
    (6, 6, 'Positive', 'Negative', 'No', 'No'),
    (7, 7, 'Negative', 'Negative', 'No', 'Yes'),
    (8, 8, 'Positive', 'Negative', 'Yes', 'No'),
    (9, 9, 'Negative', 'Positive', 'No', 'Yes'),
    (10, 10, 'Positive', 'Positive', 'No', 'Yes'),
    (11, 11, 'Negative', 'Negative', 'No', 'No'),
    (12, 12, 'Positive', 'Negative', 'Yes', 'No'),
    (13, 13, 'Positive', 'Positive', 'No', 'Yes'),
    (14, 14, 'Positive', 'Negative', 'Yes', 'Yes'),
    (15, 15, 'Negative', 'Positive', 'No', 'No');


INSERT INTO VitalSigns (patient_id, glucose_level, blood_pressure, insulin_level) 
VALUES
(1, 168, 124.0, 40),
(2, 178, 73.0, 13),
(3, 105, 121.0, 27),
(4, 121, 100.0, 8),
(5, 289, 103.0, 17),
(6, 142, 127.0, 17),
(7, 186, 115.0, 29),
(8, 206, 80.0, 10),
(9, 160, 138.0, 47),
(10, 192, 136.0, 21),
(11, 192, 134.0, 16),
(12, 114, 91.0, 8),
(13, 113, 128.0, 22),
(14, 175, 71.0, 9),
(15, 168, 124.0, 40);

INSERT INTO PregnancyHistory (patient_id, previous_gestational_diabetes, weight_gain_during_pregnancy, pregnancy_history) 
VALUES
    (1,  'No',  15, 'Normal'),
    (2,  'Yes', 15, 'Normal'),
    (3,  'Yes', 19, 'Complications'),
    (4,  'Yes', 26, 'Complications'),
    (5,  'No',  11, 'Normal'),
    (6,  'Yes', 14, 'Normal'),
    (7,  'Yes', 28, 'Complications'),
    (8,  'Yes', 15, 'Complications'),
    (9,  'No',  26, 'Complications'),
    (10, 'No',  17, 'Complications'),
    (11, 'No',  20, 'Complications'),
    (12, 'Yes', 12, 'Normal'),
    (13, 'Yes', 14, 'Normal'),
    (14, 'Yes', 25, 'Complications'),
    (15, 'Yes', 23, 'Complications');


INSERT INTO AutoimmuneProfiles (profile_id, patient_id, autoantibodies, early_onset_symptoms, pancreatic_health, cystic_fibrosis_diagnosis) 
VALUES 
(1, 1, 'Negative', 'No', 36, 'No'),
(2, 2, 'Negative', 'Yes', 26, 'Yes'),
(3, 3, 'Positive', 'Yes', 56, 'Yes'),
(4, 4, 'Positive', 'No', 49, 'Yes'),
(5, 5, 'Negative', 'No', 10, 'No'),
(6, 6, 'Negative', 'Yes', 40, 'Yes'),
(7, 7, 'Negative', 'No', 62, 'Yes'),
(8, 8, 'Negative', 'Yes', 13, 'Yes'),
(9, 9, 'Positive', 'No', 91, 'No'),
(10, 10, 'Negative', 'No', 86, 'Yes'),
(11, 11, 'Positive', 'No', 64, 'No'),
(12, 12, 'Negative', 'No', 67, 'No'),
(13, 13, 'Negative', 'No', 63, 'Yes'),
(14, 14, 'Positive', 'No', 16, 'No'),
(15, 15, 'Negative', 'No', 76, 'No');
