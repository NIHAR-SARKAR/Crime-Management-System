<%@ Page Title="" Language="C#" MasterPageFile="~/outer.Master" AutoEventWireup="true" CodeBehind="case-status.aspx.cs" Inherits="Crime_Management_System.io.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Case Status</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpheading" runat="server">
    Case Status
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpadmin" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpholderbody" runat="server">
    
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label></td>
            <td>
                <asp:TextBox ID="tbUserId" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbUserId" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
               </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Case Id"></asp:Label></td>
            <td>
                <asp:TextBox ID="tbCaseId" runat="server"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbCaseId" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label></td>
            <td>
                <asp:TextBox ID="tbPhn" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbPhn" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnfind" runat="server" Text="Button" OnClick="btnfind_Click" /></td>
        </tr>
    </table>
    
    <asp:GridView ID="Gvstatus" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>


    <center><asp:Label ID="lblstatus" runat="server" Text="" style="color:#ce2020; font-weight:bold;"></asp:Label></center>
</asp:Content>
