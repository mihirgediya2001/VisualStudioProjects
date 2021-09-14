<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="exp1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {   
            text-align: center;
                width: 500px;
                background-color: whitesmoke;
                border: double 6px;
                border-radius: 5%;
                box-shadow: 5px 5px #d0d0d0;
            }
    </style>
</head>
<body bgcolor="#e0e0e0">
    <form id="form1" runat="server">
        <div style="text-align: center; margin: auto; align-items: center"
                class="auto-style6">
        <div>
            <h2 class="auto-style1">&nbsp;</h2>
            <h2 class="auto-style1">Your Form has been Submitted Successfully :)</h2>
            <h3 class="auto-style1">Click On Button to view your details.</h3>
        </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Data" BackColor="Black" ForeColor="WhiteSmoke" />
            <br />
            <br />
        </div>
        <br />
            <div id="myDiv" runat="server" style=" width: 500px; height: auto; margin: auto; text-align: left;" />
        
    </form>
    
</body>
</html>
