<?php
//session_start(); 
if(isset($_POST['submit']))
{
include 'connects.php';
$name=test_input($_POST['Name']);
$uemail=test_input($_POST['Email']);
//$mobile=test_input($_POST['mobile']);
//$subject=test_input($_POST['subject']);
$message=test_input($_POST['Message']);
$cdate= date('d-m-y');


//mysql_connect("localhost", "root","");
$mysqli = connectdb();
$query = "INSERT INTO contact(name,email,message,cdate) VALUES(?,?,?,?)";
$statement = $mysqli->prepare($query);
//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
$statement->bind_param('ssss',$name,$uemail,$message,$cdate);



if($statement->execute())
{
	echo '<script type="text/javascript">alert("Thank you for your feedback."); window.location="userdashbord.php"; </script>';
}
else
{
   echo '<script type="text/javascript">alert("Error... in posting feedback try again!"); </script>';
}
$statement->close();
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
$fname=test_input($_POST['fname']);
$lname=test_input($_POST['lname']);
$email=test_input($_POST['email']);
$city=test_input($_POST['city']);
$mobileno=test_input($_POST['mobileno']);
$password=test_input($_POST['password']);
$cpassword=test_input($_POST['cpassword']);
