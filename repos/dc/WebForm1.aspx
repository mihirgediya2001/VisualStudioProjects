<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dc.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
            <h2>Welcome To MY USer Profile Experiment</h2><br />
            <br />
            First Name :
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            <br />
            Last Name : <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            <br />
            <br />
            Age :
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            Password : <asp:TextBox ID="TextBox6" runat="server" Width="251px"></asp:TextBox>
            <br />
            Confirm Password :
            <asp:TextBox ID="TextBox5" runat="server" Width="251px"></asp:TextBox>
            <br />
            <br />
            Gmail :
            <asp:TextBox ID="TextBox3" runat="server" Width="250px" ></asp:TextBox>
                <br />
                <br />
                Mobile No : <asp:TextBox ID="TextBox4" runat="server" Width="248px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Onclick" Width="100px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear ALL" Width="406px" />
            <br />
            <br /><hr />
            
            <div >
            
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
           
            </div>
           
     </div>

    </form>
</body>
</html>
