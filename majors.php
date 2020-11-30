<br/>
<a href="navigate.php">Back to Navigate</a>
<br/>
<?php

    
include('db_connection.php');
$conn = OpenCon();
$sql_get = "SELECT * FROM Major";
$sql_dat = mysqli_query($conn, $sql_get) or die('error getting data.');

echo "<table>";
    
echo "<tr><th>Dep_id</th><th>Name</th><th>Dep_char</th></tr>";


while($row = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
    echo "<tr><td>";
    echo $row['Dep_id'];
    echo "</td><td>";
    echo $row['Name'];
    echo "</td><td>";
    echo $row['Dep_char'];
    echo "</td></tr>";
}

echo "</table>";

?>
