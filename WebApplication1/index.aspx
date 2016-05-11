<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
        
        <link href="./css/index.css" rel="stylesheet" type="text/css">
        
        <link rel="stylesheet" href="/css/fonts.css" type="text/css">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
        <title>SunBest sunglasses</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
                <!-- Going up button -->
        <script>

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
        
        <span class="going-up icon-arrow-up2"></span>
        
        <div class="header"> 
            <div class="container">
                <div class="row">
                    <div class="col-md-4"> 
                        <a href="index.html"><img src="./images/sun.png" id="logo"></a>
                    </div>
                    <div class="pull-right"> 
                        <ul class="nav nav-pills"> 
                            <asp:Button OnClick="Register" runat="server" CssClass="red_button" Text="Register"></asp:Button>
                             <asp:Button OnClick="Contact" runat="server" CssClass="red_button" Text="Contact"></asp:Button>
                        </ul>
                    </div>
                </div>
            </div>
        </div> 
        
        <!-- Slideshow -->
        <div class="container">
            <br>
            
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
                            <img src="images/Slide3.jpg" class="img-responsive" alt="Slide 1">
                        </div>
                        
                        <div class="item">
                            <img src="images/Slide4.jpg" class="img-responsive" alt="Slide 2">
                        </div>
                        
                        <div class="item">
                            <img src="images/Slide6.jpg" class="img-responsive" alt="Slide 3">
                        </div>
                        
                        <div class="item">
                            <img src="images/Slide5.jpg" class="img-responsive" alt="Slide 4">
                        </div>
                        
                        <div class="item">
                            <img src="images/Slide1.jpg" class="img-responsive" alt="Slide 5">
                        </div>
                    </div>  <!-- End slides container -->
                    
                    <!-- Controls -->
                    <a href="#carousel-1" class="left carousel-control" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Anterior</span>
                    </a>
                    
                    <a href="#carousel-1" class="right carousel-control" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Siguiente</span>
                    </a>                    
                    
                </div>
            </div>
        </div>
        <!-- End of the slideshow-->
        
        <!-- Pictures effect with hover -->
        <script>
            $(document).ready(function () {
                $(".thumbnail").hover(function () {
                    $(this).children("img:first-child").hide();
                    $(this).children("img:nth-child(2)").show();
                }, function () {
                    $(this).children("img:first-child").show();
                    $(this).children("img:nth-child(2)").hide();
                })
            })
        </script>
        
        <!-- Glasses -->
        <div class="main"> 
            <div class="container">
                
                <!-- Row 1 -->
                <div class="row">
                    
                    <!-- Column 1 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 1 -->
                        <div>
                            <a href="/descriptions/description1.html" class="thumbnail">
                            <img src="images/Picture1.jpg">
                            <img src="images/Picture1_2.jpg" title="Carbon Black · Emerald One" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 1 -->
                        <div>
                            <a href="/descriptions/description1.html"><p class="descr">CARBON BLACK · EMERALD ONE</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 2 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 2 -->
                        <div>
                            <a href="/descriptions/description2.html" class="thumbnail">
                                <img src="images/Picture2.jpg">
                                <img src="images/Picture2_2.jpg" title="Carbon Black · Daylight One" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 2 -->
                        <div>
                            <a href="/descriptions/description2.html"><p class="descr">CARBON BLACK · DAYLIGHT ONE</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 3 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 3 -->
                        <div>
                            <a href="/descriptions/description.aspx?id=3" class="thumbnail">
                                <img src="/images/Picture3.jpg">
                                <img src="/images/Picture3_2.png" title="Carbon Black · Clear Blue One" style="display: none">
                            </a> 
                        </div>
                        
                        <!-- Description 3 -->
                        <div>
                            <a href="/descriptions/description3.html"><p class="descr">CARBON BLACK · CLEAR BLUE ONE</p></a>
                        </div>
                    </div>
                </div>  <!-- End Row 1 -->
                
                <!-- Row 2 -->
                <div class="row">
                    
                    <!-- Column 1 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 4 -->
                        <div>
                            <a href="/descriptions/description4.html" class="thumbnail">
                            <img src="images/Picture4.jpg">
                            <img src="images/Picture4_2.jpg" title="Carbon Black · Dark One" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 4 -->
                        <div>
                            <a href="/descriptions/description4.html"><p class="descr">CARBON BLACK · DARK ONE</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 2 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 5 -->
                        <div>
                            <a href="/descriptions/description5.html" class="thumbnail">
                                <img src="images/Picture5.jpg">
                                <img src="images/Picture5_2.jpg" title="Carbon Black · Sky One" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 5 -->
                        <div>
                            <a href="/descriptions/description5.html"><p class="descr">CARBON BLACK · SKY ONE</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 3 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 6 -->
                        <div>
                            <a href="/descriptions/description6.html" class="thumbnail">
                                <img src="/images/Picture6.jpg">
                                <img src="/images/Picture6_2.jpg" title="Carey · Rose Gold One" style="display: none">
                            </a> 
                        </div>
                        
                        <!-- Description 6 -->
                        <div>
                            <a href="/descriptions/description6.html"><p class="descr">CAREY · ROSE GOLD ONE</p></a>
                        </div>
                    </div>
                </div>  <!-- End Row 2 -->
                
                <!-- Row 3 -->
                <div class="row">
                    
                    <!-- Column 1 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 7 -->
                        <div>
                            <a href="/descriptions/description7.html" class="thumbnail">
                                <img src="images/Picture7.jpg">
                                <img src="images/Picture7_2.jpg" title="Carey · Vegas Gold One X" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 7 -->
                        <div>
                            <a href="/descriptions/description7.html"><p class="descr">CAREY · VEGAS GOLD ONE X</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 2 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 8 -->
                        <div>
                            <a href="/descriptions/description8.html" class="thumbnail"> 
                                <img src="images/Picture8.jpg">
                                <img src="images/Picture8_2.jpg" title="Carey · Dark One X" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 8 -->
                        <div>
                            <a href="/descriptions/description8.html"><p class="descr">CAREY · DARK ONE X</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 3 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 9 -->
                        <div>
                            <a href="/descriptions/description9.html" class="thumbnail">
                                <img src="images/Picture9.jpg">
                                <img src="images/Picture9_2.jpg" title="Carey · Ruby One X" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 9 -->
                        <div>
                            <a href="descriptions/description9.html"><p class="descr">CAREY · RUBY ONE X</p></a>
                        </div>
                    </div>
                </div>  <!-- End Row 3 -->
                
                <!-- Row 4 -->
                <div class="row">
                    
                    <!-- Column 1 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 10 -->
                        <div>
                            <a href="/descriptions/description10.html" class="thumbnail">
                                <img src="images/Picture10.jpg">
                                <img src="images/Picture10_2.jpg" title="Francis · Skateboard Black" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 10 -->
                        <div>
                            <a href="/descriptions/description10.html"><p class="descr">Francis · Skateboard Black</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 2 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 11 -->
                        <div>
                            <a href="/descriptions/description11.html" class="thumbnail"> 
                                <img src="images/Picture11.jpg">
                                <img src="images/Picture11_2.jpg" title="Francis · Skateboard Blue" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 11 -->
                        <div>
                            <a href="/descriptions/description11.html"><p class="descr">Francis · Skateboard Blue</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 3 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 12 -->
                        <div>
                            <a href="/descriptions/description12.html" class="thumbnail">
                                <img src="images/Picture12.jpg">
                                <img src="images/Picture12_2.jpg" title="Francis · Skateboard Brown" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 12 -->
                        <div>
                            <a href="/descriptions/description12.html"><p class="descr">Francis · Skateboard Brown</p></a>
                        </div>
                    </div>
                </div>  <!-- End Row 4 -->
                
                <!-- Row 5 -->
                <div class="row">
                    
                    <!-- Column 1 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 13 -->
                        <div>
                            <a href="/descriptions/description13.html" class="thumbnail">
                                <img src="/images/Picture13.png">
                                <img src="/images/Picture13_2.png" title="Moon Shine Black · Fire" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 13 -->
                        <div>
                            <a href="/descriptions/description13.html"><p class="descr">MOON SHINE BLACK · FIRE</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 2 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 14 -->
                        <div>
                            <a href="/descriptions/description14.html" class="thumbnail"> 
                                <img src="/images/Picture14.png">
                                <img src="/images/Picture14_2.png" title="Moon Shine Black · Bright Green" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 14 -->
                        <div>
                            <a href="/descriptions/description14.html"><p class="descr">MOON SHINE BLACK · BRIGHT GREEN</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 3 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 15 -->
                        <div>
                            <a href="#" class="thumbnail">
                                <img src="/images/Picture15.png">
                                <img src="/images/Picture15_2.png" title="Moon Shine Black · Blue Sky" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 15 -->
                        <div>
                            <a href="#"><p class="descr">MOON SHINE BLACK · BLUE SKY</p></a>
                        </div>
                    </div>
                </div>  <!-- End Row 5 --> 
                
                <!-- Row 6 -->
                <div class="row">
                    
                    <!-- Column 1 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 16 -->
                        <div>
                            <a href="descriptions/description16.html" class="thumbnail">
                                <img src="images/Picture16.jpg">
                                <img src="images/Picture16_2.jpg" title="Vintage Pacific · Understarted Brown" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 16 -->
                        <div>
                            <a href="descriptions/description16.html"><p class="descr">VINTAGE PACIFIC ·<br>UNDERSTARTED BROWN</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 2 -->
                    <div class="col-md-4">
                        
                        <!-- Picture 17 -->
                        <div>
                            <a href="descriptions/description17.html" class="thumbnail"> 
                                <img src="images/Picture17.jpg">
                                <img src="images/Picture17_2.jpg" title="Vintage Pacific · Amber" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 17 -->
                        <div>
                            <a href="descriptions/description17.html"><p class="descr">VINTAGE PACIFIC · AMBER</p></a>
                        </div>
                    </div>
                    
                    <!-- Column 3 -->
                    <div class="col-md-4"> 
                        
                        <!-- Picture 18 -->
                        <div>
                            <a href="/descriptions/description18.html" class="thumbnail">
                                <img src="images/Picture18.jpg">
                                <img src="images/Picture18_2.jpg" title="Vintage Pacific · Weathered Black" style="display: none">
                            </a>
                        </div>
                        
                        <!-- Description 18 -->
                        <div>
                            <a href="/descriptions/description18.html"><p class="descr">VINTAGE PACIFIC ·<br>WEATHERED BLACK</p></a>
                        </div>
                    </div>
                </div>  <!-- End Row 6 -->       
                
            </div>  <!-- End Container --> 
        </div>  <!-- End main-->
                

                
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
