<?php
//session_start(); 
if(isset($_POST['submit']))
{
include 'connects.php';
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['email'];
$city=$_POST['city'];
$mobileno=$_POST['mobileno'];
$password=$_POST['password'];
//$cpassword=$_POST['cpassword'];
$cdate= date('d-m-y');

//$password=md5($password);

$mysqli = connectdb();
$check="select * from register where email='$email'";
$result=$mysqli->query($check);
if($result->num_rows>0)
{
	while($row=$result->fetch_assoc())
	{
		echo '<script type="text/javascript">alert("user already exist");</script>';
	}
}
else{
$mysqli = connectdb();
$query1 = "INSERT INTO registerr(fname,lname,email,city,mobileno,password,cdate) VALUES(?,?,?,?,?,?,?)";
$statement = $mysqli->prepare($query1);
//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
$statement->bind_param('sssssss',$fname,$lname,$email,$city,$mobileno,$password,$cdate);



if($statement->execute())
{
	echo '<script type="text/javascript">alert("Register Successfully."); window.location="index.html"; </script>';
}
else
{
   echo '<script type="text/javascript">alert("Register Unsuccessfull try again!"); </script>';
}
$statement->close();
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
}
?>
