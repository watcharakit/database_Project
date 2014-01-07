<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SystemManage.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div style="height: 509px; width: 1345px;text-align:center">
    <asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 336px; margin-top: 0px; margin-right: 0px;" Width="50%">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Show your list of project" ForeColor="#0066FF" Font-Size="XX-Large" meta:resourcekey="Label1Resource1"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="แสดงโปรเจคที่เป็นคนสร้าง" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="แสดงโปรเจคที่มีคนชวน" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="แสดงโปรเจคทั้งหมดที่เกี่ยวข้อง" />
        <br />
        <br />
        <center><asp:GridView ID="Gridshow1" 
       autogeneratecolumns="False"
       autogenerateselectbutton="True"
       selectedindex="1"
       runat="server" DataKeyNames="ID_Project" 
       OnSelectedIndexChanged="SelectedIndexChanged" 
       OnSelectedIndexChanging="SelectedIndexChanging">
            <Columns>
                <asp:BoundField DataField="ID_Project"
                    HeaderText="ID Project"
                    InsertVisible="false" ReadOnly="true"
                    SortExpression="ID_Project" />
                <asp:BoundField DataField="Status"
                    HeaderText="Status"
                    InsertVisible="false" ReadOnly="true"
                    SortExpression="Status" />
            </Columns>
             

        </asp:GridView></center>

        <br />
        <br />
        If you want to create new project click&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="#3399FF" ForeColor="White" Text="Create New Project" OnClick="Button1_Click1" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
</div>
</asp:Content>

