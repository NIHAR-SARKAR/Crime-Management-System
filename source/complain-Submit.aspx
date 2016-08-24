<%@ Page Title="" Language="C#" MasterPageFile="~/outer.Master" AutoEventWireup="true" CodeBehind="complain-Submit.aspx.cs" Inherits="Crime_Management_System.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Submit Complain</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpheading" runat="server">
    Submit Complain
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpholderbody" runat="server">

    <center> <table class="log">

               <tr>
                   <td class="sp1">UserID</td>
                   <td><asp:TextBox ID="tbUserID" runat="server" Width="181px"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator runat="server" ID="rqid" ControlToValidate="tbUserID" ErrorMessage="Please Fill this Area."/></td>
               </tr>
               <tr>
                   <td class="sp1">Registered Phone Number</td>
                   <td><asp:TextBox ID="tbPhn" runat="server" Width="180px"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator runat="server" ID="rqphn" ControlToValidate="tbPhn" ErrorMessage="Please Fill this Area."/></td>

               </tr>



        <tr>
                   <td ></td>
                   <td></td>
                   <td></td>
               </tr>
               <tr>
                   <td ></td>
                   <td></td>
                   <td></td>

               </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Crime Type"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCType" runat="server" Height="22px" Width="185px">
                            <asp:ListItem Value="CT100">Kidnapping</asp:ListItem>
                            <asp:ListItem Value="CT101">Money Laundering</asp:ListItem>
                            <asp:ListItem Value="CT102">Robbery</asp:ListItem>
                            <asp:ListItem Value="CT103">Rape</asp:ListItem>
                            <asp:ListItem Value="CT104">Molestation</asp:ListItem>
                            <asp:ListItem Value="CT105">Suicide</asp:ListItem>
                            <asp:ListItem Value="CT106">Burglary</asp:ListItem>
                            <asp:ListItem Value="CT107">Cyber Crime</asp:ListItem>
                            <asp:ListItem Value="CT108">Murder</asp:ListItem>
                            <asp:ListItem Value="CT109">Pick Pocket</asp:ListItem>
                            <asp:ListItem Value="CT110">Fraud</asp:ListItem>
                            <asp:ListItem Value="CT111">Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>

                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Victim Name"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbVName" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="rqPassword" ControlToValidate="tbVName" ErrorMessage="Please Fill this Area."/></td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Victim Age"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbVAge" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="tbVAge" ErrorMessage="Please Fill this Area."/></td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Victim Sex"></asp:Label>
                     </td>
                    <td>
                        <asp:DropDownList ID="ddlVSex" runat="server" style="margin-left: 0px" Width="190px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList> 
                     </td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Crime Date"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbCDate" runat="server" Width="190px" TextMode="Date"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="tbCDate" ErrorMessage="Please Fill this Area."/></td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Crime Time"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbCTime" runat="server" Width="190px" TextMode="Time"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="tbCDate" ErrorMessage="Please Fill this Area."/></td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Place"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbCPlace" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="tbCTime" ErrorMessage="Please Fill this Area."/></td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Image of Missing person"></asp:Label>
                     </td>
                    <td>
                        <asp:FileUpload ID="fuMissingPerson" runat="server" />
                     </td>
                    <td>&nbsp;</td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Details"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox id="tbCDetails" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>

                 <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server"  Text="SUBMIT" OnClick="btnSubmit_Click"   />
                     </td>
                    <td></td>
                </tr>

               <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server"></asp:Label>
                     </td>
                    <td></td>
                </tr>
            </table></center>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
</asp:Content>
