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
            Choose a font:<br />
            <asp:DropDownList ID="lstFontName" runat="server" Width="194px" Height="22px" /><br /><br />
            Specify a numeric font size<br />
            <asp:TextBox ID="txtFontSize" /><br /><br />
            Choose a bordersize:<br />
            <asp:RadioButtonList ID="lstBorder" runat="server" Width="177px" Height="59px" /><br /><br />
            <asp:CheckBox ID="chkPicture" runat="server" Text="Add the Default Picture" ></asp:CheckBox><br /><br />
        </div>
    </form>
</body>
</html>
