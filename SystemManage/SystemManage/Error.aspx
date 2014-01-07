<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="SystemManage.Erroe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="background-color:#99CCFF">
    <form id="form1" runat="server">
    <div style="text-align:center">
    
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#FF3300" Text="Error !"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Username or password is not correct. Please try again." Font-Size="Large" ForeColor="White"></asp:Label>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>