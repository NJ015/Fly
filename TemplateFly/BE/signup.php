<?php

session_start();

require_once 'dbconnect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullname = $_POST["fullname"];
    $username = $_POST['username'];
    $password = $_POST['password'];
    // $email = $_POST['email'];
    $email = "jnsdbcfj@email.com"; //to be deleted
    // $phone = $_POST['phone'];
    $phone = "43251465";
    $sex = $_POST['gender'];
    $dob = $_POST['dob'];
    $type = "passenger";
    //to be added to db
    // $securityQuestion = $_POST['security_question'];
    // $securityAnswer = $_POST['security_answer'];

    // Connect to the database
    $conn = connectDatabase();

    // Check if username already exists
    $checkQuery = "SELECT * FROM profiles WHERE username = ?";
    $checkStmt = $conn->prepare($checkQuery);
    $checkStmt->bind_param("s", $username);
    $checkStmt->execute();
    $checkResult = $checkStmt->get_result();
    if ($checkResult->num_rows > 0) {
        echo "Username already exists. Please choose a different one.";
    } 
    // else {
    //     // Insert new user into the database
    //     $insertQuery = "INSERT INTO Passengers (fullname, username, password, email, phone, sex, dob, security_question, security_answer) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    //     $insertStmt = $conn->prepare($insertQuery);
    //     $hashedPassword = password_hash($password, PASSWORD_DEFAULT); // Hash the password for security
    //     $insertStmt->bind_param("sssssssss", $fullname, $username, $hashedPassword, $email, $phone, $sex, $dob, $securityQuestion, $securityAnswer);
    //     if ($insertStmt->execute()) {
    //         echo "Sign-up successful! You can now login.";
    //         header("Location:GP/index.html");
    //         // You can redirect the user to the login page or perform other actions here
    //     } else {
    //         echo "Error creating user: " . $conn->error;
    //     }
    // }

    //for testing:
        else {
            // Insert new user into the database
            $insertQuery = "INSERT INTO profiles (name, username, password, email, mobile, type/*, sex, dob*/) VALUES (?, ?, ?, ?, ?, ?/*, ?, ?*/)";
            $insertStmt = $conn->prepare($insertQuery);
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT); // Hash the password for security
            $insertStmt->bind_param("ssssss", $fullname, $username, $hashedPassword, $email, $phone, $type/*, $sex, $dob*/);
            if ($insertStmt->execute()) {
                echo "Sign-up successful!";
                header("Location:../GP/index.html");
                // You can redirect the user to the login page or perform other actions here
            } else {
                echo "Error creating user: " . $conn->error;
            }
        }

    // Close the database connection
    $checkStmt->close();
    $insertStmt->close();
    $conn->close();


    $_SESSION["un"] = $username;

}
?>
