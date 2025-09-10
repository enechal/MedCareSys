<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = $_POST['user_id'];
    $message = $_POST['feedback'];

    $stmt = $conn->prepare("INSERT INTO feedback (user_id, message) VALUES (?, ?)");
    $stmt->bind_param("is", $user_id, $message);

    if ($stmt->execute()) {
        echo "Feedback submitted successfully!";
    } else {
        echo "Failed to submit feedback.";
    }
}
?>
