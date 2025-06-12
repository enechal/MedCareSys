# MedCareSYS – Multi-Hospital Management System in PHP and MySQL

A web-based Hospital Management System for managing patients, doctors, appointments, and medical records. Built with PHP and MySQL.

---

## Features

- **Patient Management:** Registration, login, profile management, appointment booking, and medical history viewing.
- **Doctor Management:** Doctor login, appointment management, and patient medical history access.
- **Admin Panel:** Manage doctors, patients, appointments, and view contact queries.
- **Appointment Booking:** Patients can book, view, and manage appointments with doctors.
- **Medical History:** Doctors and patients can view and update medical records.
- **Contact Form:** Users can send queries to the hospital.

---

## Project Structure

```
MedCareSys/
├── hospital/
│   ├── index.html           # Landing page
│   ├── contact.php          # Contact form
│   ├── css/                 # Stylesheets
│   ├── js/                  # JavaScript files
│   ├── images/              # Images for UI
│   └── hms/
│       ├── user-login.php   # Patient login
│       ├── registration.php # Patient registration
│       ├── dashboard.php    # Patient dashboard
│       ├── doctor/          # Doctor dashboard & features
│       ├── admin/           # Admin dashboard & features
│       ├── ...              # Other PHP modules (appointments, med history, etc.)
├── SQL File/
│   └── hms.sql              # Database schema and sample data
└── README.md                # Project documentation
```

---

## Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/enechal/MedCareSys.git
   ```
2. **Copy the `hospital` folder** to your web server's root directory:
   - For XAMPP: `xampp/htdocs`
   - For WAMP: `wamp/www`
   - For LAMP: `var/www/html`
3. **Database Setup:**
   - Open [PHPMyAdmin](http://localhost/phpmyadmin)
   - Create a new database named `hms`
   - Import the SQL file: `SQL File/hms.sql`
4. **Run the Application:**
   - Visit [http://localhost/hospital](http://localhost/hospital) in your browser

---

## Default Login Credentials

- **Admin:**
  - Username: `admin`
  - Password: `Test@12345`
- **Patient:**
  - Email: `test@gmail.com`
  - Password: `Test@123`
- **Doctor:**
  - Email: `test@demo.com`
  - Password: `Test@123`

---

## Main Modules

### Patient
- Register and manage profile
- Book and view appointments
- View medical history

### Doctor
- Login and manage appointments
- View and update patient medical records

### Admin
- Manage doctors, patients, and appointments
- View contact queries

### Contact
- Users can submit queries via the contact form

---

## Database
- The database schema is provided in `SQL File/hms.sql`.
- Includes tables for users, doctors, appointments, medical history, and contact queries.

---

## Screenshots
*Add screenshots of the main pages here for better documentation.*

---

## License
This project is for academic and demonstration purposes.

---

## Author
- [enechal](https://github.com/enechal) 