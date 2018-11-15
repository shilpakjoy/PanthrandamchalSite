<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="User_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="roomno" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
                bed:
                <asp:Label ID="bedLabel" runat="server" Text='<%# Eval("bed") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                rate:
                <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                <br />
                roomno:
                <asp:Label ID="roomnoLabel" runat="server" Text='<%# Eval("roomno") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("imagepath") %>' Width="150px" />
<br />
            </ItemTemplate>
        </asp:DataList>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT [type], [bed], [description], [imagepath], [rate], [roomno] FROM [room] WHERE ([roomno] = @roomno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="roomno" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <strong><span class="auto-style1">Expected Date</span></strong><asp:TextBox ID="TextBox1" runat="server" TextMode="Date" required="required"></asp:TextBox>
        <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox1">
        </cc1:CalendarExtender>
        <asp:Button ID="Button1" runat="server" Text="BOOK NOW" OnClick="Button1_Click" />
    </form>

</asp:Content>

