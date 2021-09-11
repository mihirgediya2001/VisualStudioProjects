<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs"
Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style type="text/css">
            #form1 {
                background-color: #ccffff;
            }
            .auto-style1 {
                color: #000066;
            }
        </style>
    </head>
    <body style="text-align: center">
        <div>
            <form
                id="form1"
                runat="server"
                style="
                    border: solid 2px black;
                    width: auto;
                    margin: 0px;
                    max-width: 20%;
                    padding: 10px;
                    text-align: left;
                "
            >
                <div>
                    <h2>
                        <span class="auto-style1">A Simple Calculator</span
                        ><br />
                        <br />

                        <asp:Label
                            ID="Label1"
                            runat="server"
                            Text="Value 1:    "
                            ForeColor="#000066"
                        ></asp:Label>

                        &nbsp;&nbsp;&nbsp;<br />
                        <asp:TextBox
                            ID="TextBox1"
                            runat="server"
                            BackColor="#66CCFF"
                            BorderColor="#000099"
                            ForeColor="#000066"
                        ></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label
                            ID="Label2"
                            runat="server"
                            Text="Value 2:    "
                            ForeColor="#000066"
                        ></asp:Label>

                        &nbsp;&nbsp;&nbsp;

                        <br />

                        <asp:TextBox
                            ID="TextBox2"
                            runat="server"
                            BackColor="#66CCFF"
                            BorderColor="#000099"
                            ForeColor="#000066"
                        ></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label
                            ID="Label3"
                            runat="server"
                            Text="Result: "
                            ForeColor="#000066"
                        ></asp:Label>

                        &nbsp;
                        <br />
                        <asp:TextBox
                            ID="Result"
                            runat="server"
                            ReadOnly="True"
                            BackColor="#66CCFF"
                            BorderColor="#000099"
                            ForeColor="#000066"
                        ></asp:TextBox>
                        <br />
                        <br />
                    </h2>
                </div>
                <asp:Button
                    ID="Button1"
                    runat="server"
                    CommandArgument="add"
                    CommandName="math"
                    OnCommand="Calc"
                    Text="ADD"
                    BackColor="#66CCFF"
                    BorderColor="#000099"
                    ForeColor="#000066"
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button
                    ID="Button2"
                    runat="server"
                    CommandArgument="sub"
                    CommandName="math"
                    OnCommand="Calc"
                    Text="SUB"
                    BackColor="#66CCFF"
                    BorderColor="#000099"
                    ForeColor="#000066"
                />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button
                    ID="Button3"
                    runat="server"
                    CommandArgument="mul"
                    CommandName="math"
                    OnCommand="Calc"
                    Text="MUL"
                    BackColor="#66CCFF"
                    BorderColor="#000099"
                    ForeColor="#000066"
                />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button
                    ID="Button4"
                    runat="server"
                    CommandArgument="div"
                    CommandName="math"
                    OnCommand="Calc"
                    Text="DIV"
                    BackColor="#66CCFF"
                    BorderColor="#000099"
                    ForeColor="#000066"
                />

                <br />
                <br />
            </form>
        </div>
    </body>
</html>
