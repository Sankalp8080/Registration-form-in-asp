<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Please Login First to access the content !!!!
            </h1>
        </div>
        <asp:LinkButton runat="server" ID="btnTransfer" OnClick="btnTransfer_Click">Login Page</asp:LinkButton>
    </form>
</body>
</html>
