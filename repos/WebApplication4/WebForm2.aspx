<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Picture 2</h1>
            <br />
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/wp.jpeg" OnClick="ImageMap1_Click">
                <asp:PolygonHotSpot Coordinates="905,737,832,857,1240,975" HotSpotMode="Navigate" NavigateUrl="~/WebForm1.aspx" PostBackValue="Peacock" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
