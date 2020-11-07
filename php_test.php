<?php

include('db_connection.php');
$conn = OpenCon();
$sql_get = "SELECT * FROM employees";
$sql_dat = mysqli_query($conn, $sql_get) or die('error getting data.');

echo "<table>";
echo "<tr><th>employeeNumber</th><th>lastName</th><th>firstName</th><th>extension</th><th>email</th><th>officeCode</th><th>reportsTo</th><th>jobTitle</th>></tr>";

while($row = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
	echo "<tr><td>";
	echo $row['employeeNumber'];
	echo "</td><td>";
	echo $row['lastName'];
	echo "</td><td>";
	echo $row['firstName'];
	echo "</td><td>";
	echo $row['extension'];
	echo "</td><td>";
	echo $row['email'];
	echo "</td><td>";
	echo $row['officeCode'];
	echo "</td><td>";
	echo $row['reportsTo'];
	echo "</td><td>";
	echo $row['jobTitle'];
	echo "</td></tr>";
}

echo "</table>";

?>