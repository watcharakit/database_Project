<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="add_user.aspx.cs" Inherits="SystemManage.add_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 509px; width: 1345px;text-align:center">
    <center><asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <asp:Label ID="Label24" runat="server" Font-Size="XX-Large" ForeColor="#0066FF" meta:resourcekey="Label1Resource1" Text="Add User"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="Dropuser" runat="server" DataSourceID="LinqDataSource1" DataTextField="ID_User" DataValueField="ID_User">
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Text="ตำแหน่ง"></asp:Label>
                <asp:TextBox ID="prosition_text" runat="server"></asp:TextBox>
                <br />
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SystemManage.DatasystemDataContext" EntityTypeName="" Select="new (key as ID_User, it as User_names)" TableName="User_names" GroupBy="ID_User">
                </asp:LinqDataSource>
                <br />
                <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
        </asp:Panel></center>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
