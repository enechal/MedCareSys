<?php
include('db.php');  // Include the database connection file

// Handle Appointment Booking
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit_appointment'])) {
    $patient_name = $_POST['patientName'];
    $hospital_id = $_POST['hospitalSelect'];
    $appointment_date = $_POST['appointmentDate'];

    // Insert appointment into the database
    $sql = "INSERT INTO appointments (patient_name, hospital_id, appointment_date) VALUES ('$patient_name', '$hospital_id', '$appointment_date')";
    
    if ($conn->query($sql) === TRUE) {
        $message = "Appointment scheduled successfully for $patient_name at hospital with ID: $hospital_id on $appointment_date.";
    } else {
        $message = "Error: " . $conn->error;
    }
}

// Retrieve Hospital Information
$sql = "SELECT * FROM hospitals";
$result = $conn->query($sql);

$hospitals = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $hospitals[] = $row;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MedCareSYS – Multi-Hospital Management System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    /* Add your styles here */
  </style>
</head>

<body>
  <div class="container">
    <h2>Multi-Hospital Management System</h2>
    
    <?php if(isset($message)) { echo "<div class='alert alert-success'>$message</div>"; } ?>

    <!-- Hospital Selection and Appointment -->
    <div class="form-section">
      <h3>Book an Appointment</h3>
      <form action="multi-hospital-setup.php" method="POST">
        <div class="mb-3">
          <label for="hospitalSelect" class="form-label">Select Hospital</label>
          <select class="form-control" id="hospitalSelect" name="hospitalSelect" required>
            <option value="">Select a Hospital</option>
            <?php foreach ($hospitals as $hospital): ?>
              <option value="<?php echo $hospital['id']; ?>"><?php echo $hospital['name']; ?></option>
            <?php endforeach; ?>
          </select>
        </div>
        <div class="mb-3">
          <label for="patientName" class="form-label">Patient Name</label>
          <input type="text" class="form-control" id="patientName" name="patientName" required />
        </div>
        <div class="mb-3">
          <label for="appointmentDate" class="form-label">Appointment Date</label>
          <input type="date" class="form-control" id="appointmentDate" name="appointmentDate" required />
        </div>
        <button type="submit" name="submit_appointment" class="btn btn-primary">Book Appointment</button>
      </form>
    </div>

    <hr>

    <!-- Hospital Details Section -->
    <h3>Hospital Information</h3>
    <div class="row">
      <?php foreach ($hospitals as $hospital): ?>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title"><?php echo $hospital['name']; ?></h5>
              <p class="card-text"><?php echo $hospital['address']; ?></p>
              <p><strong>Specialties:</strong> <?php echo $hospital['specialties']; ?></p>
              <p><strong>Contact:</strong> <?php echo $hospital['contact']; ?></p>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
  </div>
</body>
</html>

<?php $conn->close(); ?>
