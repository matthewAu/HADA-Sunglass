<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="css/register.css" type="text/css" />
        <title>SunBest Register</title>
    </head>
    
    <body>

<!--        <script>

            // Calculates the DNI letter from a number.
            function letranif(numero) {
                aLetras = new Array();
                aLetras[0] = "T";
                aLetras[1] = "R";
                aLetras[2] = "W";
                aLetras[3] = "A";
                aLetras[4] = "G";
                aLetras[5] = "M";
                aLetras[6] = "Y";
                aLetras[7] = "F";
                aLetras[8] = "P";
                aLetras[9] = "D";
                aLetras[10] = "X";
                aLetras[11] = "B";
                aLetras[12] = "N";
                aLetras[13] = "J";
                aLetras[14] = "Z";
                aLetras[15] = "S";
                aLetras[16] = "Q";
                aLetras[17] = "V";
                aLetras[18] = "H";
                aLetras[19] = "L";
                aLetras[20] = "C";
                aLetras[21] = "K";
                aLetras[22] = "E";

                return aLetras[numero % 23];
            }

            // Validates the DNI.
            function validanif(source, args) {

                // Basic format validation.
                var validformat = /^\d{8}([A-Z]|[a-z])$/;
                var numero;

                if (!validformat.test(args.Value)) {
                    args.IsValid = false;
                    return;
                }

                // Validation in detail.
                numero = parseInt(args.Value.substring(0, 8));

                // If is not a number returns an error.
                if (isNaN(numero)) {
                    args.IsValid = false;
                    return;
                }

                // We compare the two results in order to validate it.
                if (letranif(numero) == args.Value.substring(8, 9).toUpperCase())
                    args.IsValid = true;
                else
                    args.IsValid = false;
            }
            
            /* Function to validate the phone number */
            function validar(){
                var numeroTelefono=document.getElementById('id_delInputText');
                var expresionRegular1=/^([0-9]+){9}$/;  // With this we validate the number
                var expresionRegular2=/\s/;     // With this we validate that it has no blank spaces
                
                if(numeroTelefono.value=='')
                    alert('This field is required!');
                
                else if(expresionRegular2.test(numeroTelefono.value))
                    alert('ERROR: There are blank spaces.');
                
                else if(!expresionRegular1.test(numeroTelefono.value))
                    alert('ERROR: The phone number entered is not correct. Try again.');
    }


        </script> -->

    <form id="form1" runat="server">
      
        <div id="header">
          <!--  <asp:ImageButton runat="server" id="ImageButton" ImageUrl="~/images/sun.png" OnClick="Index"/> -->
            
            <a href="/index.aspx">
                <img src="/images/sun.png" id="ImageButton"/>
            </a>
        </div>

        <div id="wrapper">

                <h1>SunBest Register</h1>


            <div id="content">

                <div id="info">
                    
                    <!-- Name label -->
                    <asp:Label ID="NameLabel" CssClass="labels" runat="server" Text="Name" AssociatedControlID="NameTextBox"></asp:Label>

                    <!-- Name textbox -->
                    <asp:TextBox ID="NameTextBox" CssClass="formStyle" runat="server"></asp:TextBox>

                    <!-- Name required field -->
                    <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="NameTextBox"
                        ErrorMessage="The name field is required!" Display="None"></asp:RequiredFieldValidator>

                    <!-- Surname label -->
                    <asp:Label ID="SurnameLabel" CssClass="labels" runat="server" Text="Surname" AssociatedControlID="SurnameTextBox"></asp:Label>

                    <!-- Surname textbox -->
                    <asp:TextBox ID="SurnameTextBox" CssClass="formStyle" runat="server"></asp:TextBox>

                    <!-- Surname required field -->
                    <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="SurnameTextBox"
                        ErrorMessage="The surname field is required!" Display="None"></asp:RequiredFieldValidator>

                    <!-- Email label -->
                    <asp:Label ID="EmailLabel" CssClass="labels" runat="server" Text="Email" AssociatedControlID="EmailTextBox"></asp:Label>

                    <!-- Email textbox -->
                    <asp:TextBox ID="EmailTextBox" Placeholder="example@example.com" CssClass="formStyle" runat="server"></asp:TextBox>

                    <!-- Email required field -->
                    <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="EmailTextBox"
                        ErrorMessage="The email field is required!" Display="None"></asp:RequiredFieldValidator>

                    <!-- Email validation -->
                    <asp:RegularExpressionValidator ID="valEmailAddress" CssClass="required" ControlToValidate="EmailTextBox" ValidationExpression=".*@.*\..*"
                        ErrorMessage="Invalid email!" EnableClientScript="true" runat="server" Display="None"></asp:RegularExpressionValidator>

                    <!-- Phone label -->
                    <asp:Label ID="PhoneLabel" CssClass="labels" runat="server" Text="Phone" AssociatedControlID="PhoneTextBox"></asp:Label>

                    <!-- Phone textbox -->
                    <asp:TextBox ID="PhoneTextBox" Placeholder="691565440" CssClass="formStyle" runat="server"></asp:TextBox>

                    <!-- Phone required field -->
                    <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="PhoneTextBox"
                        ErrorMessage="The phone number is required!" Display="None"></asp:RequiredFieldValidator>

                    <!-- Phone validation -->

                    <!-- DNI label -->
                    <asp:Label ID="DNILabel" CssClass="labels" runat="server" Text="DNI" AssociatedControlID="DNITextBox"></asp:Label>

                    <!-- DNI textbox -->
                    <asp:TextBox ID="DNITextBox" Placeholder="46529532A" CssClass="formStyle" runat="server"></asp:TextBox>

                    <!-- DNI required field -->
                    <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="DNITextBox"
                        ErrorMessage="The DNI number is required!" Display="None"></asp:RequiredFieldValidator>

                    <!-- DNI validation -->
             <!--       <asp:CustomValidator ID="CustomValidatorNIF" CssClass="required" runat="server" ErrorMessage="The DNI entered is not correct!"
                        ControlToValidate="DNITextBox" Display="None" ClientValidationFunction="validanif"></asp:CustomValidator> -->

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
                    
                    <!-- Confirm password label -->
                    <asp:Label ID="PasswordConfirmLabel" CssClass="labels" runat="server" Text="Confirm password" AssociatedControlID="PasswordConfirmTextBox"></asp:Label>

                    <!-- Confirm password textbox -->
                    <asp:TextBox ID="PasswordConfirmTextBox" CssClass="formStyle" runat="server" TextMode="Password"></asp:TextBox>

                    <!-- Confirm password required field -->
                    <asp:RequiredFieldValidator CssClass="required" runat="server" ControlToValidate="PasswordConfirmTextBox"
                        ErrorMessage="The password confirm field is required!" Display="None"></asp:RequiredFieldValidator>

                    <!-- Check if passwords match -->
                    <asp:CompareValidator ID="ValComparePassword" CssClass="required" ControlToValidate="PasswordConfirmTextBox"
                        ErrorMessage="Password fields must match" ControlToCompare="PasswordTextBox"
                        EnableClientScript="true" runat="server" Display="None"></asp:CompareValidator>

                    <!-- Summary with the errors in the register -->
                    <asp:ValidationSummary ID="ValSummary" CssClass="required" HeaderText="The following errors were found:<br/>" ShowSummary="true" DisplayMode="List" runat="server" />

                </div>
                
                <!-- Button -->
                <asp:Button ID="Button" runat="server" OnClick="SendInfo" Text="Register" />

            </div>
        </div>
    </form>
    </body>
</html>
