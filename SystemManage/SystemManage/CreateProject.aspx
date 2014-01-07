<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="CreateProject.aspx.cs" Inherits="SystemManage.CreateProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 509px; width: 1345px;text-align:center">
    <div>
        <center><asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <asp:Label ID="Label26" runat="server" Font-Size="XX-Large" ForeColor="#0066FF" meta:resourcekey="Label1Resource1" Text="Create Project"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
                <asp:TextBox ID="nameP" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
        </asp:Panel></center>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
