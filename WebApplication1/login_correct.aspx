<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_correct.aspx.cs" Inherits="WebApplication1.login_correct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link href="https://fonts.googleapis.com/css?family=Bevan:light,lightitalic,normal,italic,bold,bolditalic" rel="stylesheet" type="text/css"/>
    <title>SunBest · Login Successful</title>
</head>
<body>
    
    <style>
        
        @import url(https://fonts.googleapis.com/css?family=Bevan:light,lightitalic,normal,italic,bold,bolditalic);
        * {
            -moz-box-sizing:border-box;
            -webkit-box-sizing:border-box;
            box-sizing:border-box;
        }


      html, body { width:100%; margin:0px; padding:0px; }
      body {
        background: url('') #8FBE00;
        background-repeat: repeat;
        background-attachment: scroll;
        background-position: center top;
        background-size: auto;
        
        font-family: 'Lucida Grande';
        font-size: 15px;
        color: rgb(0, 0, 0);
        text-align:center;
      }
      .form-all {
        background: url('') rgb(237, 201, 81);
        background-repeat: repeat;
        background-attachment: scroll;
        background-position: center top;
        background-size: auto;
        
        width: 100%;
        max-width: 650px;
        margin: 36px auto;
        padding: 35px 29px ;
        -webkit-box-shadow: 0 4px 4px -1px rgba(0,0,0,0.1);
        box-shadow: 0 4px 4px -1px rgba(0,0,0,0.1);
      }
      @media screen and (max-width: 650px), screen and (max-device-width: 768px) and (orientation: portrait), screen and (max-device-width: 415px) and (orientation: landscape) {
        body {
          background-color: rgb(237, 201, 81);
        }
        .form-all {
          margin-top: 0;
          border: 0;
          -webkit-box-shadow: none;
          box-shadow: none;
        }
      }
      @media print {
       body {
        background: white;
        color: black;
       }

       .form-all {
        margin:0 auto;
        max-width: 100%;
        box-shadow: none;
        background:white;
        float:none;
        width: 650px;
       } 

       #img-suc
       {
           max-width: 100% !important;
           page-break-inside: avoid;
           height: 128px;
           width: 128px;
       }

       #link
       {
           color: black;
           font-weight: bold;
           text-decoration: none;
       }

       #link:hover
       {
           color: red;
           text-decoration: none;
       }

      }
    </style>
    
    <script>

        /* Redirect automatically to the index page using a counter */
        var segundos = 11; //Segundos de la cuenta atrás 

        function tiempo() {
            var t = setTimeout("tiempo()", 1100);
            document.getElementById('contenedor').innerHTML = "Wait " + segundos-- + " seconds.";

            if (segundos == 0) {
                window.location.href = "index.aspx";  //Págiana a la que redireccionará a X segundos

                clearTimeout(t);
            }
        }
        tiempo()

    </script>

    <form id="form1" runat="server">
        <div class="form-all">
            <asp:Image runat="server" ID="img" ImageUrl="~/images/check-icon.png" Height="200px" Width="200px" />
            
            <div>
                <h1>
                    Login Succesful!
                </h1>
                
                <p>You have been logged.</p>
                
                <div id="contenedor"></div>
                
                <p>Or press
                    <asp:HyperLink runat="server" ID="link" NavigateUrl="~/index.aspx">
                        Here
                    </asp:HyperLink>
                </p>
            </div>
        </div>
    </form>
</body>
</html>

