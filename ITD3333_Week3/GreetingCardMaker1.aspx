<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GreetingCardMaker1.aspx.cs" Inherits="GreetingCardMaker1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Greeting Card Maker</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose a background color: <br />
            <asp:DropDownList ID="lstBackColor" runat="server" AutoPostBack="true" Width="194px" Height="22px" OnSelectedIndexChanged="ControlChanged" /><br /><br />
            Choose a font:<br />
            <asp:DropDownList ID="lstFontName" runat="server" AutoPostBack="true" Width="194px" Height="22px" OnSelectedIndexChanged="ControlChanged" /><br /><br />
            Specify a numeric font size<br />
            <asp:TextBox ID="txtFontSize" runat="server" AutoPostBack="true" OnTextChanged="ControlChanged" /><br /><br />
            Choose a bordersize:<br />
            <asp:RadioButtonList ID="lstBorder" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged" Width="177px" Height="59px" /><br /><br />
            <asp:CheckBox ID="chkPicture" runat="server" AutoPostBack="true" OnCheckedChanged="ControlChanged" Text="Add the Default Picture" ></asp:CheckBox><br /><br />
            Enter the greeting text below:<br />
            <asp:TextBox ID="txtGreeting" runat="server" AutoPostBack="true" Width="240px" Height="85px" OnTextChanged="ControlChanged" TextMode="MultiLine" /><br /><br />
            <asp:Button ID="cmdUpdate" OnClick="cmdUpdate_Click" runat="server" Width="71px" Height="24px" Text="Update" /><br /><br />
        </div>
            <asp:Panel ID="pnlCard" runat="server" Width="339px" Height="481px" HorizontalAlign="Center" style="Position: absolute; top: 16px; left: 313px;">
                <br />&nbsp;
            <asp:Label ID="lblGreeting" runat="server" Width="256px" Height="150px" /><br /><br /><br />
            <asp:Image ID="imgDefault" runat="server" Width="212px" Height="160px" />
            </asp:Panel>
    </form>
</body>
</html>
