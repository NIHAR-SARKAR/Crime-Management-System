<%@ Page Title="" Language="C#" MasterPageFile="~/outer.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Crime_Management_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpheading" runat="server">
    Register Page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpholderbody" runat="server">

    <center> <table class="log">

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbFName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="rqname" ControlToValidate="tbFName" ErrorMessage="Please Fill this Area."/>
                        
                    </td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Enter Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbLName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="tbLName" ErrorMessage="Please Fill this Area."/>
                        
                    </td>
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
                        <asp:TextBox ID="tbDOB" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
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
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="tbPin" ErrorMessage="Please Fill this Area."/>
                        
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="tbPhone" ErrorMessage="Please Fill this Area."/>
                         
                    </td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidat" ControlToValidate="tbEmail" ErrorMessage="Please Fill this Area."/>
                        
                        <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Mail" ValidationExpression="" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>

               <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Voter/Adhaar/Passport No."></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbIDprof" runat="server" Width="190px"></asp:TextBox>
                     </td>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValid" ControlToValidate="tbIDprof" ErrorMessage="Please Fill this Area."/>
                        
                        
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
                        <asp:Button ID="btnRegister" runat="server"  Text="Register" OnClick="btnRegister_Click"  />
                     </td>
                    <td></td>
                </tr>
            </table></center>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
</asp:Content>
