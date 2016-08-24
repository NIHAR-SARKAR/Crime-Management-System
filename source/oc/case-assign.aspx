<%@ Page Title="" Language="C#" MasterPageFile="~/oc/oc.Master" AutoEventWireup="true" CodeBehind="case-assign.aspx.cs" Inherits="Crime_Management_System.oc.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Case Assign</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpheading" runat="server">
    Case Assign
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
    Hello   
    <asp:Label ID="name" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpholderbody" runat="server">

    

        <center>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </center>
             
    <table class="table1">

        <tr>
                <td>Choose Case:</td>
                <td><asp:TextBox ID="tbCaseID" runat="server" AutoPostBack="true" Height="20px" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Assign Officer</td>
                <td><asp:DropDownList ID="ddlAssignOfficer" runat="server" DataSourceID="SqlDataSource1" DataTextField="OfficerName" DataValueField="OfficerID" Height="25px" Width="152px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCON %>" SelectCommand="SELECT [OfficerID], [OfficerName] FROM [OfficerDetailsTable]"></asp:SqlDataSource>
                    <asp:Button ID="btnAssignOfficer" runat="server" Text="Assign Officer" OnClick="btnAssignOfficer_Click"  />
                </td>
            </tr>
    </table>
        
        <br />
    

</asp:Content>
