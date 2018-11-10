<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin1.master" AutoEventWireup="true" CodeFile="View_details.aspx.cs" Inherits="Admin_View_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px" BackColor="#FFFFCC">
            <Fields>
                <asp:BoundField DataField="roomno" HeaderText="roomno" SortExpression="roomno" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT * FROM [viewroom] WHERE ([roomno] = @roomno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="roomno" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="roomno" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="roomno" HeaderText="roomno" ReadOnly="True" SortExpression="roomno" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="bed" HeaderText="bed" SortExpression="bed" />
                <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT [roomno], [type], [bed], [rate] FROM [room] WHERE ([roomno] = @roomno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="roomno" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT [email], [address], [phone] FROM [register] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:QueryStringParameter Name="username" QueryStringField="id1" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Approve" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reject" />
    </form>
</asp:Content>

