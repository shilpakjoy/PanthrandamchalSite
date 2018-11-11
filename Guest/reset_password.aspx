<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reset_password.aspx.cs" Inherits="Guest_reset_pwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1" style="border-style: solid">
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style11"><h1>RESET PASSWORD</h1><asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        <tr><td><asp:Label ID="Label1" runat="server" Text="Enter new password"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server" TextMode="Password" required="required"></asp:TextBox></td></tr>
         <tr><td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Retype password"></asp:Label></td>
             <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required="required"></asp:TextBox></td></tr>
        <tr><td></td><td><asp:Button ID="Button1" runat="server" Text="RESET" OnClick="Button1_Click" /></td></tr>
            </table>
    </div>
    </form>
</body>
</html>
