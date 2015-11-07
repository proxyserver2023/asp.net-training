<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="Authors.aspx.cs" 
    Inherits="ReusableCode.Authors" 
%>

<%@ Register 
    src ="~/Controls/Header.ascx"
    TagName ="Header"
    TagPrefix ="uc1"
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Header runat="server"/>
        <h1><span lang="en-us">Author List</span></h1>
        <p><span lang="en-us">This page will show a list of Authors.</span></p>
    </div>
    </form>
</body>
</html>
