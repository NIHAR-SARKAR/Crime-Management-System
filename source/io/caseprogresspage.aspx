<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="caseprogresspage.aspx.cs" Inherits="Crime_Management_Project.IO.caseprogresspage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2 style="color:deeppink">Daily Progress page</h2>
    
        <table>
          <tr>
            <td><asp:GridView ID="gvOfficerAssignedCases" runat="server"></asp:GridView></td>
          </tr>
        </table>
        
      <table>  
        <tr>
            <td>Case ID</td>
            <td> <asp:TextBox ID="tbCaseID" runat="server"></asp:TextBox> </td> 
        </tr>
        
        <tr>
            <td>Date</td>
            <td><asp:TextBox ID="tbDate" runat="server" TextMode="Date"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Expenditure (Rs.)</td>
            <td><asp:TextBox ID="tbExpenditure" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Progress</td>
            <td><asp:TextBox ID="tbProgress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:CheckBox ID="cbCaseCompleted" runat="server" Text="Close Case" /></td>
        </tr>
        
        <tr>
            <td><asp:Button ID="btnSubmit" runat="server" Text="Submit Progress" Width="234px" OnClick="btnSubmit_Click" /></td>
        </tr>
            
       
    </table>

    </div>
    </form>
</body>
</html>
