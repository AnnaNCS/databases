<br/>
<a href="navigate.php">Back to Navigate</a>
<br/>
<?php

    
include('db_connection.php');
$conn = OpenCon();
$sql_get = "SELECT * FROM Student ORDER BY Last_name ASC";
$sql_dat = mysqli_query($conn, $sql_get) or die('error getting data.');

echo "<table>";
    
echo "<tr><th>Student_id</th><th>First_name</th><th>Last_name</th><th>Advisor</th><th>Major</th></tr>";

while($row = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
    echo "<tr><td>";
    echo $row['Student_id'];
    echo "</td><td>";
    echo $row['First_name'];
    echo "</td><td>";
    echo $row['Last_name'];
    echo "</td><td>";
    echo $row['Advisor'];
    echo "</td><td>";
    echo $row['Major'];
    echo "</td><td>";
}

echo "</table>";

?>
