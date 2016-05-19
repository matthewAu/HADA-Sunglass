<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'/>
        <link href="/css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/fonts.css" type="text/css"/>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
        <title>SunBest sunglasses</title>

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
    </head>
    
    <body>
        
        <form id="form1" runat="server">
            
            <div>

                
                <span class="going-up icon-chevron-up"></span>

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
                        
                        <!-- Row -->
                        <div class="row">
                            <asp:Repeater ID="products" runat="server">
                                <HeaderTemplate>
                                    <div class="row">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="col-md-4">
                                
                                        <!-- Picture -->
                                        <div class="center">
                                            <a href="<%# Eval("href") %>" >
                                                <img id="<%# Eval("productName") %>" type="image" class="thumbnail" title="<%# Eval("productName") %>" onmouseout="this.src='<%# Eval("filePath1") %>'" onmouseover="this.src='<%# Eval("filePath2") %>'" src="<%# Eval("filePath1") %>" />
                                            </a>
                                        </div>
                                
                                        <!-- Description -->
                                        <div class="center">
                                            <a class="descr" title="<%# Eval("productName") %>" href="<%# Eval("href") %>" ><%# Eval("productName") %></a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </div>
                                </FooterTemplate>
                            </asp:Repeater>
                            
                        </div>
                        <!-- End Row -->    
                           
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