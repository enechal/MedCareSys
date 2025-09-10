<?php
include 'db.php';

$sql = "SELECT a.*, d.name AS doctor_name FROM appointments a
        JOIN doctors d ON a.doctor_id = d.id ORDER BY appointment_time ASC";
$result = $conn->query($sql);

$appointments = [];
while($row = $result->fetch_assoc()) {
    $appointments[] = $row;
}
echo json_encode($appointments);
?>
