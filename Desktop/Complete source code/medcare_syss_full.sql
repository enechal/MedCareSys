-- Create Database
CREATE DATABASE medcare_syss;
USE medcare_sys;

-- 1. Hospitals Table
CREATE TABLE hospitals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address TEXT NOT NULL,
    specialties TEXT NOT NULL,
    contact VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserting 20 records into hospitals table
INSERT INTO hospitals (name, address, specialties, contact) VALUES
('City Hospital', '123 City Road', 'Cardiology, Orthopedics', '123-456-7890'),
('Green Valley Medical Center', '45 Green St.', 'General Surgery, Pediatrics', '987-654-3210'),
('Health Care Clinic', '11 Main St.', 'Dermatology, Neurology', '555-123-4567'),
('Sunrise Medical', '230 Sunset Blvd', 'Dentistry, Ophthalmology', '555-987-6543'),
('Oceanview Hospital', '320 Ocean Drive', 'Cardiology, Emergency Care', '555-345-6789'),
('Parkside Health', '543 Park Avenue', 'Radiology, Pediatrics', '555-567-8901'),
('Westend Medical', '432 Westend Rd', 'General Surgery, Cardiology', '555-678-1234'),
('Bright Future Hospital', '123 Bright Blvd', 'Gynaecology, Pediatrics', '555-234-5678'),
('Starlight Clinic', '789 Star Lane', 'Physiotherapy, Neurology', '555-890-1234'),
('Rainbow Hospital', '56 Rainbow Crescent', 'Orthopedics, ENT', '555-345-6789'),
('Lakeside Care Center', '15 Lake Road', 'Urology, General Medicine', '555-987-6543'),
('Sunbeam Medical', '98 Sunbeam Dr.', 'Dentistry, Physiotherapy', '555-234-5678'),
('Blue Ridge Clinic', '234 Blue Ridge Rd.', 'Pediatrics, General Surgery', '555-567-8901'),
('Golden Gate Hospital', '3 Golden Way', 'Cardiology, Ophthalmology', '555-678-1234'),
('Clearview Medical Center', '12 Clearview Rd.', 'Radiology, Urology', '555-890-1234'),
('Pine Valley Hospital', '234 Pine Valley Blvd', 'Emergency Care, Orthopedics', '555-234-5678'),
('Silver Creek Clinic', '76 Silver Creek Rd.', 'General Medicine, Cardiology', '555-345-6789'),
('Mountainview Medical', '90 Mountainview Ave', 'ENT, Pediatrics', '555-234-5678'),
('Cedarwood Hospital', '202 Cedarwood Dr.', 'General Surgery, Ophthalmology', '555-678-1234');

-- 2. Doctors Table
CREATE TABLE doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hospital_id INT,
    name VARCHAR(255) NOT NULL,
    specialty VARCHAR(255) NOT NULL,
    availability TEXT,
    FOREIGN KEY (hospital_id) REFERENCES hospitals(id)
);

-- Inserting 20 records into doctors table
INSERT INTO doctors (hospital_id, name, specialty, availability) VALUES
(1, 'Dr. John Doe', 'Cardiologist', 'Mon-Fri, 9am-5pm'),
(2, 'Dr. Jane Smith', 'Surgeon', 'Mon-Fri, 9am-4pm'),
(3, 'Dr. Emily Johnson', 'Dermatologist', 'Mon-Wed, 10am-4pm'),
(4, 'Dr. Michael Brown', 'Dentist', 'Tue-Sat, 9am-6pm'),
(5, 'Dr. Olivia Lee', 'Cardiologist', 'Mon-Fri, 8am-4pm'),
(6, 'Dr. Liam Harris', 'Radiologist', 'Mon-Fri, 9am-5pm'),
(7, 'Dr. Noah Davis', 'General Surgeon', 'Mon-Fri, 8am-4pm'),
(8, 'Dr. Ava Wilson', 'Pediatrician', 'Mon-Fri, 9am-3pm'),
(9, 'Dr. Isabella Clark', 'Neurologist', 'Mon-Wed, 10am-5pm'),
(10, 'Dr. Mason Lewis', 'Ophthalmologist', 'Tue-Fri, 9am-6pm'),
(11, 'Dr. Lucas Walker', 'Urologist', 'Mon-Fri, 8am-4pm'),
(12, 'Dr. Mia Scott', 'Pediatrician', 'Mon-Fri, 9am-3pm'),
(13, 'Dr. Ethan King', 'Orthopedic Surgeon', 'Mon-Fri, 9am-5pm'),
(14, 'Dr. Sophia Adams', 'ENT Specialist', 'Tue-Sat, 9am-6pm'),
(15, 'Dr. Jack Taylor', 'Cardiologist', 'Mon-Fri, 9am-5pm'),
(16, 'Dr. Lily Martinez', 'General Surgeon', 'Mon-Wed, 10am-4pm'),
(17, 'Dr. Benjamin Lee', 'Pediatrician', 'Mon-Fri, 9am-3pm'),
(18, 'Dr. Alexander Young', 'Orthopedic Specialist', 'Mon-Fri, 8am-4pm'),
(19, 'Dr. Charlotte Hall', 'Dermatologist', 'Mon-Fri, 9am-4pm'),
(20, 'Dr. William Allen', 'Surgeon', 'Mon-Fri, 9am-5pm');

-- 3. Patients Table
CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    contact VARCHAR(255),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserting 20 records into patients table
INSERT INTO patients (name, date_of_birth, contact, email) VALUES
('Alice Brown', '1985-04-15', '555-123-4567', 'alice.brown@email.com'),
('Bob Smith', '1990-03-22', '555-234-5678', 'bob.smith@email.com'),
('Charlie Davis', '1995-06-10', '555-345-6789', 'charlie.davis@email.com'),
('Diana Moore', '1980-01-25', '555-456-7890', 'diana.moore@email.com'),
('Eva Wilson', '1992-11-14', '555-567-8901', 'eva.wilson@email.com'),
('Frank Taylor', '1987-07-30', '555-678-9012', 'frank.taylor@email.com'),
('Grace Lee', '1985-12-09', '555-789-0123', 'grace.lee@email.com'),
('Hannah Clark', '1991-02-28', '555-890-1234', 'hannah.clark@email.com'),
('Ivy Harris', '1990-09-19', '555-901-2345', 'ivy.harris@email.com'),
('Jack King', '1994-08-03', '555-012-3456', 'jack.king@email.com'),
('Katherine Scott', '1983-05-11', '555-123-4567', 'katherine.scott@email.com'),
('Liam Johnson', '1989-03-29', '555-234-5678', 'liam.johnson@email.com'),
('Mia Walker', '1997-10-15', '555-345-6789', 'mia.walker@email.com'),
('Nathan Adams', '1996-04-05', '555-456-7890', 'nathan.adams@email.com'),
('Olivia Lewis', '1988-02-17', '555-567-8901', 'olivia.lewis@email.com'),
('Paul White', '1993-07-21', '555-678-9012', 'paul.white@email.com'),
('Quinn Robinson', '1994-12-04', '555-789-0123', 'quinn.robinson@email.com'),
('Rachel Young', '1982-11-19', '555-890-1234', 'rachel.young@email.com'),
('Sam Hall', '1995-01-13', '555-901-2345', 'sam.hall@email.com'),
('Tara Harris', '1989-06-22', '555-012-3456', 'tara.harris@email.com');

-- 4. Appointments Table
CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    status ENUM('pending', 'completed', 'cancelled') DEFAULT 'pending',
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

-- Inserting 20 records into appointments table
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status) VALUES
(1, 2, '2023-06-15', '10:00:00', 'pending'),
(2, 3, '2023-06-16', '11:00:00', 'completed'),
(3, 4, '2023-06-17', '14:00:00', 'cancelled'),
(4, 5, '2023-06-18', '09:30:00', 'pending'),
(5, 6, '2023-06-19', '15:00:00', 'completed'),
(6, 7, '2023-06-20', '13:00:00', 'pending'),
(7, 8, '2023-06-21', '12:30:00', 'completed'),
(8, 9, '2023-06-22', '10:30:00', 'pending'),
(9, 10, '2023-06-23', '08:30:00', 'completed'),
(10, 11, '2023-06-24', '11:00:00', 'pending'),
(11, 12, '2023-06-25', '14:00:00', 'completed'),
(12, 13, '2023-06-26', '10:30:00', 'pending'),
(13, 14, '2023-06-27', '09:30:00', 'completed'),
(14, 15, '2023-06-28', '13:00:00', 'pending'),
(15, 16, '2023-06-29', '11:00:00', 'completed'),
(16, 17, '2023-06-30', '10:00:00', 'pending'),
(17, 18, '2023-07-01', '09:00:00', 'completed'),
(18, 19, '2023-07-02', '15:00:00', 'pending'),
(19, 20, '2023-07-03', '12:00:00', 'completed'),
(20, 1, '2023-07-04', '14:30:00', 'pending');

-- Repeat this for other tables (HR Employees, Pharmacy, Accounting, etc.)
-- Add similar 20 records for each table (e.g., HR Employees, Pharmacy, etc.) as needed.
