<%@ Page Title="" Language="C#" MasterPageFile="~/headq/headQ.Master" AutoEventWireup="true" CodeBehind="add-officer.aspx.cs" Inherits="_3rd_july.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Officers</title>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="cpheading" runat="server">
    Add Officer
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
    <h4>Hello <asp:Label ID="validuser" runat="server" Text="Label"></asp:Label></h4>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cpholderbody" runat="server">


     <center> <table class="log">

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbFName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="rqname" ControlToValidate="tbFName" ErrorMessage="Please Fill this Area."/></td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Enter Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbLName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="tbLName" ErrorMessage="Please Fill this Area."/></td>
                </tr>

                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Sex"></asp:Label>
                     </td>
                    <td>
                        <asp:DropDownList ID="ddlSex" runat="server" style="margin-left: 0px" Width="165px" Height="25px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                     </td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="DOB" runat="server" TextMode="Date" Width="182px"></asp:TextBox>
                     </td>
                    
                </tr>

                <tr>
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
                        <asp:TextBox ID="tbPin" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="tbPin" ErrorMessage="Please Fill this Area."/></td>
                </tr>

          <tr>
                    <td>
                        <asp:Label ID="Label123" runat="server" Text="Station Id"></asp:Label>
                     </td>
                    <td>
                        <asp:DropDownList ID="dlpsID" runat="server" Height="25px" Width="190px">
                        </asp:DropDownList>
                     </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Enter  Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="tbPassword" ErrorMessage="Please Fill this Area."/></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Confirm  Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbConfPass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="tbConfPass" ErrorMessage="Please Fill this Area."/>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="tbConfPass" ControlToCompare="tbPassword" runat="server" ErrorMessage="Enter same password"></asp:CompareValidator>
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
                        <asp:Label ID="Label11" runat="server" Text="Upload Photo"></asp:Label>
                     </td>
                    <td>
                        <asp:FileUpload ID="fuPhoto" runat="server" />
                     </td>
                    
                </tr>

                 <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server"  Text="Add Officer" OnClick="btnRegister_Click"  />
                     </td>
                    <td></td>
                </tr>
            </table>

         <asp:Label ID="newId" runat="server" Text=""></asp:Label>
     </center>
</asp:Content>
