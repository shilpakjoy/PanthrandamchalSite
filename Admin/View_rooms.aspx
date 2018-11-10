<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin1.master" AutoEventWireup="true" CodeFile="View_rooms.aspx.cs" Inherits="Admin_View_rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="#FFFFCC" DataKeyNames="roomno">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="roomno" HeaderText="Roomno" ReadOnly="True" SortExpression="roomno" />
                <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                <asp:BoundField DataField="bed" HeaderText="Bed" SortExpression="bed" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="imagepath" HeaderText="Image" SortExpression="imagepath" />
                <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
            </EmptyDataTemplate>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" DeleteCommand="DELETE FROM [room] WHERE [roomno] = @roomno" InsertCommand="INSERT INTO [room] ([roomno], [type], [bed], [description], [imagepath], [rate]) VALUES (@roomno, @type, @bed, @description, @imagepath, @rate)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [type] = @type, [bed] = @bed, [description] = @description, [imagepath] = @imagepath, [rate] = @rate WHERE [roomno] = @roomno">
    <DeleteParameters>
        <asp:Parameter Name="roomno" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="roomno" Type="Int32" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="bed" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="imagepath" Type="String" />
        <asp:Parameter Name="rate" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="bed" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="imagepath" Type="String" />
        <asp:Parameter Name="rate" Type="Int32" />
        <asp:Parameter Name="roomno" Type="Int32" />
    </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

