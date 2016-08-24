<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="restricted.aspx.cs" Inherits="Crime_Management_System.oc.oc_restricted" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Restricted Area</title>
    <link href="~/css/errors.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="error">
    
        <div id="message">
            <center>
            <img src="../img/stop.png" class="epic" />
            <span id="restristed">Restricted Area</span><br />
            <span id="details" >Your Request is not Allowed . </span>
                <br /><br /><br /><br /><br />

                <a href="oc-login.aspx" class="homelink" >Login</a>
                </center>
        </div>
    </div>
    </form>
</body>
</html>
