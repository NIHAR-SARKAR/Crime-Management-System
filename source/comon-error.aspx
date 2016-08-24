<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comon-error.aspx.cs" Inherits="Crime_Management_System.comon_error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Comon Error</title>
       <link href="~/css/errors.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
   <div id="error">
    
        <div id="message">
            <center>
            <img src="img/cerror.png" class="epic" />
            <span id="restristed">Error Found</span><br />
            <span id="details" >Bad Request . Try Again . </span>
                <br /><br /><br /><br /><br />

                <a href="home.aspx" class="homelink" >Go to Home</a>
                </center>
        </div>
    </div>
    </form>
</body>
</html>
