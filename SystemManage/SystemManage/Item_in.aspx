<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="Item_in.aspx.cs" Inherits="SystemManage.Item_in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
        <center><asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#0066FF" meta:resourcekey="Label1Resource1" Text="Your Item"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="ค้นหา" />
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="แสดงทั้งหมด" />
                <br />
                <br />
                <asp:GridView ID="Gridshow" runat="server" autogeneratecolumns="True" autogenerateselectbutton="True" OnSelectedIndexChanged="selectchange" OnSelectedIndexChanging="selectchangeing" selectedindex="1">
            </asp:GridView>
            <br />
            <asp:Button ID="new0" runat="server" OnClick="new_Click" Text="New Item" />
            <asp:Button ID="adduser0" runat="server" OnClick="adduser_Click" Text="Add User" />
            <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Delete Project" />
            <asp:Button ID="Button4" runat="server" OnClick="Button2_Click" Text="Remove User" />
        </asp:Panel><center>
        <br />
    </div>
</asp:Content>
