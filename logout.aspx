<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        window.history.forward(1);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
       <%-- <asp:Timer ID="Timer1" runat="server" Interval="5" OnTick="Timer1_Tick1">
        </asp:Timer>--%>
        <asp:Timer ID="Timer1" runat="server" Interval="1" OnTick="Timer1_Tick">
        </asp:Timer>
    </div>
    </form>
</body>
</html>
