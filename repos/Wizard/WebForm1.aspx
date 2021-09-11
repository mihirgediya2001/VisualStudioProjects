<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Wizard.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="393px" OnNextButtonClick="Wizard1_NextButtonClick" Width="606px">
                <WizardSteps>
                    <asp:WizardStep runat="server" StepType="Start" title="company">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Sam sung</asp:ListItem>
                            <asp:ListItem>Op</asp:ListItem>
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>heena</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Step" title="modal">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>m31</asp:ListItem>
                            <asp:ListItem>m51</asp:ListItem>
                            <asp:ListItem>s21</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Step" Title="address">
                        <asp:TextBox ID="TextBox1" runat="server" Height="58px" TextMode="MultiLine"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Step" Title="Credit card">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Finish" Title="Summary">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        &nbsp;<br />
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Final">
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
