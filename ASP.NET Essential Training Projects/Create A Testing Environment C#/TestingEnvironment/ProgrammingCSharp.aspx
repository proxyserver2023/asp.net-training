<%@ Page Language="C#" 
         AutoEventWireup="true" 
         CodeBehind="ProgrammingCSharp.aspx.cs" 
         Inherits="TestingEnvironment.ProgrammingCSharp" 
 %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>ASP.NET With C#</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
             <asp:TextBox ID="outputText" runat="server" Width="400px" Height="175px" TextMode="Multiline"/>
        </asp:Panel>
        
         <asp:Panel ID="Panel2" runat="server">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Run" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
        </asp:Panel>
    </div>
        
    </form>
</body>
</html>
