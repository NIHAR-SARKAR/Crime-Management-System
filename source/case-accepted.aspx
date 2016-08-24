<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case-accepted.aspx.cs" Inherits="Crime_Management_System.case_accepted" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Added Successfully</title>
    <style>

        #box {
            margin-top:50px;
            padding:20px 30px;
            border:2px solid #097105;
            background-color:#edcc17;
            border-radius:20px;
            width:500px;
            box-shadow:2px 2px 15px #aaa;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center><div id="box">
    
       Added Successfully : user ID : <asp:Label ID="userId" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Case Id :
        <asp:Label ID="caseId" runat="server" Text="Label">
            
           
        </asp:Label><br /><br /><br />
        Note This Case Id.
    </div>
        <br /><br /><br /><br />
        <a href="home.aspx" style="font-size:25px;">Goto Home</a>
    </center>
    </form>
</body>
</html>
