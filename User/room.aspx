<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="room.aspx.cs" Inherits="User_room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="roomno" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#FFFFCC">
    <Columns>
        <asp:BoundField DataField="roomno" HeaderText="Roomno" ReadOnly="True" SortExpression="roomno" />
        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
        <asp:BoundField DataField="bed" HeaderText="Bed" SortExpression="bed" />
        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
<%--        <asp:BoundField DataField="imagepath" HeaderText="Image" SortExpression="imagepath" />--%>
        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("imagepath") %>' Width="200px" />
            </ItemTemplate>
        </asp:TemplateField>
                <asp:ButtonField CommandName="SELECT" HeaderText="SELECT" Text="SELECT" />

    </Columns>
</asp:GridView>
        </form>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT * FROM [room]"></asp:SqlDataSource>

</asp:Content>

