<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Treeview.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" Height="454px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Width="218px">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="id" NavigateUrl="~/WebForm2.aspx" TextField="#InnerText" />
                    <asp:TreeNodeBinding DataMember="name" TextField="#InnerText" />
                    <asp:TreeNodeBinding DataMember="price" TextField="#InnerText" />
                </DataBindings>
            </asp:TreeView>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>
        </div>
    </form>
</body>
</html>
