<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Picture 1</h1>
            <asp:ImageMap ID="ImageMap1" runat="server"  ImageUrl="~/wp.jpeg" OnClick="ImageMap1_Click" >
                <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="Moon" Radius="160" X="521" Y="385" Target="_blank" />
                <asp:RectangleHotSpot Bottom="736" HotSpotMode="Navigate" Left="144" Right="261" Top="652" Target="_blank" NavigateUrl="~/WebForm2.aspx" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
