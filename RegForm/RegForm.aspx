<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="RegForm.RegForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 361px;
        }
        *{
            font-size:28px;
        }
        .auto-style3 {
            width: 173px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            height: 22px;
        }
        .auto-style6 {
            width: 54px;
            color:red;
        }
        .auto-style8 {
            width: 173px;
            text-align: center;
            height: 25px;
        }
        .auto-style9 {
            width: 54px;
            height: 25px;
            color:red;
        }
        .auto-style10 {
            width: 412px;
            height: 25px;
        }
        .auto-style11 {
            width: 173px;
            text-align: center;
            height: 22px;
        }
        .auto-style12 {
            width: 54px;
            height: 22px;
            color:red;
        }
        .auto-style13 {
            width: 412px;
            height: 22px;
        }
        .auto-style14 {
            width: 54px;
            height: 49px;
            color:red;
        }
        .auto-style15 {
            height: 24px;
            width: 173px;
            text-align: center;
        }
        .auto-style16 {
            height: 24px;
            width: 412px;
        }
        .auto-style17 {
            width: 173px;
            text-align: center;
            height: 27px;
        }
        .auto-style19 {
            width: 412px;
        }
        .valid{
            color:red;
            font-weight:bold;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            width: 55px;
            height: 25px;
        }
        .auto-style22 {
            width: 55px;
            height: 22px;
        }
        .auto-style24 {
            height: 24px;
            width: 55px;
        }
        .auto-style25 {
            width: 251px;
            height: 25px;
        }
        .auto-style26 {
            width: 251px;
            height: 22px;
        }
        .auto-style27 {
            width: 251px;
        }
        .auto-style28 {
            height: 24px;
            width: 251px;
        }
        .auto-style30 {
            width: 55px;
        }
        .auto-style31 {
            width: 55px;
            text-align: center;
            height: 25px;
        }
        .logout{
           padding-left:250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style20">
        <div>
            Welcome &nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
             <asp:LoginStatus ID="LoginStatus1" CssClass="logout" runat="server" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">FirstName</td>
                <td class="auto-style9">*</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ControlToValidate="TextBox1" ErrorMessage="Enter valid data" ValidationExpression="^[0-9A-Za-z\s\.,#\-]+$" runat="server" CssClass="valid"></asp:RegularExpressionValidator> &nbsp;
                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            
            &nbsp;</tr>
            <tr>
                <td class="auto-style8">LastName</td>
                <td class="auto-style9">*</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style10">
                      <asp:RegularExpressionValidator ControlToValidate="TextBox2" ErrorMessage="Enter valid data" ValidationExpression="^([A-z][A-Za-z]*\s+[A-Za-z]*)|([A-z][A-Za-z]*)$" runat="server" CssClass="valid"></asp:RegularExpressionValidator>&nbsp;
                    
                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" CssClass="valid" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Mobile No</td>
                <td class="auto-style9">*</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                </td>
                <td class="auto-style10">
                     <asp:RegularExpressionValidator ControlToValidate="TextBox3" ErrorMessage="Enter valid Phone Number" ValidationExpression="^([0-9]{10})$" runat="server" CssClass="valid"></asp:RegularExpressionValidator>&nbsp;
                    
                    <asp:RequiredFieldValidator ControlToValidate="TextBox3" ID="RequiredFieldValidator3" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email ID</td>
                <td class="auto-style9">*</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ControlToValidate="TextBox4" ErrorMessage="Enter valid Email ID" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" CssClass="valid"></asp:RegularExpressionValidator>&nbsp;
                    
                    <asp:RequiredFieldValidator ControlToValidate="TextBox4" ID="RequiredFieldValidator4" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style9">*</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox5" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style10">
                  
                     <asp:RegularExpressionValidator ControlToValidate="TextBox5" ErrorMessage="Enter valid Password" ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=!])(?!.*\s).{8,}$" runat="server" CssClass="valid"></asp:RegularExpressionValidator>&nbsp;
                    
                    <asp:RequiredFieldValidator ControlToValidate="TextBox5" ID="RequiredFieldValidator5" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Confirm Password</td>
                <td class="auto-style12">*</td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox6" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ControlToValidate="TextBox6" ID="RequiredFieldValidator6" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                   &nbsp; <asp:CompareValidator ID="CompareValidator1" ControlToCompare="TextBox5" ControlToValidate="TextBox6" runat="server" CssClass="valid" ErrorMessage="Password Does not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Address</td>
                <td class="auto-style14" rowspan="2">*</td>
                <td class="auto-style27" rowspan="2">
                    <textarea id="TextArea1" cols="20" name="S1" rows="2" runat="server"></textarea></td>
                <td class="auto-style30" rowspan="2">
                    &nbsp;</td>
                <td class="auto-style19" rowspan="2">
                     <asp:RegularExpressionValidator ControlToValidate="TextArea1" ErrorMessage="Enter valid Address" ValidationExpression="^([A-z][A-Za-z]*\s+[A-Za-z]*)|([A-z][A-Za-z]*)$" runat="server" CssClass="valid"></asp:RegularExpressionValidator>&nbsp;
                    
                    <asp:RequiredFieldValidator ControlToValidate="TextArea1" ID="RequiredFieldValidator7" runat="server" CssClass="valid" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style11">Gender</td>
                <td class="auto-style12">*</td>
                <td class="auto-style26">

                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem> 
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                   
                </td>
                
                <td class="auto-style22">

                    &nbsp;</td>
                
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8"  ControlToValidate="RadioButtonList1" runat="server" CssClass="valid" ErrorMessage="Select the field"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Pincode</td>
                <td class="auto-style6">*</td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style16">
                     <asp:RegularExpressionValidator ControlToValidate="TextBox7" ErrorMessage="Enter valid pincode" ValidationExpression="^\d{6}$" runat="server" CssClass="valid"></asp:RegularExpressionValidator>&nbsp;
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox7" runat="server" CssClass="valid" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Country</td>
                <td class="auto-style6">*</td>
                <td class="auto-style28">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>US</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10"  ControlToValidate="DropDownList1" runat="server" CssClass="valid" ErrorMessage="Select the field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>
                    <asp:CheckBox ID="CheckBox1" runat="server"  />
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="5">
                    <asp:LinkButton ID="LinkButton2"  runat="server" OnClick="LinkButton2_Click" BorderWidth="2px">Registration</asp:LinkButton>
                  
                    <a href="Display.aspx" runat="server">Cancel</a>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
