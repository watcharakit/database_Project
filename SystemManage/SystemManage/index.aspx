<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SystemManage.index" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#99CCFF">
    
    <form id="form1" runat="server">
    <div style="background-color: #99CCFF">
    
        <div style="width:39%; float:right;text-align:center;padding-top:5%;">

            <asp:Panel ID="Panel2" runat="server" BackColor="#99CCFF" BorderColor="#99CCFF" meta:resourcekey="Panel2Resource1">
                <asp:Label ID="Label1" runat="server" Text="Join your work" ForeColor="#0066FF" Font-Size="XX-Large" meta:resourcekey="Label1Resource1"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Username : " ForeColor="White" meta:resourcekey="Label2Resource1"></asp:Label>
                &nbsp;<asp:TextBox ID="textid" runat="server" Width="209px" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Password : " ForeColor="White" meta:resourcekey="Label3Resource1"></asp:Label>
                &nbsp;<asp:TextBox ID="textpass" runat="server" TextMode="Password" Width="207px" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="register_B" runat="server" Text="Register" BackColor="#3366FF" BorderColor="#3399FF" BorderStyle="Ridge" ForeColor="White" meta:resourcekey="Button1Resource1" OnClick="register_B_Click" />
                
                <asp:Button ID="Button1" runat="server" Text="Log-In" BorderColor="#3399FF" BorderStyle="Ridge" ForeColor="White" BackColor="#3366FF" OnClick="Button1_Click1" style="height: 26px" />
                
            </asp:Panel>

        </div>
        
        
    
        <div style="width:60%;text-align:right;padding-top:5%;padding-bottom:initial">

            <asp:Panel ID="Panel1" runat="server" BackColor="#99CCFF" meta:resourcekey="Panel1Resource1">
                <asp:Image ID="Image1" runat="server" ImageUrl="img\sm.jpg" padding-bottom="50px" meta:resourcekey="Image1Resource1"/>
            </asp:Panel>

        </div>
        
        
    
    </div>
    </form>
</body>
</html>
