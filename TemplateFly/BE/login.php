<?php

session_start();

$username = $_POST['username']; //depends on the form
$password = $_POST['password']; //depends on the form

$conn = connectDatabase();

$query = "SELECT * FROM Passengers WHERE username = ? AND password = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

if ($user) {
    echo "Login successful!";
    header("Location:../GP/index.html");
} else {
    echo "Invalid username or password.";
}

$_SESSION["un"] = $username;

$stmt->close();
$conn->close();

?>