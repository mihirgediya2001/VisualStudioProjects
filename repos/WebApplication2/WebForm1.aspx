<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Value 1"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter value 1"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Value 2"></asp:Label>

        <br />

        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Result"></asp:Label>
        <br />
        <asp:TextBox ID="Result" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="SUB" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="MUL" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="DIV" OnClick="Button4_Click" />

    </form>
</body>
</html>
