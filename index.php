<?php include ( "inc/connect.inc.php" ); ?>
<?php 
ob_start();
session_start();
if (!isset($_SESSION['user_login'])) {
	$user = "";
}
else {
	$user = $_SESSION['user_login'];
	$result = mysqli_query($con, "SELECT * FROM user WHERE id='$user'");
	$get_user_email = mysqli_fetch_assoc($result);
	$uname_db = $get_user_email != null ? $get_user_email['firstName'] : null;
}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Online Shopping</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="/js/homeslideshow.js"></script>

		<!--slider link -->
		<link rel="stylesheet" type="text/css" href="css/owl.carousel.css" media="all" />
		<link rel="stylesheet" type="text/css" href="css/owl.theme.css" media="all" />
		<link rel="stylesheet" type="text/css" href="css/owl.transitions.css" media="all" />
		

	</head>
	<body style="min-width: 980px;">

		<div class="homepageheader" style="position: relative;">
			<div class="signinButton loginButton">
				<div class="uiloginbutton signinButton loginButton" style="margin-right: 40px;">
					<?php 
						if ($user!="") {
							echo '<a style="text-decoration: none; color: #fff;" href="logout.php">LOG OUT</a>';
						}
						else {
							echo '<a style="color: #fff; text-decoration: none;" href="signin.php">SIGN UP</a>';
						}
					 ?>
					
				</div>
				<div class="uiloginbutton signinButton loginButton" style="">
					<?php 
						if ($user!="") {
							echo '<a style="text-decoration: none; color: #fff;" href="profile.php?uid='.$user.'">Hi '.$uname_db.'</a>';
						}
						else {
							echo '<a style="text-decoration: none; color: #fff;" href="login.php">LOG IN</a>';
						}
					 ?>
				</div>
			</div>
			<div style="float: left; margin: 5px 0px 0px 23px;">
				<a href="index.php">
					<img style=" height: 75px; width: 130px;" src="image/logo.png">
				</a>
			</div>
			
		</div>


		

		<!-- Slide -->

			<div class="slider">
				<img src="image/slider/slide-1.jpg">
				<img src="image/slider/slide-2.jpg">
				<img src="image/slider/slide-3.png">
				<img src="image/slider/slide-4.jpg">
				<img src="image/slider/slide-5.webp">
				<img src="image/slider/slide-6.png">
				<img src="image/slider/slide-7.jpg">
			</div>

			<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
			<script type="text/javascript" src="js/owl.carousel.min.js"></script>
			<script type="text/javascript">
			jQuery('.slider').owlCarousel({
				items : 1,
				autoPlay : true,
				transitionStyle : 'fadeUp',
				itemsDesktop :	[1199,1],
				itemsDesktopSmall :	[979,1],
				itemsTablet :	[768,1],
				stopOnHover : true,
				
			});
			jQuery('.res_menu').click(function(){
			jQuery('.manu ul').slideToggle();
			return false;
			});
		</script>

			
		
		<div class="home-prodlist">
			<div>
				<h3 style="text-align: center;">Products Category</h3>
			</div>
			<div style="padding: 20px 30px; width: 85%; margin: 0 auto;">
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Mens_cloth.php">
							<img src="./image/product/mens_cloth/mens.jpg" class="home-prodlist-imgi">
							</a>
						</div>
					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Woens_cloth.php">
							<img src="./image/product/womens_cloth/Women.jpg" class="home-prodlist-imgi">
							</a>
						</div>
					</li>
				</ul>

				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Beauty.php">
							<img src="./image/product/beauty/w_beauty.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>

				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Men_shoes.php">
							<img src="./image/product/mens_shoes/man_shoes.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
				
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Women_shoes.php">
							<img src="./image/product/womens_shoes/women_shoes.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Kid_shoes.php">
							<img src="./image/product/kids_shoes/Shoes_Kids.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
				
			</div>
			
			

		</div>

		

	</body>
</html>