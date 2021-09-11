<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication4.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Image Demo </h2>
            <h3>Northen Lights Image</h3>
            <br />
            <asp:Image ID="Image1" runat="server" Height="495px" ImageUrl="~/lightscape.jpg" Width="730px" />
            <br />
        </div>
    </form>
</body>
</html>
