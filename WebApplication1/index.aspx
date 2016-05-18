<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'/>
        <link href="/css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="/css/fonts.css" type="text/css"/>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <!-- <script src="//code.jquery.com/jquery-1.11.3.min.js"></script> -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
        <title>SunBest sunglasses</title>
    </head>
    
    <body>
        
        <form id="form1" runat="server">
            
            <div>
                <script>
    
                    /* Going up button */
                    $(document).ready(function () {
                        $('.going-up').click(function () {
                            $('body, html').animate({
                                scrollTop: '0px'
                            }, 300);
                        });

                        $(window).scroll(function () {
                            if ($(this).scrollTop() > 0) {
                                $('.going-up').slideDown(300);
                            } else {
                                $('.going-up').slideUp(300);
                            }
                        });
                    });

                </script>
                
                <style>
                    
                    .image-behind
                    {
                        display: none;
                    }

                    .center
                    {
                        margin-bottom: 20px;
                        text-align: center;
                    }

                    .redirect
                    {
                        height: 50px;
                        border: 2px solid yellow;
                        border-radius: 5px;
                        background-color: red;
                        color: yellow;
                        margin-top: 75px;
                        margin-bottom: 30px;
                        width: 100px;
                    }

                    .redirect:hover
                    {
                        background-color: yellow;
                        border: 4px solid orangered;
                        color: orangered;
                        font-family: 'Montserrat', sans-serif;
                        font-weight: bold;
                    }

                </style>
                
                <span class="going-up icon-arrow-up2"></span>

                <!-- Header part -->
                <div class="header">
                    <nav class="navbar navbar-inverse navbar-fixed-top">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4"> 
                                
                                    <!-- Logo with link-->
                                    <asp:ImageButton id="logo" ImageUrl="~/images/sun.png" ToolTip="SunBest sunglasses" runat="server" OnClick="IndexPage"/>
                                </div>
                            
                                <div class="pull-right"> 
                                    <ul class="nav nav-pills">

                                        <!-- Buttons to redirect -->
                                        <asp:Button CssClass="redirect" OnClick="Login" ToolTip="Login" runat="server" Text="Login"/>
                                        <asp:Button CssClass="redirect" OnClick="Contact" ToolTip="Contact" runat="server" Text="Contact"/>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div> 
                
                <!-- Slideshow -->
                <div class="container">
                    <br/>
                    
                    <div class="col-md-12">
                        <div id="carousel-1" class="carousel slide" data-ride="carousel">
                            
                            <!-- Indicators-->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-1" data-slide-to="1"></li>
                                <li data-target="#carousel-1" data-slide-to="2"></li>
                                <li data-target="#carousel-1" data-slide-to="3"></li>
                                <li data-target="#carousel-1" data-slide-to="4"></li>
                            </ol>
                            
                            <!-- Slides container-->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <asp:Image CssClass="img-responsive" ToolTip="SunBest sunglasses" ImageUrl="~/images/Slide1.jpg" runat="server" AlternateText="Slide 1"/>
                                </div>
                                
                                <div class="item">
                                    <asp:Image CssClass="img-responsive" ToolTip="SunBest sunglasses" ImageUrl="~/images/Slide2.jpg" runat="server" AlternateText="Slide 2" />
                                </div>
                                
                                <div class="item">
                                    <asp:Image CssClass="img-responsive" ToolTip="SunBest sunglasses" ImageUrl="~/images/Slide3.jpg" runat="server" AlternateText="Slide 3" />
                                </div>
                                
                                <div class="item">
                                    <asp:Image CssClass="img-responsive" ToolTip="SunBest sunglasses" ImageUrl="~/images/Slide4.jpg" runat="server" AlternateText="Slide 4" />
                                </div>
                                
                                <div class="item">
                                    <asp:Image CssClass="img-responsive" ToolTip="SunBest sunglasses" ImageUrl="~/images/Slide5.jpg" runat="server" AlternateText="Slide 5" />
                                </div>
                            </div>
                            <!-- End slides container -->
                            
                            <!-- Controls -->
                            <a href="#carousel-1" class="left carousel-control" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            
                            <a href="#carousel-1" class="right carousel-control" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>                    
                        </div>
                    </div>
                </div>
                <!-- End of the slideshow-->
                
                <!-- Glasses part-->
                <div class="main"> 
                    <div class="container">
                        
                        <!-- Row 1 -->
                        <div class="row">
                            
                            <!-- Column 1 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 1 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/images/Picture1.jpg" ToolTip="Carbon Black · Emerald One" CssClass="thumbnail" runat="server" OnClick="Description_1" />
                                </div>
                                
                                <!-- Description 1 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CARBON BLACK · EMERALD ONE" ToolTip="Carbon Black · Emerald One" runat="server" NavigateUrl="~/descriptions/description1.html" />
                                </div>
                            </div>
                            
                            <!-- Column 2 -->
                            <div class="col-md-4"> 
                                
                                <!-- Picture 2 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton2" ImageUrl="~/images/Picture2.jpg" ToolTip="Carbon Black · Daylight One" CssClass="thumbnail" runat="server" OnClick="Description_2" />
                                </div>
                                
                                <!-- Description 2 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CARBON BLACK · DAYLIGHT ONE" ToolTip="Carbon Black · Daylight One" runat="server" NavigateUrl="~/descriptions/description2.html" />
                                </div>
                            </div>
                            
                            <!-- Column 3 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 3 -->
                                <div class="center">
                                        <asp:ImageButton ID="ImageButton3" ImageUrl="~/images/Picture3.jpg" ToolTip="Carbon Black · Clear Blue One" CssClass="thumbnail" runat="server" OnClick="Description_3" />
                                </div>
                                
                                <!-- Description 3 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CARBON BLACK · CLEAR BLUE ONE" ToolTip="Carbon Black · Clear Blue One" runat="server" NavigateUrl="~/descriptions/description3.html" />
                                </div>
                            </div>
                        </div>
                        <!-- End Row 1 -->
                        
                        <!-- Row 2 -->
                        <div class="row">
                            
                            <!-- Column 1 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 4 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton4" ImageUrl="~/images/Picture4.jpg" ToolTip="Carbon Black · Dark One" CssClass="thumbnail" runat="server" OnClick="Description_4" />
                                </div>
                                
                                <!-- Description 4 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CARBON BLACK · DARK ONE" ToolTip="Carbon Black · Dark One" runat="server" NavigateUrl="~/descriptions/description4.html" />
                                </div>
                            </div>
                            
                            <!-- Column 2 -->
                            <div class="col-md-4"> 
                                
                                <!-- Picture 5 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton5" ImageUrl="~/images/Picture5.jpg" ToolTip="Carbon Black · Sky One" CssClass="thumbnail" runat="server" OnClick="Description_5" />
                                </div>
                                
                                <!-- Description 5 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CARBON BLACK · SKY ONE" ToolTip="Carbon Black · Sky One" runat="server" NavigateUrl="~/descriptions/description5.html" />
                                </div>
                            </div>
                            
                            <!-- Column 3 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 6 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton6" ImageUrl="~/images/Picture6.jpg" ToolTip="Carey · Rose Gold One" CssClass="thumbnail" runat="server" OnClick="Description_6" />
                                </div>
                                
                                <!-- Description 6 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CAREY · ROSE GOLD ONE" ToolTip="Carey · Rose Gold One" runat="server" NavigateUrl="~/descriptions/description6.html" />
                                </div>
                            </div>
                        </div>
                        <!-- End Row 2 -->
                        
                        <!-- Row 3 -->
                        <div class="row">
                            
                            <!-- Column 1 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 7 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton7" ImageUrl="~/images/Picture7.jpg" ToolTip="Carey · Vegas Gold One X" CssClass="thumbnail" runat="server" OnClick="Description_7" />
                                </div>
                                
                                <!-- Description 7 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CAREY · VEGAS GOLD ONE X" ToolTip="Carey · Vegas Gold One X" runat="server" NavigateUrl="~/descriptions/description7.html" />
                                </div>
                            </div>
                            
                            <!-- Column 2 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 8 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton8" ImageUrl="~/images/Picture8.jpg" ToolTip="Carey · Dark One X" CssClass="thumbnail" runat="server" OnClick="Description_8" />
                                </div>
                                
                                <!-- Description 8 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CAREY · DARK ONE X" ToolTip="Carey · Dark One X" runat="server" NavigateUrl="~/descriptions/description8.html" />
                                </div>
                            </div>
                            
                            <!-- Column 3 -->
                            <div class="col-md-4"> 
                                
                                <!-- Picture 9 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton9" ImageUrl="~/images/Picture9.jpg" ToolTip="Carey · Ruby One X" CssClass="thumbnail" runat="server" OnClick="Description_9" />
                                </div>
                                
                                <!-- Description 9 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="CAREY · RUBY ONE X" ToolTip="Carey · Ruby One X" runat="server" NavigateUrl="~/descriptions/description9.html" />
                                </div>
                            </div>
                        </div>
                        <!-- End Row 3 -->
                        
                        <!-- Row 4 -->
                        <div class="row">
                            
                            <!-- Column 1 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 10 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton10" ImageUrl="~/images/Picture10.jpg" ToolTip="Francis · Skateboard Black" CssClass="thumbnail" runat="server" OnClick="Description_10" />
                                </div>
                                
                                <!-- Description 10 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="FRANCIS · SKATEBOARD BLACK" ToolTip="Francis · Skateboard Black" runat="server" NavigateUrl="~/descriptions/description10.html" />
                                </div>
                            </div>
                            
                            <!-- Column 2 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 11 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton11" ImageUrl="~/images/Picture11.jpg" ToolTip="Francis · Skateboard Blue" CssClass="thumbnail" runat="server" OnClick="Description_11" />
                                </div>
                                
                                <!-- Description 11 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="FRANCIS · SKATEBOARD BLUE" ToolTip="Francis · Skateboard Blue" runat="server" NavigateUrl="~/descriptions/description11.html" />
                                </div>
                            </div>
                            
                            <!-- Column 3 -->
                            <div class="col-md-4"> 
                                
                                <!-- Picture 12 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton12" ImageUrl="~/images/Picture12.jpg" ToolTip="Francis · Skateboard Brown" CssClass="thumbnail" runat="server" OnClick="Description_12" />
                                </div>
                        
                                <!-- Description 12 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="FRANCIS · SKATEBOARD BROWN" ToolTip="Francis · Skateboard Brown" runat="server" NavigateUrl="~/descriptions/description12.html" />
                                </div>
                            </div>
                        </div>
                        <!-- End Row 4 -->
                
                        <!-- Row 5 -->
                        <div class="row">
                    
                            <!-- Column 1 -->
                            <div class="col-md-4">
                        
                                <!-- Picture 13 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton13" ImageUrl="~/images/Picture13.png" ToolTip="Moon Shine Black · Fire" CssClass="thumbnail" runat="server" OnClick="Description_13" />
                                </div>
                        
                                <!-- Description 13 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="MOON SHINE BLACK · FIRE" ToolTip="Moon Shine Black · Fire" runat="server" NavigateUrl="~/descriptions/description13.html" />
                                </div>
                            </div>
                    
                            <!-- Column 2 -->
                            <div class="col-md-4">
                                
                                <!-- Picture 14 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton14" ImageUrl="~/images/Picture14.png" ToolTip="Moon Shine Black · Bright Green" CssClass="thumbnail" runat="server" OnClick="Description_14" />
                                </div>
                        
                                <!-- Description 14 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="MOON SHINE BLACK · BRIGHT GREEN" ToolTip="Moon Shine Black · Bright Green" runat="server" NavigateUrl="~/descriptions/description14.html" />
                                </div>
                            </div>
                            
                            <!-- Column 3 -->
                            <div class="col-md-4"> 
                        
                                <!-- Picture 15 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton15" ImageUrl="~/images/Picture15.png" ToolTip="Moon Shine Black · Blue Sky" CssClass="thumbnail" runat="server" OnClick="Description_15" />
                                </div>
                        
                                <!-- Description 15 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="MOON SHINE BLACK · BLUE SKY" ToolTip="Moon Shine Black · Blue Sky" runat="server" NavigateUrl="~/descriptions/description15.html" />
                                </div>
                            </div>
                        </div>
                        <!-- End Row 5 --> 
                
                        <!-- Row 6 -->
                        <div class="row">
                    
                            <!-- Column 1 -->
                            <div class="col-md-4">
                        
                                <!-- Picture 16 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton16" ImageUrl="~/images/Picture16.jpg" ToolTip="Vintage Pacific · Understarted Brown" CssClass="thumbnail" runat="server" OnClick="Description_16" />
                                </div>
                        
                                <!-- Description 16 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="VINTAGE PACIFIC ·<br/>UNDERSTARTED BROWN" ToolTip="Vintage Pacific · Understarted Brown" runat="server" NavigateUrl="~/descriptions/description16.html" />
                                </div>
                            </div>
                    
                            <!-- Column 2 -->
                            <div class="col-md-4">
                        
                                <!-- Picture 17 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton17" ImageUrl="~/images/Picture17.jpg" ToolTip="Vintage Pacific · Amber" CssClass="thumbnail" runat="server" OnClick="Description_17" />
                                </div>
                        
                                <!-- Description 17 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="VINTAGE PACIFIC · AMBER" ToolTip="Vintage Pacific · Amber" runat="server" NavigateUrl="~/descriptions/description17.html" />
                                </div>
                            </div>
                    
                            <!-- Column 3 -->
                            <div class="col-md-4"> 
                        
                                <!-- Picture 18 -->
                                <div class="center">
                                    <asp:ImageButton ID="ImageButton18" ImageUrl="~/images/Picture18.jpg" ToolTip="Vintage Pacific · Weathered Black" CssClass="thumbnail" runat="server" OnClick="Description_18" />
                                </div>
                        
                                <!-- Description 18 -->
                                <div class="center">
                                    <asp:HyperLink CssClass="descr" Text="VINTAGE PACIFIC ·<br/>WEATHERED BLACK" ToolTip="Vintage Pacific · Weathered Black" runat="server" NavigateUrl="~/descriptions/description18.html" />
                                </div>
                            </div>
                        </div>
                        <!-- End Row 6 -->    
                           
                    </div>
                    <!-- End Container -->

                </div>
                <!-- End main-->
                
                <!-- Footer part -->
                <div class="footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ul>
                                    <li class="pull-right">&copy; 2016 SunBest sunglasses. All Rights Reserved.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>