<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="User_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFCC" DataSourceID="SqlDataSource1" Width="268px">
        <ItemTemplate>
            Roomno:
            <asp:Label ID="roomnoLabel" runat="server" Text='<%# Eval("roomno") %>' />
            <br />
            Username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
            Status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT * FROM [viewroom] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>

