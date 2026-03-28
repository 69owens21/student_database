#  Student Database ETL Script

An automated Bash script designed to populate a normalized PostgreSQL database from flat CSV files. This project was built to practice database normalization, bash scripting, and PostgreSQL database administration via the terminal.

## Project Overview
This repository contains a data insertion script that reads student and course data from CSV files and maps them to a relational database structure. It dynamically handles the creation of primary keys and the assignment of foreign keys to maintain data integrity across multiple tables.

##  Database Schema
The script populates a `students` database containing the following tables:
* **`majors`**: Stores unique degree programs.
* **`courses`**: Stores unique class offerings.
* **`majors_courses`**: A junction table mapping the many-to-many relationship between majors and courses.
* **`students`**: Stores student details, linking them to their respective major via a `major_id` foreign key.

##  How It Works
1. **Idempotent Execution:** The script begins by truncating all tables (`students`, `majors`, `courses`, `majors_courses`) to ensure a clean slate, preventing duplicate data on multiple runs.
2. **CSV Parsing:** It uses `while` loops with `IFS=","` to parse `courses.csv` and `students.csv` line by line.
3. **Dynamic Relational Mapping:** * Before inserting a record, it queries the database to check if the entity (e.g., a specific major or course) already exists.
   * If it doesn't exist, it inserts the new record and retrieves the newly generated `SERIAL` ID.
   * It uses these IDs to accurately build the relationships in the junction tables and the main students table.
4. **Data Sanitization:** It handles missing data gracefully (e.g., assigning a `null` value to `MAJOR_ID` if a student's major is not found).

##  Usage

### Prerequisites
* **PostgreSQL** installed and running.
* A database named `students` configured with the correct tables.
* The source data files: `courses.csv` and `students.csv` located in the same directory.

### Execution
Run the script from the terminal. Make sure it has executable permissions!

```bash
chmod +x insert_data.sh
./insert_data.sh


