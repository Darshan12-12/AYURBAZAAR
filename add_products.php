<?php 
session_start();

$conn = mysqli_connect("localhost","root","","udetails");
if(isset($_POST['send_btn']))
{
$pname=$_POST['pname'];
$price=$_POST['price'];
$quantity=$_POST['quantity'];
$cat=$_POST['cat'];
$pdesc=$_POST['pdesc'];
$pimage=$_FILES['pimage']['name'];
$S=$_SESSION['UNAME'];


$query = "INSERT INTO add_product(pname,price,quantity,cat,pdesc,pimage,uname) VALUES('$pname','$price','$quantity','$cat','$pdesc','$pimage','$S')";
$query_run=mysqli_query($conn,$query);

if($query_run)
{
	
	move_uploaded_file($FILES["pimage"]["tmp_name"], "upload/".$_FILES["pimage"]["name"]);
    echo '<script type="text/javascript">alert("Your news added  successfull!"); window.location="addproduct.php"; </script>';
	$_SESSION['status']="image stored successfully";
	header('location: addnews.php');
	
}
else
{
	$_SESSION['status']="image stored failed";
	header('location: index.html');
	echo '<script type="text/javascript">alert("Your  fail to add news "); window.location="login.html"; </script>';
}



}
?>