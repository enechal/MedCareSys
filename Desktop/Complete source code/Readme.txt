I started by installing Visual Studio Code (VS Code). After that, 
I opened my project folder in VS Code and right-clicked on the file, 
selecting Open with Live Server. For Live Server, 
I went to the Extensions section in VS Code, searched for Live Server,
 and installed it. Once everything was set, I installed XAMPP on my computer. 
I started the Apache and MySQL services in XAMPP. Then, I opened phpMyAdmin by 
typing http://localhost/phpmyadmin/ 
in the browser's address bar.

In phpMyAdmin, I created a new database for my project, then imported the SQL file into it. 
The SQL file contained all the necessary queries to create tables and insert data into them. 
After importing the file, I checked and confirmed that the database was populated with the
 correct tables and data.

I implemented the multi-hospital feature by creating a database structure that stores multiple 
hospitals' details. Each hospital can have its own doctors, appointments, and patients linked to it, 
ensuring data is organized per hospital. I built a management interface where users can view, add, and edit hospital-related data, 
allowing seamless multi-hospital management.
Description: 

Installed VS Code:

First, I installed Visual Studio Code (VS Code) from its official website. After installing, I opened VS Code on my computer.

Opened My Project Folder in VS Code:

Once VS Code was open, I clicked on File > Open Folder and selected my project folder to open it in VS Code.

Installed Live Server (if needed):

If Live Server wasn't working after I right-clicked the file, I went to the Extensions tab in VS Code.

I searched for Live Server, clicked on it, and then clicked Install.

Installed XAMPP:

Next, I downloaded and installed XAMPP from the official website. After installing, I opened XAMPP and started both Apache and MySQL services by clicking Start next to both.

Opened My Project in Browser:

After that, I opened my web browser and typed http://localhost in the address bar. This took me to the XAMPP dashboard.

Opened phpMyAdmin:

Then, I went to phpMyAdmin by typing http://localhost/phpmyadmin/ in the browser’s address bar. This opened the phpMyAdmin interface where I could manage my databases.

Imported SQL File into phpMyAdmin:

In phpMyAdmin, I clicked on the Databases tab and created a new database (for example, I named it medcare_sys).

After creating the database, I clicked on the SQL tab and then the Import button.

I selected the SQL file from my computer, clicked Go, and this imported all the tables and data into my database.

Checked the Database:

Once the import was complete, I saw all the tables in my phpMyAdmin database.

I also worked on the project files listed below:

Appointment.html: I created a page for users to schedule appointments online.

contact_form.html: I built a contact form where users can send their queries.

index.html: I designed the homepage to provide an overview of the system.

db.php: I wrote the database connection script to link the frontend with the database.

fetch_appointments.php: I created this PHP file to fetch and display appointment details from the database.

get_hospital_info.php: I developed this to retrieve hospital information from the database and display it on the website.

login.html: I created a login page for users to access their accounts.

medcare_sys_full.sql: I wrote this SQL file to set up the database schema and data for the system.

Multi-Hospital Setup.html: I built a page to manage multiple hospitals in the system.

multi-hospital-setup.php: I wrote the PHP backend logic to set up and manage multiple hospitals.

register_user.php: I created a PHP script to handle new user registrations.

submit_contact.php: I created this PHP file to handle the contact form submissions and store them in the database.

submit_feedback.php: I wrote the script to store feedback from users in the database.

submit_pharmacy_request.php: I developed this PHP file to manage pharmacy requests submitted by users.

telemedicine_payment_request.php: I created a payment request handling system for telemedicine services.

After completing these tasks, I made sure everything was working properly by running the project on XAMPP, checking that the pages loaded correctly, and ensuring data was saved in the database as expected.

