<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration-succesfull.aspx.cs" Inherits="_3rd_july.registration_succesfull" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Successfull</title>
    <link href="~/css/style.css" rel="stylesheet">
		<link href="~/css/menux.css" rel="stylesheet">
        <link href="~/css/icon.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
     <div id="total">
        <div id="headx">
            <div id="name">
           <center> <img src="../img/header.png" style=" margin: 20px;"/></center>
            </div>
        
        
        <div id="heading">
        <center><span class="head-message">
            Registration Done
                </span> </center>
        </div>
            <div id='cssmenu'>
<ul>
   <li style="margin-left:50px;"><a href='home.aspx'><span class="icon-home"> Home</span></a></li>
   <li class='active has-sub'><a href='register.aspx'><span class="icon-user-tie"> Register</span></a>
      
   </li>


      
   </li>

    <li class='active has-sub'><a href='#'><span class="icon-library"> Complain</span></a>
      <ul>
         <li class='has-sub'><a href='complain-submit.aspx'><span class="icon-plus"> Submit Complain</span></a>
            
         </li>
         <li class='has-sub'><a href='case-status.aspx'><span class="icon-loop2"> Check Complain Status</span></a>
            
         </li>
      </ul>
   </li>
         <li class='active has-sub'><a href='help.aspx'><span class="icon-man"> Help</span></a>
    <li class='last'><a href='contact.aspx'><span class="icon-envelop"> Contacts</span></a></li>
</ul>

                
</div>
        
        </div>
        
        
        
        <div class="clear"></div>
        <div id="content">
            

            <div id="left">
                
                <h3><span class="icon-profile"></span> Details</h3>
       
                <p>This is an online in-time case submit service. Here, users can submit cases as similar to submiting a case in a police station. 
Just by following few simple procedures, an user can lodge a case and later can check the case status by submiting the case ID 
provided to them after they have received it.</p>
                
                
                
                 <h3><span class="icon-link"></span> Links</h3>
                <ul class="imp-links">
                    <li><a href="#"> Job Portal</a></li>
                <li><a href="#"> Car Rental</a></li>
                <li><a href="#"> Shoping Management</a></li>
                <li><a href="#"> Shop Management</a></li>
                <li><a href="#"> Office Management</a></li>
                    
                    </ul>
                
        </div>


            <div id="right">

                
        <center> 
            
            <asp:Image ID="userimg" runat="server" ImageUrl="~/img/user.png"></asp:Image>
            <table class="log">

               <tr>
                    <td>
                        
                        Name</td>
                    <td>
                        <asp:Label ID="lbName" runat="server" Text="Nihar Sarkar"></asp:Label>
                    </td>
                    
                </tr>

                      <tr>
                    <td>
                        User ID</td>
                    <td>
                        <asp:Label ID="lbId" runat="server" Text="145789"></asp:Label>
                          </td>
                    
                </tr>

                      <tr>
                    <td>
                        D.O.B</td>
                    <td>
                        <asp:Label ID="lbDOB" runat="server" Text="30/04/1993"></asp:Label>
                          </td>
                    
                </tr>

                      <tr>
                    <td>
                        
                          Phone Number</td>
                    <td>
                        <asp:Label ID="lbPhone" runat="server" Text="9143837040"></asp:Label>
                          </td>
                    
                </tr>
                        <tr>
                    <td aria-busy="True">
                        Email ID</td>
                    <td aria-busy="True">
                        <asp:Label ID="lbEmail" runat="server" Text="9143837040"></asp:Label>
                          </td>
                    
                </tr>

                      <tr>
                    <td>
                        Pin Code</td>
                    <td>
                        <asp:Label ID="lbPin" runat="server" Text="700159"></asp:Label>
                          </td>
                    
                </tr>

                    

                 
            </table>
            <br />
            <br />
            <br /> Please Note These Details . Thanks For your Registration .
        </center>
        </div>
        
        </div>
        
        <div class="clear"></div>
        
        
        
        <div id="footer">
        <div id="footarea">
       
            <div class="rows">
                <h3> <span class="icon-bullhorn"></span>  Announcement</h3>
            All citizens are informed that this is a new web facility which has been launched this year to 
       take Crime Management to steps forward.Till now all crime details used to be managed in pen-papaer 
       mode which is time consuming and there was a very much chance of lose of a complain.
      
            </div>
            
            
            <div class="rows" >
            <h3 ><span class="icon-pushpin"></span>  Notice</h3>
           To use this web facility every citizen has to register their names and other required details.
       Every time citizen wants to lodge a new complain the facility checks wheather he/she is a 
       registered citizen or not.
       The web facility is designed so that Law and Order can be maintained properly in the society.
       
            </div>
            
            
            <div class="rows" >
                <h3> <span class="icon-pie-chart"></span> Emergency Details</h3>
            <ul>
                <li><span class="icon-phone"></span>&nbsp; Dial 100 for Emergency Help .</li>
                <li><span class="icon-phone"></span>&nbsp; Dial 1090 to give Information to Police.</li>
                <li><span class="icon-phone"></span>&nbsp; Dial 1073-For Trafic Related Issue.</li>
                <li><span class="icon-phone"></span>&nbsp; 22214-3024 (Lalbazar Control Room)</li>

            </ul>
            
            </div>
            
        </div>
            <div class="clear"></div>
            <div id="copyright">
        <span style=" margin-left:150px; " class="icon-sphere"> Copyright &copy; 2015 | Nihar</span>
        </div>
        </div>
        
        
        </div>
    </form>
</body>
</html>
