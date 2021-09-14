<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat2.aspx.cs" Inherits="chat.chat2" %>
<meta http-equiv="refresh" content="20" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div style="border:6px double black; width: 300px;text-align:center; margin-left:20%">
            <h4>User 2</h4>
            <asp:TextBox ID="TextBox1" runat="server" Height="123px" ReadOnly="True" TextMode="MultiLine" Width="197px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" ToolTip="Place Your messege here." Height="20px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="&gt;" BackColor="Black" ForeColor="White" Height="28px" OnClick="Button1_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
