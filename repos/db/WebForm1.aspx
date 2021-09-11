<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="db.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter your name&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Your salalry is&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show my salary" />
            <br />
            <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Salary" />
<br />
            <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete Employee" />
            <br />
            <br />
            &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
