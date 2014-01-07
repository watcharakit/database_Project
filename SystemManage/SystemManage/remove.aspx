<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="remove.aspx.cs" Inherits="SystemManage.remove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 509px; width: 1345px;text-align:center">
    <div>
        <center><asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <asp:Label ID="Label212" runat="server" Font-Size="XX-Large" ForeColor="#0066FF" meta:resourcekey="Label1Resource1" Text="Add Item"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="ID_User" DataValueField="ID_User">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SystemManage.DatasystemDataContext" EntityTypeName="" GroupBy="ID_User" Select="new (key as ID_User, it as Manages)" TableName="Manages">
                </asp:LinqDataSource>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove" />
        </asp:Panel><</center>
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    </div>
</asp:Content>
