<a href="navigate.php">Back to Navigate</a>

<?php

    
include('db_connection.php');
$conn = OpenCon();
$sql_get = "SELECT * FROM Course ORDER BY Dept_id ASC";
$sql_dat = mysqli_query($conn, $sql_get) or die('error getting data.');

echo "<table>";
    
echo "<tr><th>Course_id</th><th>Name</th><th>Dept_id</th><th>Units</th><th>Professor</th><th>Time</th><th>Course_location</th><th>Student_enr</th></tr>";

while($row = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
    echo "<tr><td>";
    echo $row['Course_id'];
    echo "</td><td>";
    echo $row['Name'];
    echo "</td><td>";
    echo $row['Dept_id'];
    echo "</td><td>";
    echo $row['Units'];
    echo "</td><td>";
    echo $row['Professor'];
    echo "</td><td>";
    echo $row['Time'];
    echo "</td><td>";
    echo $row['Course_location'];
    echo "</td><td>";
    echo $row['Student_enr'];
    echo "</td></tr>";
}

echo "</table>";

?>
