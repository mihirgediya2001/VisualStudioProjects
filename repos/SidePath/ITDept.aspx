﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ITDept.aspx.cs" Inherits="SidePath.ITDept" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:SiteMapPath ID="SiteMapPath1" runat="server">
            </asp:SiteMapPath>
            <br />
            <br />
            IT dept<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ITcourse.aspx">Course</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ITass.aspx">Assignment</asp:HyperLink>
        </p>
        <div>
        </div>
    </form>
</body>
</html>
