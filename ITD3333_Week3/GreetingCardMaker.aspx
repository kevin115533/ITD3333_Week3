<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GreetingCardMaker.aspx.vb" Inherits="GreetingCardMaker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Greeting Card Maker</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose a background color: <br />
            <asp:DropDownList ID="lstBackColor" runat="server" Width="194px" Height="22px" /><br /><br />
        </div>
    </form>
</body>
</html>
