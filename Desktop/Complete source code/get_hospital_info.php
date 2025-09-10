<?php
include 'db.php';

$hospital_id = $_GET['id'];

$stmt = $conn->prepare("SELECT * FROM hospitals WHERE id = ?");
$stmt->bind_param("i", $hospital_id);
$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {
    echo json_encode($row);
} else {
    echo json_encode(["error" => "Hospital not found"]);
}
?>
