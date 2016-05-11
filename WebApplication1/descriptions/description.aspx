﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="description.aspx.cs" Inherits="WebApplication1.descriptions.description" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SunBest sunglasses | Carbon Black · Emerald One</title>
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css">
<!-- Custom Theme files -->
<script src="../js/jquery.min.js"></script>
<!-- cart -->
<script src="../js/imagezoom.js"></script>
<script src="../js/jquery.flexslider.js"></script>

<!-- cart -->
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Big Store Ecommerce Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>

    <!-- script for close -->
<script>
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.vlcone').fadeOut('slow', function(c){
			$('.vlcone').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
$('.alert-close1').on('click', function(c){
	$('.vlctwo').fadeOut('slow', function(c){
		$('.vlctwo').remove();
	});
});	  
});
</script>
<!-- //script for close -->
<script src="../js/simpleCart.min.js"> </script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="content">
	<div class="container">
		<div class="header">
			<div class="header-top">
				<div class="col-sm-8 logo text-center">
					<a href="../index.html"><img id="logo" src="../images/sun.png"></a>	
				</div>
				
					<div class="col-sm-4 header-left">		
						<p class="log"><a href="#">Signup</a><span>or</span><a  href="#">Login</a></p>
							<div class="cart box_1">
								<a href="#">
								<h3> <span class="simpleCart_total">0.00 €</span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span> items)<img src="../images/cart.png" alt=""></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

							</div>
							<div class="clearfix"> </div>
					</div>
						<div class="clearfix"> </div>
			
			</div>

</div>
		<div class="shoe-slider">
			<div class="grid images_3_of_2">
					<div class="flexslider">
							        <!-- FlexSlider -->
										
										<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />

										<script>
										// Can also be used with $(document).ready()
										$(window).load(function() {
										  $('.flexslider').flexslider({
											animation: "slide",
											controlNav: "thumbnails"
										  }).resize();
										});
										</script>
									<!-- //FlexSlider-->
							  <ul class="slides">
								<li data-thumb="../images/Picture1.jpg">
									 <div class="thumb-image"> <img src="../images/Picture1.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="../images/Picture1_2.jpg">
								   <div class="thumb-image"> <img src="../images/Picture1_2.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								
							  </ul>
							<div class="clearfix"></div>
					</div>	
			</div>
			<div class="grid images_3_1">
                
				<asp:Label runat="server" ID="lable_ProductName" ></asp:Label>
				<h5>REF. CB/001</h5>
					<div class="doll-gd simpleCart_shelfItem">
						
						<div class="item_add"><span class="item_price"><p> 25€</p></span></div>
						<div class="item_add"><span class="item_price"><a class="hvr-rectangle-out button blue" href="#">ADD TO CART</a></span></div>
						
						<div class="clearfix"></div>
					</div>
						<div class="cnt-gd-rt-col">
							<h6>Colors</h6>
							<ul>
								<li  title="Emerald One"><a href="/descriptions/description1.html"></a></li>
								<li title="Daylight One"><a href="/descriptions/description2.html"></a></li>
								<li title="Clear Blue One"><a href="/descriptions/description3.html"></a></li>
								<li title="Dark One"><a href="/descriptions/description4.html"></a></li>
                                <li title="Sky One"><a href="/descriptions/description5.html"></a></li>
							</ul>
                            
                            <style>
                                
                                .cnt-gd-rt-col ul li:nth-child(1) a
                                {
                                    background: #00F683
                                }
                                
                                .cnt-gd-rt-col ul li:nth-child(2) a
                                {
                                    background: #EFB41A;
                                }

                                .cnt-gd-rt-col ul li:nth-child(3) a
                                {
                                    background: #7BC2EE;
                                }
                                
                                .cnt-gd-rt-col ul li:nth-child(4) a
                                {
                                    background: #232323;
                                }
                                
                                .cnt-gd-rt-col ul li:nth-child(5) a
                                {
                                    background: #004DEA;
                                }
                            
                            </style>
                            
							<div class="clearfix"></div>
						</div>
                
						<div class="grid_3 grid_5">
						    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<ul id="myTab" class="nav nav-tabs" role="tablist">
								  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
								  <div role="tabpanel" class="tabs-para tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<p>These glasses timeless design have been improved thanks to a lightweight frame made from polycarbonate high end, the best heat-resistant material and without metal parts, making them perfect for the beach or pool parties. All our glasses offer a great reduction of glare and 100% UV protection using the best polarized lenses.</p>
								  </div>
								</div>
							</div>
						</div>

			</div>
			<div class="clearfix"></div>
		</div>
    </div>
    </div>
    </form>
</body>
</html>