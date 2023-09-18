<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridTest.aspx.cs" Inherits="RegForm.GridTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email"  DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="cpassword" HeaderText="cpassword" SortExpression="cpassword" />
                <asp:BoundField DataField="addresss" HeaderText="addresss" SortExpression="addresss" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="statuss" HeaderText="statuss" SortExpression="statuss" />
                <asp:BoundField DataField="remark" HeaderText="remark" SortExpression="remark" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegNewConnectionString %>" ProviderName="<%$ ConnectionStrings:RegNewConnectionString.ProviderName %>" SelectCommand="SELECT [firstname], [lastname], [mobileno], [email], [cpassword], [addresss], [gender], [pincode], [country], [statuss], [remark] FROM [RegTable] ORDER BY [firstname]"></asp:SqlDataSource>
    </form>
</body>
</html>
