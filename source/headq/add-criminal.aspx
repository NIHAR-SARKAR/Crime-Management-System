<%@ Page Title="" Language="C#" MasterPageFile="~/headq/headQ.Master" AutoEventWireup="true" CodeBehind="add-criminal.aspx.cs" Inherits="_3rd_july.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Criminal</title>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="cpheading" runat="server">
    Add Criminal
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
                        <asp:TextBox ID="tbDob" runat="server" TextMode="Date" Width="182px"></asp:TextBox>
                     </td>
                    
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Details"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="tbDetails" runat="server" TextMode="MultiLine" Width="190px"></asp:TextBox>
                    <td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="tbDetails" ErrorMessage="Please Fill this Area."/></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Upload Photo"></asp:Label>
                     </td>
                    <td>
                        
                        <asp:FileUpload ID="fuPhoto" runat="server"  />
                        
                     </td>
                    <td>&nbsp;</td>
                </tr>
                

              
             

               <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    
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
                        <asp:Button ID="btnRegister" runat="server"  Text="Add Criminal" OnClick="btnRegister_Click"  />
                     </td>
                    <td></td>
                </tr>
            </table>

        <asp:Label ID="newId" runat="server" Text=""></asp:Label>
    </center>
</asp:Content>
