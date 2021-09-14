<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Wizard.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            border: 6px double black;
            border-radius: 5%;
            width: 30%;
            margin: auto;
            background-color: whitesmoke;
        }
        .auto-style2 {
            text-decoration: underline;
            margin-top: 25px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <div class="auto-style1">
                        <h3><span class="auto-style2"><strong>Your Details: </strong></span></h3>
                        First Name: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Last Name:
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Age:
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        City:
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Degree:
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Graduation Year:
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        College:
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Experience:
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Job Role:
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Another Response" Width="240px" />
                        <br />
                        <br />
                    </div>
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="393px" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" Width="390px">
                        <StartNavigationTemplate>
                            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                        </StartNavigationTemplate>
                        <StepNavigationTemplate>
                            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                        </StepNavigationTemplate>
                        <WizardSteps>
                            <asp:WizardStep runat="server" StepType="Start" title="Personal Information">
                                <div class="auto-style3">
                                    <h4 class="auto-style3">First Name:</h4>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="16px"></asp:TextBox>
                                    <br />
                                    <h4>Last Name:</h4>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <br />
                                    <h4>Age: </h4>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <br />
                                    <h4>City: </h4>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                </div>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Step" title="Academic Information">
                                
                                <div class="auto-style3">
                                    <h4>Degree:</h4>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <br />
                                    <h4>Graduation year:</h4>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    <br />
                                    <h4>College:</h4>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </div>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Finish" Title="Job Profile">
                                <div class="auto-style3">
                                    <h4>Experience:</h4>
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    <br />
                                    <h4>Job Role:</h4>
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                </div>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
