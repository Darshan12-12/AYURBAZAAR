<?php
session_start(); 

include 'connects.php';
$conn =connectdb();
if(isset($_GET['product_id']))
{
	$total=0;
	$product_id=($_GET['product_id']);	
	$sql="select * from addproduct where product_id=".$product_id."";
	$result=$conn->query($sql);
	$total=0;
	$odate= date('d-m-y');
	if($result->num_rows>0)
	{
		
		while($row=$result->fetch_assoc())
		{	
			
			$total=$total+$row["pprice"];
			$_SESSION["PDESC"]=$row["pdesc"];
			$_SESSION["PNAME"]=$row["pname"];
			$_SESSION["PIMG"]=$row["pimg"];
			$_SESSION["PPRICE"]=$row["pprice"];
		}
	}
	
			$query1 = "INSERT INTO cart(product_id,pname,pprice,pdesc,pimg,email,odate) VALUES(?,?,?,?,?,?,?)";
			$statement1 = $conn->prepare($query1);
			//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
			$statement1->bind_param('sssssss',$_GET['product_id'],$_SESSION["PNAME"],$_SESSION["PPRICE"],$_SESSION["PDESC"],$_SESSION["PIMG"],$_SESSION['EMAIL'],$odate);
			$statement1->execute();
			$statement1->close();
			
			header("location:cart.php");
}
								




if(isset($_POST['btnorder']))
{
	
	$total=0;
	
	$sql="select * from cart";
	$result=$conn->query($sql);
	$total=0;
	$odate= date('d-m-y');
	if($result->num_rows>0)
	{
		while($row=$result->fetch_assoc())
		{	
			
			$total=$total+$row["pprice"];
			$_SESSION["PDESC"]=$row["pdesc"];
			$_SESSION["PNAME"]=$row["pname"];
			$_SESSION["PIMAGE"]=$row["pimg"];
			$_SESSION["PPRICE"]=$row["pprice"];
			$product_id=$row["product_id"];



			$query = "INSERT INTO orders(product_id,pname,pprice,pdesc,pimg,email,odate) VALUES(?,?,?,?,?,?,?)";
			$statement = $conn->prepare($query);
			//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
			$statement->bind_param('sssssss',$product_id,$_SESSION["PNAME"],$_SESSION["PPRICE"],$_SESSION["PDESC"],$_SESSION["PIMAGE"],$_SESSION['EMAIL'],$odate);
			$statement->execute();
			$statement->close();
			
		
		}
		
		echo '<script type="text/javascript">alert("Order Placed Successfully!!!"); window.location="userdashbord.php"; </script>';
			
			$query1 = "delete from cart";
			$statement1 = $conn->prepare($query1);
			//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
			$statement1->execute();
			$statement1->close();
	}
}















//delete feedbacks
if(isset($_GET['uid']))
{
	$mysqli=connectdb();
	$id=test_input($_GET['uid']);
	$query = "delete from uinfo where uid=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$id);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:view_users.php");
}


//deleting cases
if(isset($_GET['fid']))
{
	$fid=test_input($_GET['fid']);
	$mysqli=connectdb();
	$query = "delete from feedback where fid=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$fid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:showfeedback.php");
}

//deleting subscribtion

if(isset($_GET['bfid']))
{
	$bfid=test_input($_GET['bfid']);
	$mysqli=connectdb();
	$query = "delete from buy_feedback where bfid=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$bfid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:view_buyer_feedback.php");
}

 //deleting hearing details 
if(isset($_GET['nid']))
{
	$nid=test_input($_GET['nid']);
	$mysqli=connectdb();
	$query = "delete from add_news where nid=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$nid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:admin_view_news.php");
} 
/* //update cases
if(isset($_GET['slno']))
{
	$slno=test_input($_GET['slno']);
	$mysqli=connectdb();
	
	$query1 = "update register_case set  clientid=?, ctitle=?,cdescription=?,caseid=?,casetype=?,courtname=?,cregdate=?,courtdate=?,cstatus=? where slno='". $slno."'" ;
	$statement1 = $mysqli->prepare($query1);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement1->execute();

	
	$query = "update register_case set comment='This item is granted to you! Congrats... Please collect it.', status=1 where rno=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$grantid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:RequestedFood.php");
} */


//deleting feedback 

if(isset($_GET['pied']))
{
	$pid=test_input($_GET['pid']);
	$mysqli=connectdb();
	$query = "delete from add_product where pid=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$pid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:displayproduct.php");
}

//deleting donations

if(isset($_GET['oid']))
{
	$oid=test_input($_GET['oid']);
	$mysqli=connectdb();
	$query = "delete from orders where oid=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$oid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:vieworders.php");
}

if(isset($_GET['email']))
{
	$email=test_input($_GET['email']);
	$mysqli=connectdb();
	$query = "delete from registerr where email=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('s',$email);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:viewusers.php");
}
if(isset($_GET['product']))
{
	
	$product=($_GET['product']);
	$mysqli=connectdb();	
	$sql="delete from addproduct where product_id=".$product."";
	$statement = $mysqli->prepare($sql);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:updateproduct.php");
}
//requesting
/*if(isset($_GET['d_id']))
{
	
	$d_id=test_input($_GET['d_id']);
	$r_date=date('yy-m-d');
	$r_time=date('h:i:sa');
	$mysqli=connectdb();
	
	$query=" INSERT INTO d_request(userid,d_id,r_date,r_time) VALUES(?,?,?,?) ";
	$statement = $mysqli->prepare($query);
	$statement->bind_param('siss',$_SESSION['USERID'],$d_id,$r_date,$r_time);
	if($statement->execute())
	{
		echo '<script type="text/javascript"> window.location="home_r.html"; </script>';
	}
	else
	{
		 echo '<script type="text/javascript"> alert("Error In Request"); </script>';
	}
	
	
}*/
	
//deleting requests by recievers

if(isset($_GET['fno']))
{
	$fno=test_input($_GET['fno']);
	$mysqli=connectdb();
	$query = "delete from contact where fno=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$fno);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:viewfeedback.php");
}
	
//deleting donated food
/*
if(isset($_GET['did']))
{
	$d_id=test_input($_GET['did']);
	$mysqli=connectdb();
	$query = "delete from d_item where d_id=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$d_id);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:DonatedFood.php");
}
	*/
//deleting requests by donor
/*	
if(isset($_GET['rid']))
{
	$rno=test_input($_GET['rid']);
	$mysqli=connectdb();
	$query = "delete from d_request where rno=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$rno);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:RequestedFood.php");
}

	
//granting requests by donor
	
if(isset($_GET['grantid']))
{
	$grantid=test_input($_GET['grantid']);
	$mysqli=connectdb();
	
	$query1 = "update d_item set  dstatus=1 where d_id='".$grantid."'";
	$statement1 = $mysqli->prepare($query1);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement1->execute();

	
	$query = "update d_request set comment='This item is granted to you! Congrats... Please collect it.', status=1 where rno=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$grantid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:RequestedFood.php");
}


//denying requests by donor
	
if(isset($_GET['denyid']))
{
	
	$denyid=test_input($_GET['denyid']);
	$mysqli=connectdb();

	$query = "update d_request set comment='This item is not granted to you! Sorry!!!', status=2 where rno=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$denyid);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:RequestedFood.php");
}

//deleting subscribtion

if(isset($_GET['sno']))
{
	$sno=test_input($_GET['sno']);
	$mysqli=connectdb();
	$query = "delete from subscribe where sno=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$sno);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:viewsubscribe.php");
}

//deleting other feedbacks

if(isset($_GET['no']))
{
	$no=test_input($_GET['no']);
	$mysqli=connectdb();
	$query = "delete from feedback where no=?";
	$statement = $mysqli->prepare($query);
	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
	$statement->bind_param('i',$no);
	if(!$statement->execute()){
		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
	}
	header("location:viewsubscribe.php");
}
*/

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>