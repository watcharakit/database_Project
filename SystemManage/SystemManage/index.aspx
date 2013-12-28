<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SystemManage.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 77px;
        }
        #login {
            text-align:center;
        }
        #register {
            text-align:center;
        }
        #login_PN {
            text-align:right;
        }
    </style>
</head>


<body style="height: 97px">
    <form id="form1" runat="server">
        <div style="height: 27px">
            <asp:Panel runat="server" BackColor="#FFFF99" Font-Bold="False" ID="login_PN">
                <asp:Label ID="login" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Outset" Text="Log-In" Width="60px"></asp:Label>
                <asp:Label ID="register" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Outset" Text="Register" Width="60px"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
