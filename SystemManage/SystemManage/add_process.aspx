<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="add_process.aspx.cs" Inherits="SystemManage.add_process" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div style="height: 509px; width: 1345px;text-align:center">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center><asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <asp:Label ID="Label33" runat="server" Font-Size="XX-Large" ForeColor="#0066FF" meta:resourcekey="Label1Resource1" Text="Add Process"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="add" />
        </asp:Panel></center>
        <br />
    </div>
</asp:Content>
