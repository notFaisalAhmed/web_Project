<?php
include '../lib/Session.php';
Session :: checkSession();
?>

<?php include '../config/config.php';?>
<?php include '../lib/Database.php';?>
<?php include '../helpers/Format.php';?>
<?php
    $db = new Database();
    
?> 
<?php
if(!isset($_GET['delpostid']) || $_GET['delpostid'] == NULL) {
	echo "<script> window.location='catlist.php';</script>";
	//header("Location: catlist.php");
}	else {
	$postid = $_GET['delpostid'];

	$query = "SELECT * from tbl_post where id ='$postid'";
	$getData = $db->select($query);
	if ($getData) {
		while ($delimg =$getData->fetch_assoc()) {
			$dellink = $delimg['image'];
			unlink($dellink);
		}
	}

	$delquery = "DELETE from tbl_post where id = '$postid'";
	$delData= $db->delete($delquery);
	if ($delData) {
		echo "<script>alert('Data Deleted Successfully.');</script>";
		echo "<script>window.location = 'postlist.php';</script>";
	} else {
		echo "<script>alert('Data Not Deleted!');</script>";
		echo "<script>window.location = 'postlist.php';</script>";
	}
}
?> 