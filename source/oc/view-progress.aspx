<%@ Page Title="" Language="C#" MasterPageFile="~/oc/oc.Master" AutoEventWireup="true" CodeBehind="view-progress.aspx.cs" Inherits="Crime_Management_System.oc.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View Details</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpheading" runat="server">
    View Details
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
    Hello   
    <asp:Label ID="name" runat="server" Text=""></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpholderbody" runat="server">

    <ul style="font-style:italic">
            <li><a href="caseassignpage.aspx">Assign Case to Officer</a></li>
            <li><a href="viewcaseprogress.aspx">View Case Progress</a></li>
        </ul>

        <h1 style="color:darkcyan;">View Case Progress</h1>

        Running Cases
        <asp:GridView ID="gvRunningCases" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <table>
            
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Case ID</td>
                <td><asp:TextBox ID="tbCaseID" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td><asp:Button ID="btnGetTotalExpense" runat="server" Text="Get Total Expense" OnClick="btnGetTotalExpense_Click" BorderStyle="Groove"/></td>
                <td><asp:TextBox ID="tbTotalExpense" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
    </table>

     <table>
            <tr>
                <td><asp:GridView ID="gvProgress" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView></td>
            </tr>
            <tr>
                <td>From</td>
                <td><asp:TextBox ID="tbFrom" runat="server" TextMode="Date"></asp:TextBox></td>
            </tr>
            <tr>
                <td>To</td>
                <td><asp:TextBox ID="tbTo" runat="server" TextMode="Date"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSybmit" runat="server" Text="Submit" OnClick="btnSybmit_Click" BorderStyle="Groove" />&nbsp;
                </td>
            </tr>
     </table>

    <table>
        <tr>
            <td>Get Officer Details of::</td>
            <td>
                <asp:DropDownList ID="ddlOfficers" runat="server" DataSourceID="SqlDataSource1" DataTextField="OfficerName" DataValueField="OfficerID" OnSelectedIndexChanged="ddlOfficerExpense_SelectedIndexChanged" AutoPostBack="true" BackColor="Aqua"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeManagementCS %>" SelectCommand="SELECT [OfficerID], [OfficerName] FROM [OfficerDetailsTable]"></asp:SqlDataSource>
            </td>
        </tr>

        <tr>
            <td>Total Expense:</td>
            <td><asp:TextBox ID="tbExpenseOfficer" runat="server" Enabled="false"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Total No. of Cases Appointed:</td>
            <td><asp:TextBox ID="tbOfficerCases" runat="server" Enabled="false"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Total No. of Cases Solved:</td>
            <td><asp:TextBox ID="tbOfficerSolved" runat="server" Enabled="false"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Total No. of Cases at Present:</td>
            <td><asp:TextBox ID="tbOfficerCasesNow" runat="server" Enabled="false"></asp:TextBox></td>
        </tr>
           
    </table>

        <table>
            <tr>
            <td>Get Total Expense For:</td>
            <td>
                <asp:DropDownList ID="ddlCrimeTypeExpense" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Type" DataValueField="CaseTypeID" OnSelectedIndexChanged="ddlCrimeTypeExpense_SelectedIndexChanged" BackColor="Aqua"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeManagementCS %>" SelectCommand="SELECT [CaseTypeID], [Type] FROM [CaseTypeTable]"></asp:SqlDataSource>
            </td>
            <td><asp:TextBox ID="tbCrimeTypeExpense" runat="server" Enabled="false"></asp:TextBox></td>
        </tr>
        </table>

</asp:Content>
