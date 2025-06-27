# Diabetes Data Analysis (SQL + Healthcare Project)

---

## Team Project

This is a collaborative project developed by Team 4 for INST327 (Database Design and Modeling)

### My Contributions:
- Designed and normalized the database schema
- Developed complex SQL queries for diabetes risk analysis
- Created the EER diagram using MySQL Workbench
- Co-authored the project report focusing on data ethics and privacy

## Introduction  
Diabetes affects millions globally, leading to serious complications. Our goal is to design a structured, normalized database that integrates lifestyle, genetic, and medical data for better analysis of diabetes risks and progression.

## Database Description  
We built a normalized relational schema centered around a `Patients` table linked to six other tables covering lab results, medical history, lifestyle factors, and more.

## Key Features
- Fully normalized database schema  
- Sample dataset of 15 patients with diverse health and lifestyle data  
- Complex SQL views and queries to analyze diabetes risk factors and outcomes  
- Emphasis on ethical considerations, including data privacy and bias mitigation  

## Ethical Considerations  
We address representation, privacy, and genetic/environmental bias concerns in our data and analysis.


## How to Use
1. Run the table creation script in your SQL client:
   ```sql
   \i create_tables.sql
2. Insert the sample data
   ```sql
   \i insert_sample_data.sql
3. Execute the analysis queries
   ```sql
    \i. Queries.sql
You can find the full SQL script combining table creation, data insertion, and views here: [`Team4_DiabetesData_Backup.sql`]

## Future Work  
- Scale dataset to 1000+ patients  
- Add more detailed health metrics and symptoms  
- Improve normalization and advanced queries

---

For full details, see `Team4_Project_Report.pdf` 
