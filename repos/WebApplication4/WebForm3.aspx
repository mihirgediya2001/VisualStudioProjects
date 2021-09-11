<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Image Button Demo</h2>
            <h3>Click on the image to get coordinates:</h3>
          
                <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/wp2.jpeg" OnClick="ImageButton1_Click" Height="289px" Width="410px" />
           
            
                <br />
            <br />
           
            
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            
        </div>
    </form>
</body>
</html>
