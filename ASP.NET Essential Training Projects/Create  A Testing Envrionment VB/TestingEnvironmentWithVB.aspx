<%@ Page 
    Language="vb" 
    AutoEventWireup="false" 
    CodeBehind="TestingEnvironmentWithVB.aspx.vb" 
    Inherits="Testing_EnvironmentVB.TestingEnvironmentWithVB" 
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ASP.NET WEB FORM With VB<asp:Panel ID="Panel1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" Width="253px" TextMode ="Multiline"></asp:TextBox>
            <asp:Panel ID="Panel2" runat="server">
                <asp:Button ID="Button1" runat="server" Text="Run" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" />
            </asp:Panel>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
