<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error-404.aspx.cs" Inherits="_3rd_july.error_404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>404-Error</title>

    <link href="css/errors.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="error">
    
        <div id="message">
            <center>
            <img src="img/error-404.png" class="epic" />
            <span id="code">404</span><br />
            <span id="details" >OOPS..Page Not Found</span>


                  <br /><br /><br /><br /><br />

                <a href="home.aspx" class="homelink" >Go to Home</a>
                </center>
        </div>
    </div>
    </form>
</body>
</html>
