<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"
    Inherits="exp1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 600px;
        }

        .auto-style5 {
            text-align: right;
            width: 184px;
            height: 48px;
        }

        .auto-style6 {
            width: 650px;
            background-color: whitesmoke;
            border: double 6px;
            border-radius: 5%;
            box-shadow: 5px 5px #d0d0d0;
        }

        .auto-style8 {
            text-align: center;
            width: 335px;
            height: 48px;
        }

        .auto-style9 {
            text-align: center;
            width: 351px;
        }

        .auto-style10 {
            width: 335px;
            height: 48px;
            margin-left: 40px;
            text-align: center;
        }

        .auto-style12 {
            text-align: center;
        }

    </style>
</head>
<body bgcolor="#e0e0e0">
    <form id="form1" runat="server">
        <div
            style="text-align: center; margin: auto; align-items: center"
            class="auto-style6">
            <h2>User Profile</h2>

            <table class="auto-style4" style="margin: auto">
                <tr>
                    <td class="auto-style5">First Name:</td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="Fname"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Middle Name:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="MName"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Last Name:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="LName"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Email Address:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="Email"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Contact Number:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="Contact"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Gender:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="Gender" runat="server" Height="22px" Width="165px">
                            <asp:ListItem Value="Select">Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">City:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="City"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Pin Code:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox
                            ID="PinCode"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Country:<br />
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="Country" runat="server" Height="22px" Width="165px">
                            <asp:ListItem Value="Select ">Select Country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Marital Status:</td>
                    <td class="auto-style10">
                        <div class="auto-style9">
                            &nbsp;<br />
&nbsp;<br />
&nbsp;&nbsp;
                            <asp:RadioButton ID="Married" runat="server" Text="Married" />
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;
                            <asp:RadioButton ID="Unmarried" runat="server" Text="Unmarried" />
                            &nbsp;
                            <br />
                            <br />
                            <asp:RadioButton ID="Divorced" runat="server" Text="divorced" />
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;<asp:RadioButton ID="Widow" runat="server" Text="Widow" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Hobbies:</td>
                    <td class="auto-style8">&nbsp;<asp:Panel ID="Panel1" runat="server">
                        <br />
                        &nbsp;
                        <asp:CheckBox ID="Reading" runat="server" Text="Reading" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="Writing" runat="server" Text="Writing" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="Playing" runat="server" Text="Playing" />
                        <br />
                        <br />
                        <asp:CheckBox ID="Singing" runat="server" Text="Singing" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="Dancing" runat="server" Text="Dancing" />
                        &nbsp;
                        <asp:CheckBox ID="Other" runat="server" Text="Other" />
                        <br />
                        <br />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Date of Birth:</td>
                    <td class="auto-style8">
                        <br />
                        <asp:Calendar style="margin:auto;" ID="Calendar1" runat="server" BackColor="WhiteSmoke" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="156px" NextPrevFormat="FullMonth" Width="252px" SelectedDate="07/26/2021 21:26:31">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="WhiteSmoke" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="WhiteSmoke" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                            <TodayDayStyle BackColor="#CCCC99" />
                        </asp:Calendar>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">

                        <br />

                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" BackColor="Black" ForeColor="WhiteSmoke" Width="104px" Style="border-radius: 5%" />
                        <br />

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
