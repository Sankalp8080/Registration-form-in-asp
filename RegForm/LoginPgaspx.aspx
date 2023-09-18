<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPgaspx.aspx.cs" Inherits="RegForm.LoginPgaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .textstyle{
            font-size:34px;
            font-weight:bold;
  
            
         
        }
        .login{
            border: 5px solid black;
            height:500px;
            width:600px;
            margin-left:auto;
            margin-right:auto;
            
        }
        .auto-style1 {
            width: 100%;
            height: 495px;
        }
        .auto-style7 {
            text-align: center;
            height: 85px;
            border:5px solid black;
        }
        .auto-style10 {
            width: 222px;
            text-align: center;
            height: 145px;
        }
        .auto-style11 {
            text-align: center;
            height: 145px;
        }
        .auto-style12 {
            text-align: center;
        }
        .textbox{
            border:5px solid black;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Label ID="Label1"  CssClass="textstyle" runat="server" Text="Login Page"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label CssClass="textstyle" ID="Label2" runat="server" Text="Email Id"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox2"  CssClass="textstyle textbox" runat="server" Height="62px" Width="330px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label3"  CssClass="textstyle" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox3"  CssClass="textstyle textbox" TextMode="Password" runat="server" Height="62px" Width="330px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:LinkButton ID="LinkButton1"  CssClass="textstyle" runat="server" BorderColor="Black" BorderStyle="Solid" Height="41px" Width="184px" OnClick="LinkButton1_Click">Login</asp:LinkButton>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
