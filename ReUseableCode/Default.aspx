<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" 
    Inherits="ReusableCode.Default" 
%>

<%@ Register 
    src="Controls/Header.ascx" 
    tagname="Header" 
    tagprefix="uc1" 
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Header ID="Header1" runat="server" />
        <h1><span lang="en-us">Home Page</span></h1>
        <asp:Panel runat="server">
            Welcome to The Night Owl, where all of 
            your technical needs are met!
        </asp:Panel>
    </div>
    </form>
</body>
</html>
