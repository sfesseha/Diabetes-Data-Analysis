
/* CREATE TABLES */

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    birth_weight DECIMAL(7,2),
    target VARCHAR(100)
);

CREATE TABLE LifestyleFactors (
    lifestyle_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    smoking_status VARCHAR(20),
    dietary_habits VARCHAR(20),
    alcohol_consumption VARCHAR(45),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE LabResults (
    lab_result_id INT PRIMARY KEY,
    patient_id INT,
    blood_pressure INT,
    cholesterol_levels INT,
    digestive_enzyme_levels INT,
    liver_function_tests VARCHAR(45),
    neurological_assessments INT,
    blood_glucose_levels INT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE MedicalHistory (
    history_id INT PRIMARY KEY,
    patient_id INT,
    genetic_markers VARCHAR(45),
    genetic_testing VARCHAR(45),
    history_of_PCOS VARCHAR(3),
    steroid_use_history VARCHAR(3),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE VitalSigns (
    vital_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    glucose_level DECIMAL(5,2),
    blood_pressure DECIMAL(5,2),
    insulin_level DECIMAL(5,2),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE PregnancyHistory (
    patient_id INT NOT NULL PRIMARY KEY,
    previous_gestational_diabetes VARCHAR(3),
    weight_gain_during_pregnancy INT,
    pregnancy_history TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE AutoimmuneProfiles (
    profile_id INT PRIMARY KEY,
    patient_id INT,
    autoantibodies VARCHAR(20),
    early_onset_symptoms VARCHAR(10),
    pancreatic_health VARCHAR(20),
    cystic_fibrosis_diagnosis VARCHAR(10),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
