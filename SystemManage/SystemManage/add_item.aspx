<%@ Page Title="" Language="C#" MasterPageFile="~/Page_1.Master" AutoEventWireup="true" CodeBehind="add_item.aspx.cs" Inherits="SystemManage.add_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center; height: 509px; width: 1345px;">
        <center><asp:Panel ID="showfeed" runat="server" BackColor="#99CCFF" ForeColor="White" Height="470px" style="margin-left: 0px; margin-top: 0px" Width="50%">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#0066FF" meta:resourcekey="Label1Resource1" Text="Add Item"></asp:Label>
                <br />
                <br />
                Name Item&nbsp;
            <asp:TextBox ID="nameitem" runat="server"></asp:TextBox>
                <br />
                <br />
                Date Line
            <asp:DropDownList ID="DropDay" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem Value="30"></asp:ListItem>
                <asp:ListItem Value="31"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropMonth" runat="server">
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropYear" runat="server">
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2027</asp:ListItem>
                <asp:ListItem>2028</asp:ListItem>
                <asp:ListItem>2029</asp:ListItem>
                <asp:ListItem>2030</asp:ListItem>
                <asp:ListItem>2031</asp:ListItem>
                <asp:ListItem>2032</asp:ListItem>
                <asp:ListItem>2033</asp:ListItem>
                <asp:ListItem>2034</asp:ListItem>
                <asp:ListItem>2035</asp:ListItem>
                <asp:ListItem>2036</asp:ListItem>
                <asp:ListItem>2037</asp:ListItem>
                <asp:ListItem>2038</asp:ListItem>
                <asp:ListItem>2039</asp:ListItem>
                <asp:ListItem>2040</asp:ListItem>
                <asp:ListItem>2041</asp:ListItem>
                <asp:ListItem>2042</asp:ListItem>
                <asp:ListItem>2043</asp:ListItem>
                <asp:ListItem>2044</asp:ListItem>
                <asp:ListItem>2045</asp:ListItem>
                <asp:ListItem>2046</asp:ListItem>
                <asp:ListItem>2047</asp:ListItem>
                <asp:ListItem>2048</asp:ListItem>
                <asp:ListItem>2049</asp:ListItem>
                <asp:ListItem>2050</asp:ListItem>
                <asp:ListItem>2051</asp:ListItem>
                <asp:ListItem>2052</asp:ListItem>
                <asp:ListItem>2053</asp:ListItem>
                <asp:ListItem>2054</asp:ListItem>
                <asp:ListItem>2055</asp:ListItem>
                <asp:ListItem>2056</asp:ListItem>
                <asp:ListItem>2057</asp:ListItem>
                <asp:ListItem>2058</asp:ListItem>
                <asp:ListItem>2059</asp:ListItem>
                <asp:ListItem>2060</asp:ListItem>
            </asp:DropDownList>
&nbsp;<br />
                <br />
                Comment
            <asp:TextBox ID="comment_T" runat="server" Height="123px" Width="201px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="create" runat="server" BackColor="#3366FF" BorderColor="#3399FF" ForeColor="White" OnClick="create_Click" style="height: 26px" Text="Create" />
            &nbsp;
            <asp:Button ID="cancel" runat="server" BackColor="#3366FF" BorderColor="#3399FF" ForeColor="White" OnClick="cancel_Click" Text="Cancel" />
        </asp:Panel></center>
    </div>
</asp:Content>
