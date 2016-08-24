<%@ Page Title="" Language="C#" MasterPageFile="~/headq/headQ.Master" AutoEventWireup="true" CodeBehind="admin-home.aspx.cs" Inherits="Crime_Management_System.headq.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpheading" runat="server">
    Admin Home Page
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
<h4>Hello <asp:Label ID="validuser" runat="server" Text="Label"></asp:Label></h4>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="cpholderbody" runat="server">

    <center><h1>Welcome Back Admin</h1></center>

</asp:Content>
