<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="HeaderWithProps.ascx.cs" 
    Inherits="ReusableCode.Controls.HeaderWithProps"  
%>

<script runat="server">
    public string heading = "Page Heading";
</script>

<asp:Panel ID="imagePanel" runat="server">
        <img alt="The Night Owl" 
            src="Images/bookshelf.jpg" 
            width="800" height="110"/>
</asp:Panel>

<asp:Panel id="menuPanel" runat="server">
        <a href="Default.aspx">Home</a> |
        <a href="Titles.aspx">Titles</a> |
        <a href="Authors.aspx">Authors</a> |
        <a href="Publishers.aspx">Publishers</a>
</asp:Panel>

<h1><%=heading %></h1>
