<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SystemManage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<center>
<body style="background-color:#99CCFF">
   <form id="form1" runat="server">
    <div>

 
    
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Register" ForeColor="#0066FF" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" Text="Username" ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="username" runat="server" Width="149px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Password   "></asp:Label>
            &nbsp;&nbsp; &nbsp;<asp:TextBox ID="pass1" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Re-Password   "></asp:Label>
            <asp:TextBox ID="pass2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Firstname "></asp:Label>
            &nbsp;&nbsp; &nbsp;<asp:TextBox ID="firstname" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Lastname " ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Position              "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="position" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Sex             " ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="sex_drop" runat="server" Height="18px" Width="95px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Birthday(D-M-Y)" ForeColor="White"></asp:Label>
            <asp:TextBox ID="day" runat="server" Width="25px"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" ForeColor="White" Text="-"></asp:Label>
            <asp:TextBox ID="month" runat="server" Width="25px"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" ForeColor="White" Text="-"></asp:Label>
            <asp:TextBox ID="year" runat="server" Width="40px"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Address          "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="addess" runat="server" Height="65px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" ForeColor="White" Text="E-mail         "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="email" runat="server" Width="149px"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" BackColor="#3366FF" BorderColor="#3399FF" ForeColor="White" Text="Register" OnClick="Button2_Click" />
            <br />
            <br />
        </asp:Panel>
 
    
    </div>
    </form>
</body>
</center>
</html>
