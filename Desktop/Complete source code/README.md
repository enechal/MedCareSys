# MedCareSYS - Multi-Hospital Management System

A comprehensive web-based platform for managing multiple hospitals with features including appointment scheduling, telemedicine, pharmacy management, staff management, and analytics.

## 🏥 Project Overview

MedCareSYS is a centralized, AI-driven multi-hospital management solution that streamlines operations across multiple healthcare facilities. The system covers patient care, staff management, billing, pharmacy operations, telemedicine services, and provides comprehensive analytics.

## ✨ Key Features

### 🏥 Multi-Hospital Management
- Centralized control for multiple hospitals
- Hospital-specific data organization
- Unified dashboard for administrators

### 📅 Appointment System
- Online appointment scheduling
- Automated reminders
- Rescheduling and cancellation capabilities
- Doctor availability management

### 🩺 Telemedicine
- Secure video consultation sessions
- Remote diagnosis capabilities
- Payment processing for telemedicine services
- Session analytics and tracking

### 💊 Pharmacy Management
- Live inventory tracking
- Prescription synchronization
- Automated billing
- Request management system

### 👥 Staff & HR Management
- Employee role management
- Shift scheduling
- Department organization
- Staff performance tracking

### 📊 Analytics & Reporting
- Real-time dashboards
- KPI tracking
- Telemedicine usage statistics
- Financial reporting

## 🛠️ Technology Stack

- **Frontend**: HTML5, CSS3, JavaScript
- **Backend**: PHP
- **Database**: MySQL
- **Server**: Apache (XAMPP)
- **Styling**: Custom CSS with modern design principles

## 📁 Project Structure

```
├── index.html                    # Main homepage
├── Appointment.html              # Appointment scheduling page
├── contact_form.html             # Contact form
├── login.html                    # User login page
├── multi-hospital.html           # Multi-hospital management
├── Multi-Hospital Setup.html     # Hospital setup interface
├── telemedicine_payment.html     # Telemedicine payment page
├── central_hub.html              # Central administration hub
├── db.php                        # Database connection
├── fetch_appointments.php        # Appointment data retrieval
├── get_hospital_info.php         # Hospital information API
├── multi-hospital-setup.php      # Hospital setup backend
├── register_user.php             # User registration
├── submit_contact.php            # Contact form handler
├── submit_feedback.php           # Feedback submission
├── submit_pharmacy_request.php   # Pharmacy request handler
├── medcare_syss_full.sql         # Database schema and data
├── images/                       # Project images and assets
└── README.md                     # Project documentation
```

## 🚀 Installation & Setup

### Prerequisites
- XAMPP (Apache + MySQL)
- Visual Studio Code (recommended)
- Live Server extension for VS Code

### Installation Steps

1. **Install XAMPP**
   - Download and install XAMPP from the official website
   - Start Apache and MySQL services

2. **Setup Database**
   - Open phpMyAdmin (http://localhost/phpmyadmin/)
   - Create a new database named `medcare_sys`
   - Import the `medcare_syss_full.sql` file

3. **Configure Database Connection**
   - Update `db.php` with your database credentials if needed
   - Default settings work with XAMPP's default configuration

4. **Run the Application**
   - Place the project files in XAMPP's `htdocs` folder
   - Access via `http://localhost/your-project-folder/`
   - Or use VS Code with Live Server extension

## 🔧 Configuration

### Database Configuration
Edit `db.php` to match your database settings:
```php
$servername = "localhost";
$username = "root";        // Your MySQL username
$password = "";            // Your MySQL password
$dbname = "medcare_sys";   // Your database name
```

## 📱 Features in Detail

### Central Admin Dashboard
- Unified control panel for all hospitals
- Real-time monitoring of system activities
- User management and permissions
- System-wide analytics

### Appointment Management
- Patient appointment booking
- Doctor schedule management
- Automated email/SMS reminders
- Appointment history tracking

### Telemedicine Platform
- Secure video calling integration
- Digital prescription management
- Payment processing
- Session recording and analytics

### Pharmacy Integration
- Inventory management
- Prescription tracking
- Automated reorder alerts
- Billing integration

## 🎯 Target Users

- Hospital Administrators
- Medical Staff (Doctors, Nurses)
- Patients
- Pharmacy Staff
- IT Administrators

## 🔒 Security Features

- Secure database connections
- Input validation and sanitization
- Session management
- Role-based access control

## 📈 Future Enhancements

- Mobile application development
- AI-powered diagnostic assistance
- Advanced analytics and machine learning
- Integration with medical devices
- Cloud deployment options

## 🤝 Contributing

This is a thesis project. For academic or research purposes, please ensure proper attribution.

## 📄 License

This project is developed for academic purposes as part of a thesis project.

## 👨‍💻 Author

Developed as part of a comprehensive thesis project on multi-hospital management systems.

## 📞 Support

For technical support or questions about this project, please refer to the documentation or contact the development team.

---

**Note**: This system is designed for educational and research purposes. Ensure proper security measures are implemented before any production deployment.
