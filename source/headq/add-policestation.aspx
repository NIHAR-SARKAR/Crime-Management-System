<%@ Page Title="" Language="C#" MasterPageFile="~/headq/headQ.Master" AutoEventWireup="true" CodeBehind="add-policestation.aspx.cs" Inherits="_3rd_july.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Police Station</title>
    <style type="text/css">


        
    </style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpheading" runat="server">
    Add Police Station

</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
<h4>Hello <asp:Label ID="validuser" runat="server" Text="Label"></asp:Label></h4>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cpholderbody" runat="server">

      <center> <table class="log">

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter Station Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="rqname" ControlToValidate="tbName" ErrorMessage="Please Fill this Area."/></td>
                </tr>
               

                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="tbAddress" ErrorMessage="Please Fill this Area."/></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="PinCode"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbPin" runat="server" Width="190px" TextMode="MultiLine" ToolTip="Separate pincodes with commas(,)"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="tbPin" ErrorMessage="Please Fill this Area."/></td>
                </tr>

          <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Enter  Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="tbPassword" ErrorMessage="Please Fill this Area."/>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Confirm  Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbConfPass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="tbConfPass" ErrorMessage="Please Fill this Area."/>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="tbConfPass" ControlToCompare="tbPassword" runat="server" ErrorMessage="Enter Same password"></asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="tbPhone" ErrorMessage="Please Fill this Area."/></td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    
                </tr>

             

               <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    
                </tr>

                 <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server"  Text="Add PoliceStation" OnClick="btnRegister_Click"  />
                     </td>
                    <td></td>
                </tr>
            </table>
          <br /><br /><br />
          <asp:Label ID="lblstatus" runat="server" Text="" style="color:#ce2020; font-weight:bold;"></asp:Label>
      </center>

</asp:Content>
