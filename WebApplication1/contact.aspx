<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>SunBest Support</title>
<!--Custom Theme files-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smarter Home Contact Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//Custom Theme files-->
<link href="css/contact.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'/>
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>
    
<body>
    
	<!-- main -->
		<div class="main">
            <h1>~Contact <a href="index.aspx">SunBest</a> Support~</h1>
			<div class="main-bdy">
				<div class="main-body-left">
					<script src='https://maps.googleapis.com/maps/api/js?key=&sensor=false&extension=.js'></script> 
 
                    
<!-- Map script -->
<script> 
    google.maps.event.addDomListener(window, 'load', init);
    var map;
    function init() {
        var mapOptions = {
            center: new google.maps.LatLng(38.3826687,-0.510892),
            zoom: 19,
            zoomControl: true,
            zoomControlOptions: {
                style: google.maps.ZoomControlStyle.DEFAULT,
            },
            disableDoubleClickZoom: true,
            mapTypeControl: true,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
            },
            scaleControl: true,
            scrollwheel: true,
            panControl: true,
            streetViewControl: true,
            draggable : true,
            overviewMapControl: true,
            overviewMapControlOptions: {
                opened: false,
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP,
        }
        var mapElement = document.getElementById('Hola');
        var map = new google.maps.Map(mapElement, mapOptions);
        var locations = [

        ];
        for (i = 0; i < locations.length; i++) {
			if (locations[i][1] =='undefined'){ description ='';} else { description = locations[i][1];}
			if (locations[i][2] =='undefined'){ telephone ='';} else { telephone = locations[i][2];}
			if (locations[i][3] =='undefined'){ email ='';} else { email = locations[i][3];}
           if (locations[i][4] =='undefined'){ web ='';} else { web = locations[i][4];}
           if (locations[i][7] =='undefined'){ markericon ='';} else { markericon = locations[i][7];}
            marker = new google.maps.Marker({
                icon: markericon,
                position: new google.maps.LatLng(locations[i][5], locations[i][6]),
                map: map,
                title: locations[i][0],
                desc: description,
                tel: telephone,
                email: email,
                web: web
            });
link = '';     }

}
</script>
                    <script>
                        /* Change border TextBoxes border style when you click */
                        $('.formStyle').on('click', function (e) {

                            e.preventDefault();
                            $(this).toggleClass('clickStyle');
                        });
                    </script>
<style>
    #Hola {
        height:350px;
        width:320px;
    }
    .gm-style-iw * {
        display: block;
        width: 100%;
    }
    .gm-style-iw h4, .gm-style-iw p {
        margin: 0;
        padding: 0;
    }
    .gm-style-iw a {
        color: #4272db;
    }
    .formStyle {
        outline: none;
        border: 1px solid #D7D7D7;
        font-size: 14px;
        color: #999;
        padding: 10px;
        background: none;
        width: 100%
    }
    .required
        {
            color: red;
            font-weight: normal;
            font-family: sans-serif;
            margin-top: 20px;
        }
</style>

<div id='Hola'></div>
				</div>
				<div class="main-body-right">
					<form id="form1" runat="server">

                        <!-- Name Label -->
                        <p class="labels">Name</p>

                        <!-- Name TextBox -->
						<asp:TextBox ID="Name" CssClass="formStyle" runat="server"></asp:TextBox>

                        <!-- Name required field -->
                        <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="Name"
                        ErrorMessage="The name field is required!"></asp:RequiredFieldValidator>

                        <!-- Email Label -->
                        <p class="labels">Email</p>

                        <!-- Email TextBox -->
                        <asp:TextBox ID="Email" CssClass="formStyle" Placeholder="example@gmail.com" runat="server"></asp:TextBox>

                        <!-- Email required field -->
                         <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="Email"
                        ErrorMessage="The email field is required!"></asp:RequiredFieldValidator>

                        <!-- Password Label -->
                        <p class="labels">Email Password</p>

                        <!-- Password TextBox -->
                        <asp:TextBox ID="EmailPassword" CssClass="formStyle" runat="server" TextMode="Password"></asp:TextBox>

                        <!-- Password required field -->
                         <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="EmailPassword"
                        ErrorMessage="The email password field is required!"></asp:RequiredFieldValidator>

                        <!-- Message Label -->
                        <p class="labels">Message</p>

                        <!-- Message TextBox -->
                        <asp:TextBox ID="msg" CssClass="formStyle" TextMode="MultiLine" runat="server"></asp:TextBox>

                        <!-- Message required field -->
                         <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="msg"
                        ErrorMessage="The message field is required!"></asp:RequiredFieldValidator>

                        <!-- Recaptcha -->
                        <div class="g-recaptcha" data-sitekey="6LfFax8TAAAAALVnC6Yrieoj9uv5wGePKx55wyaR"></div>

                        <!-- Button -->
                        <asp:Button id="BotonEnviar" Text="Send" runat="server" OnClick="SendInfo" />                       

					</form>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="copy-right">
				<p>&copy; 2016 SunBest sunglasses. All Rights Reserved</p>
			</div>
		</div>
	<!-- //main -->
</body>
</html>