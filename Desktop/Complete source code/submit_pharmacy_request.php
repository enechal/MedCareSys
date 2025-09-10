<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $medicine = $_POST['medicine'];
    $quantity = $_POST['quantity'];
    $requested_by = $_POST['staff_id'];

    $stmt = $conn->prepare("INSERT INTO pharmacy_requests (medicine_name, quantity, requested_by) VALUES (?, ?, ?)");
    $stmt->bind_param("sii", $medicine, $quantity, $requested_by);

    if ($stmt->execute()) {
        echo "Pharmacy request submitted!";
    } else {
        echo "Error submitting request!";
    }
    $stmt->close();
}
?>
