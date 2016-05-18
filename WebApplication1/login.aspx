<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <link rel="stylesheet" href="css/login.css" type="text/css" />
        <title>SunBest · Login</title>
    </head>
    
    <body>
        <form id="form1" runat="server">
            
            <div id="header">
                <a href="/index.aspx">
                    <img id="ImageButton" src="images/sun.png" />
                </a>
            </div>
            
            <div id="wrapper">

                <h1>SunBest Login</h1>

                <div id="content">

                    <div id="info">
                        
                        <!-- Username label -->
                        <asp:Label ID="UsernameLabel" CssClass="labels" runat="server" Text="Username" AssociatedControlID="UserNameTextBox"></asp:Label>

                        <!-- Username textbox -->
                        <asp:TextBox ID="UserNameTextBox" CssClass="formStyle" runat="server"></asp:TextBox>

                        <!-- Username required field -->
                        <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="UserNameTextBox"
                            ErrorMessage="The username field is required!" Display="None"></asp:RequiredFieldValidator>

                        <!-- Password label -->
                        <asp:Label ID="PasswordLabel" CssClass="labels" runat="server" Text="Password" AssociatedControlID="PasswordTextBox"></asp:Label>

                        <!-- Password textbox -->
                        <asp:TextBox ID="PasswordTextBox" CssClass="formStyle" runat="server" TextMode="Password"></asp:TextBox>

                        <!-- Password required field -->
                        <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="PasswordTextBox"
                            ErrorMessage="The password field is required!" Display="None"></asp:RequiredFieldValidator>

                        <!-- Summary with the errors in the register -->
                        <asp:ValidationSummary ID="ValSummary" CssClass="required" HeaderText="The following errors were found:<br/>" ShowSummary="true" DisplayMode="List" runat="server" />

                    </div>
                    
                    <!-- Button -->
                    <asp:Button ID="Button" runat="server" OnClick="SendInfo" Text="Login" />

                    <div id="redirection">
                        <p>Are you new? Click
                            <asp:HyperLink Text="here" runat="server" NavigateUrl="~/register.aspx" />
                        </p>
                    </div>
                </div>
            </div>
            
            <p class="copy">2016 SunBest sunglasses. All rights reserved.</p>
        </form>
    </body>
</html>
