<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Select Number of Rows:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="20px" Width="144px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <br />
            </h3>
            <h3>Select Number of Columns:<br />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="20px" Width="145px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <br />
            </h3>
            <h3>Select Grid Type:<br />
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="20px" Width="145px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>none</asp:ListItem>
                <asp:ListItem>horizontal</asp:ListItem>
                <asp:ListItem>vertical</asp:ListItem>
                <asp:ListItem>both</asp:ListItem>
            </asp:DropDownList>
            </h3>
            <h3>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Table" BackColor="Black" BorderColor="White" ForeColor="White" Height="30px" Width="145px" />
            <br />
            </h3>
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
            <br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            <br />
        </div>
    </form>
    <p>
&nbsp;&nbsp;
    </p>
</body>
</html>
