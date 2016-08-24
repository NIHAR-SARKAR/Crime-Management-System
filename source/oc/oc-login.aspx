<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oc-login.aspx.cs" Inherits="Crime_Management_System.oc.oc_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Login</title>

    <link type="text/css" href="~/css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
        <div id="body">

        <div id="box">

            
            <center><table id="content">
                

               
                    <td>User Id</td>
                    <td>
                        <asp:TextBox ID="tbUsername" runat="server" Height="25px" Width="190px"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbUsername" runat="server" >*</asp:RequiredFieldValidator>
                        
                    </td >
                </tr>

                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" Height="25px" Width="190px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbPassword" runat="server" >*</asp:RequiredFieldValidator>
                        
                    </td >
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td >
                        <td>
                        
                    </td >
                </tr>
                
            </table></center>
            

        </div>

            <br /><br /><br />
           <center> <a class="home" href="../home.aspx">Goto Home</a></center>
        <div id="right">

            
            
        </div>
    
    </div>

    </form>
</body>
</html>
