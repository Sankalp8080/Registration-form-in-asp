<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="RegForm.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    //$(document).ready(function () {
    //    $('[id*=Button2]').on("click", function () {
    //        $('[id*=Panel1]').attr('style', 'display: none;');
    //      //  console.log("hide");
    //        return false;
    //           });
    //    $('[id*=btnDelete]').on("click", function () {
    //        $('[id*=Panel1]').attr('style', 'display: block;');
    //        //   console.log("show")
    //        return false;
    //    });     
   // });
   

</script>
    <style type="text/css">
               .auto-style1 {
            width: 100%;
        }
        *{
            font-size:28px;
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
        .auto-style25 {
            width: 251px;
            height: 25px;
        }
        .auto-style21 {
            width: 55px;
            height: 25px;
        }
        .auto-style10 {
            width: 412px;
            height: 25px;
        }
        .valid{
            color:red;
            font-weight:bold;
        }
        .auto-style31 {
            width: 55px;
            text-align: center;
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
        .auto-style26 {
            width: 251px;
            height: 22px;
        }
        .auto-style22 {
            width: 55px;
            height: 22px;
        }
        .auto-style13 {
            width: 412px;
            height: 22px;
        }
        .auto-style17 {
            width: 173px;
            text-align: center;
            height: 27px;
        }
        .auto-style14 {
            width: 54px;
            height: 49px;
            color:red;
        }
        .auto-style27 {
            width: 251px;
        }
        .auto-style30 {
            width: 55px;
        }
        .auto-style19 {
            width: 412px;
        }
        .auto-style3 {
            width: 173px;
            text-align: center;
        }
        .auto-style6 {
            width: 54px;
            color:red;
        }
        .auto-style28 {
            height: 24px;
            width: 251px;
        }
        .auto-style24 {
            height: 24px;
            width: 55px;
        }
        .auto-style16 {
            height: 24px;
            width: 412px;
        }
        .auto-style15 {
            height: 24px;
            width: 173px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            height: 22px;
        }
        .logout{
           padding-left:250px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Welcome &nbsp; <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
                    <asp:LoginStatus ID="LoginStatus1" CssClass="logout" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    
                    
<div id="gridd" runat="server">

    <asp:HiddenField ID="HiddenField1" runat="server" Value="" Visible="false"/>
    <asp:HiddenField ID="HiddenField2" runat="server" Value="" Visible="false"/>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GMRegConnectionString %>" ProviderName="<%$ ConnectionStrings:GMRegConnectionString.ProviderName %>" SelectCommand="SELECT [firstname], [lastname], [mobileno], [email], [cpassword], [addresss], [gender], [pincode], [country], [statuss],CreatedBy, CreatedDt, ModifedBy, ModifiedDt, DeletedBy, DeletedDt, remark FROM [RegTable]"></asp:SqlDataSource>
                
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    

                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>                            
 <asp:Button runat="server" Text="Edit" OnClick="btnEdit_Click" ID="btnEdit"  UseSubmitBehavior="false" CommandArgument='<%# Eval("slno") + "," + Eval("uniquekey") %>'/>
</ItemTemplate>
</asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button runat="server" Text="Delete" OnClick="btnDelete_Click1" ID="btnDelete"  UseSubmitBehavior="false" CommandArgument='<%# Eval("slno") + "," + Eval("uniquekey") %>'/>
</ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="firstname" HeaderText="First Name"  />
                <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                <asp:BoundField DataField="mobileno" HeaderText="Mobile No"  />
                <asp:BoundField DataField="email" HeaderText="Email ID" />
                <asp:BoundField DataField="cpassword" HeaderText="Password"  />
                <asp:BoundField DataField="addresss" HeaderText="Address"  />
                <asp:BoundField DataField="gender" HeaderText="Gender"  />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                <asp:BoundField DataField="country" HeaderText="Country" />
                <asp:BoundField DataField="statuss" HeaderText="Status" />
                <asp:BoundField DataField="CreatedBy" HeaderText="Creater Name" />
                <asp:BoundField DataField="CreatedDt" HeaderText="Creation Date" />
                <asp:BoundField DataField="ModifedBy" HeaderText="Modifier Name" />
                <asp:BoundField DataField="ModifiedDt" HeaderText="Modified Date" />
</Columns>
                  <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="tableField" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">FirstName</td>
            <td class="auto-style9">*</td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ControlToValidate="TextBox8" ErrorMessage="Enter valid data" ValidationExpression="^[0-9A-Za-z\s\.,#\-]+$" runat="server" CssClass="valid" ID="RegularExpressionValidator1"></asp:RegularExpressionValidator> &nbsp;
                <asp:RequiredFieldValidator ControlToValidate="TextBox8" ID="RequiredFieldValidator1" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
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
                  <asp:RegularExpressionValidator ControlToValidate="TextBox2" ErrorMessage="Enter valid data" ValidationExpression="^([A-z][A-Za-z]*\s+[A-Za-z]*)|([A-z][A-Za-z]*)$" runat="server" CssClass="valid" ID="RegularExpressionValidator2"></asp:RegularExpressionValidator>&nbsp;
                
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
                 <asp:RegularExpressionValidator ControlToValidate="TextBox3" ErrorMessage="Enter valid Phone Number" ValidationExpression="^([0-9]{10})$" runat="server" CssClass="valid" ID="RegularExpressionValidator3"></asp:RegularExpressionValidator>&nbsp;
                
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
                <asp:RegularExpressionValidator ControlToValidate="TextBox4" ErrorMessage="Enter valid Email ID" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" CssClass="valid" ID="RegularExpressionValidator4"></asp:RegularExpressionValidator>&nbsp;
                
                <asp:RequiredFieldValidator ControlToValidate="TextBox4" ID="RequiredFieldValidator4" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password</td>
            <td class="auto-style9">*</td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox5"  runat="server"></asp:TextBox>
            </td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style10">
              
                 <asp:RegularExpressionValidator ControlToValidate="TextBox5" ErrorMessage="Enter valid Password" ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=!])(?!.*\s).{8,}$" runat="server" CssClass="valid" ID="RegularExpressionValidator5"></asp:RegularExpressionValidator>&nbsp;
                
                <asp:RequiredFieldValidator ControlToValidate="TextBox5" ID="RequiredFieldValidator5" CssClass="valid" runat="server" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
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
                 <asp:RegularExpressionValidator ControlToValidate="TextArea1" ErrorMessage="Enter valid Address" ValidationExpression="^([A-z][A-Za-z]*\s+[A-Za-z]*)|([A-z][A-Za-z]*)$" runat="server" CssClass="valid" ID="RegularExpressionValidator6"></asp:RegularExpressionValidator>&nbsp;
                
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
                 <asp:RegularExpressionValidator ControlToValidate="TextBox7" ErrorMessage="Enter valid pincode" ValidationExpression="^\d{6}$" runat="server" CssClass="valid" ID="RegularExpressionValidator7"></asp:RegularExpressionValidator>&nbsp;
                
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
                <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
                <asp:CheckBox ID="CheckBox1" runat="server"  />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="5">
                <asp:Button ID="LinkButton2"  runat="server"  OnClick="LinkButton2_Click" UseSubmitBehavior="false" BorderWidth="2px" Text="Update" />
                <asp:LinkButton ID="LinkButton3"  runat="server"  OnClick="LinkButton3_Click"  BorderWidth="2px" Text="Cancel" />
            </td>
        </tr>
    </table>
        </div>
        </td>
            </tr>
        </table>
       
        <div>
        </div>
       <asp:Label ID="emailLbl" Text="" runat="server" Visible="false"></asp:Label>
      <div id="Panel1" runat="server" >
          <asp:Label runat="server" >Remark</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Fill the field"></asp:RequiredFieldValidator>
          <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;" Text="Confirm"/>
            <asp:LinkButton ID="Button1" runat="server">Cancel</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
      </div>
        <asp:Button ID="regButton" OnClick="regButton_Click" runat="server" Text="Registration" UseSubmitBehavior="false" /></form>
</body>
</html>
