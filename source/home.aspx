<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Crime_Management_System.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Home Page</title>
     <link href="~/css/home.css" rel="stylesheet">
		<link href="~/css/menux.css" rel="stylesheet">
        <link href="~/css/icon.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
   <div id="total">
        <div id="headx">
            

            <div id="name">
           <center> <img src="../img/header.png" style=" margin: 20px;"/></center>
                <br />

                <ul class="log1">
                    <li><a href="oc/oc-login.aspx"><span class="icon-key2"></span> OC Login</a></li>
                    <li><a href="io/io-login.aspx"><span class="icon-key2"></span> IO Login</a></li>
                </ul>  
            </div>
           
            
            <div class="clear"></div>
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
        
        <div id="showx">
               
            <marquee behavior="alternate" onmouseover="stop()" onmouseout="start()" ><span class="icon-paperplane"></span>  Welcome to Online Crime Manage ment System </marquee>
                
        </div>
        
        <div class="clear"></div>
        <div id="content">
            

            <div id="left-right">
                
                <div id="details">
                <div class="blocks" style="border-right:2px solid #229977;">
                    <center><img src="img/nihar1.png" />
                    <h4>Fully Online Service</h4></center>
                     <p>
                       This is an online in-time case submit service. Here, users can submit cases as similar to submiting a case in a police station. Just by following few simple procedures,
                          an user can lodge a case and later can check the case status by submiting the case ID provided to them after they have received it.
                    </p>
                </div>


                <div class="blocks" style="border-right:2px solid #229977;">
                    <center><img src="img/nihar2.png" />
                    <h4>Very helpful service</h4></center>
                    <p>
                        Through this system you don't have to go to police station urself,instead you can lodge a crime report from any place any time,provided that you should hava access to internet
                        & you should be registered in the system.
                    </p>
                </div>


                <div class="blocks">
                    <center><img src="img/nihar3.png" />
                    <h4>Full suport from officers </h4></center>
                     <p>
                        You can view your sumitted case details via online on daily basis from anywhere.You don't need to go to police station for that.
                         You can contact investigation oficers through phone,numbers already provided on contact page.
                    </p>
                </div>

                </div>
                <div class="hrline"></div>
                <div id="nihar">

                    <div class="sarkarx">
                        <center><h3>Goverment of India</h3></center>
                        <img src="img/satyameb.png" />
                        <br /><br />
                        This project is put forward by the government of India to overcome the needs and neccessities of people who
                        registers the details of victim but are certain that they save some time and can register cases with ease with 
                        less effort.

                    </div>
                     <div class="sarkarx">
                         <center><h3>Commissioners Message :</h3></center>
                        <img src="img/commis.png" />
                         <br /><br />
                        I, on behalf of Kolkata Police, assure you of our sincere unstinted efforts to attain smooth traffic management and solicit your unflinching cooperation is our earnest resolve.
                         <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~Surajit Kar Purkayastha
                    </div>

                </div>


                
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
                <img src="../img/satyameb.png" class="imgz" />

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
               
                <ul class="browser-icons">
                    <li><span class="icon-chrome"></span> </li>
                    <li><span class="icon-firefox"></span> </li>
                    <li><span class="icon-opera"></span> </li>

                </ul> 
        </div>
        </div>
        
        
        </div>
    </form>
</body>
</html>
