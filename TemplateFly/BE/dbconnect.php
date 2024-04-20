<?php

function connectDatabase() {
    $dbHost = 'localhost';
    $dbUser = 'root';
    $dbPass = '';
    $dbName = 'fly_se';

    $conn = new mysqli($dbHost, $dbUser, $dbPass, $dbName);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    return $conn;
}

function setupDatabase($conn) {
    $sqlFilePath = '../fly_se.sql';
    $sql = file_get_contents($sqlFilePath);

    if (!$conn->multi_query($sql)) {
        echo "Error setting up database: " . $conn->error;
    } else {
        echo "Database setup successful<br>";
        // Flush multi queries to avoid "Commands out of sync" error
        while ($conn->next_result()) {
            if (!$conn->more_results()) break;
        }
    }
}

$conn = connectDatabase();
setupDatabase($conn);
// Close the database connection
$conn->close();

//Printing all tables:
// // Array to store table names
// $tables = array(
//     'profiles', 'flights', 'passengers', 'tickets', 'companies',
//     'services', 'airplanes', 'shipments', 'payments', 'employees',
//     'tourisms', 'car_rentings', 'hotels'
// );

// // Flag to track if headers have been printed
// $headersPrinted = false;

// // Loop through each table and fetch all records
// foreach ($tables as $table) {
//     // Execute SELECT query
//     $result = $conn->query("SELECT * FROM $table");

//     if ($result->num_rows > 0) {
//         // Display table name
//         echo "<h2>Table: $table</h2>";

//         // Display records in a table format
//         echo "<table border='1'>";
//         while ($row = $result->fetch_assoc()) {
//             // Print headers if not already printed
//             if (!$headersPrinted) {
//                 echo "<tr>";
//                 foreach ($row as $column => $value) {
//                     echo "<th>$column</th>";
//                 }
//                 echo "</tr>";
//                 $headersPrinted = true;
//             }

//             // Display row data
//             echo "<tr>";
//             foreach ($row as $value) {
//                 echo "<td>$value</td>";
//             }
//             echo "</tr>";
//         }
//         echo "</table><br>";
//     } else {
//         echo "No records found in table: $table<br>";
//     }

//     // Reset headersPrinted flag for next table
//     $headersPrinted = false;
// }

?>
