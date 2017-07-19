<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="WebApplication1.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
     
    
    <style type="text/css">
        @font-face 
        {
                font-family: Cubic;
                src: url("C:\Users\gourabkonar\Documents\Visual Studio 2017\Projects\bus_reservation\WebApplication1\fonts\Cubic.ttf");
         }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            height: 39px;
        }
        #Reset1 {
            text-align: left;
            height: 35px;
            width: 72px;
        }
    </style>
</head>
<body>
    <h1 style="text-align:center;font-family:Cubic">User Registration</h1>
    <form id="form1" runat="server" >
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User Name</td>
                    <td>
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="*enter user name" ForeColor="#FF6666"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">E-mail</td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="*enter a valid email address" ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="*enter a password" ForeColor="#FF6666"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="repeatpass" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass" ErrorMessage="*enter confirm password" ForeColor="#FF6666"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="repeatpass" ErrorMessage="*both password must be same" ForeColor="#FF5050"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: center" id="label1">Mobile</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobile" ErrorMessage="*enter mobile no." ForeColor="#FF6666"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 35px" Text="Submit" />
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p style="text-align: right">
        &nbsp;</p>
</body>
</html>
