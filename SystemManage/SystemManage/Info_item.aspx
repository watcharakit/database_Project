<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="Info_item.aspx.cs" Inherits="SystemManage.Info_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center; height: 509px; width: 1345px;">
        <center>
            <asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="รายละเอียดชิ้นงาน"></asp:Label>
                <asp:Label ID="labeltext" runat="server" BorderStyle="Outset"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="ปัญหา"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="56px" style="margin-top: 0px" TextMode="MultiLine" Width="151px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="ชื่อผู้รับผิดชอบ"></asp:Label>
            <asp:DropDownList ID="DropDown" runat="server" DataSourceID="LinqDataSource1" DataTextField="ID_User" DataValueField="ID_User">
            </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SystemManage.DatasystemDataContext" EntityTypeName="" GroupBy="ID_User" OrderGroupsBy="key" Select="new (key as ID_User, it as Manages)" TableName="Manages" OrderBy="ID_Project, ID_User">
                </asp:LinqDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" Text="ขั้นตอน"></asp:Label>
            <asp:DropDownList ID="DropDown1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name_Processes" DataValueField="Name_Processes">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SystemManageConnectionString %>" SelectCommand="SELECT [Name_Processes] FROM [Processes]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="save" runat="server" OnClick="save_Click" Text="save" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="add Processes" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete Item" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" />
        </asp:Panel><center>
        <br />
        <br />
    </div>
</asp:Content>
