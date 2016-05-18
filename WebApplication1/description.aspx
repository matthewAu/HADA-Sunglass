<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="description.aspx.cs" Inherits="WebApplication1.descriptions.description"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
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
					<a href="./index.aspx"><img id="logo" src="./images/sun.png"></a>	
				</div>
				
					<div class="col-sm-4 header-left">		
                        <p class="log">
                            <a href="login.aspx">Login</a>
                            <span>or</span>
                            <a href="contact.aspx">Contact</a>
						</p>
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
							  <asp:Repeater ID="slides" runat="server">
                                <HeaderTemplate>
                                <ul class="slides">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li data-thumb="<%# Eval("filePathPicture") %>">
									     <div class="thumb-image">
                                             <img src="<%# Eval("filePathPicture") %>" data-imagezoom="true" class="img-responsive">
									     </div>
								    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
							<div class="clearfix"></div>
					</div>	
			</div>
			<div class="grid images_3_1">
                <asp:Label ID="lbl_ProductName" runat="server"></asp:Label>
				<h5><asp:Label ID="lbl_ProductBrand" runat="server"></asp:Label> <asp:Label ID="lbl_ProductRef" runat="server"></asp:Label></h5>
					<div class="doll-gd simpleCart_shelfItem">
						
						<div class="item_add"><span class="item_price"><p> <asp:Label ID="lbl_ProductPrice" runat="server"></asp:Label>€</p></span></div>
						<div class="item_add"><span class="item_price"><a class="hvr-rectangle-out button blue" href="#">ADD TO CART</a></span></div>
						
						<div class="clearfix"></div>
					</div>
						<div class="cnt-gd-rt-col">
							<h6>Colors</h6>
                            <asp:Repeater ID="colors" runat="server">
                                <HeaderTemplate>
                                <ul class="colors">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li title="<%# Eval("relatedProductName") %>">
                                        <a style="background-color: <%# Eval("relatedColor") %>" href="description.aspx?id=<%# Eval("relatedProductId") %>"></a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                            
							<div class="clearfix"></div>
						</div>
                
						<div class="grid_3 grid_5">
						    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<ul id="myTab" class="nav nav-tabs" role="tablist">
								  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
								  <div role="tabpanel" class="tabs-para tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<p><asp:Label ID="lbl_Description" runat="server"></asp:Label></p>
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
