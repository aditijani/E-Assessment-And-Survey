<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="edu_profile.aspx.cs" Inherits="edu_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin:10px 0 0 50px;float:left;">

<div align=center>
<table class="style1">
              
              <label id="mydiv" style="display:none; color: #CC3300;" font-bold="True"></label>
             
                  
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="First Name" class="clabel"
                    ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfname" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tfname" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Last Name" class="clabel"> </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tlname" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tlname" ErrorMessage="Enter last name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Contact No" class="clabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tmno" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tmno" ErrorMessage="Enter valid no" ValidationExpression="^[0-9'.s]{10}$"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email Id" class="clabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="temail" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="temail" ErrorMessage="Enter valid Email-id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Collage Name" class="clabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcollage" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tcollage" ErrorMessage="Enter Collage name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Position"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tposition" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="tposition" ErrorMessage="Enter Position"></asp:RequiredFieldValidator>
                </td>
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
                    &nbsp;
                    <asp:Button ID="bregister0" runat="server"  
                         Text="Edit"  class="btn btn-primary" onclick="bregister0_Click" 
                        Width="75px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bregister" runat="server"  
                         Text="Save"  class="btn btn-primary" onclick="bregister_Click" 
                        Visible="False" Width="72px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bregister1" runat="server"  
                         Text="Cancel"  class="btn btn-primary"  
                        Visible="False" onclick="bregister1_Click" Width="75px" />
                </td>
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
        </table>
        </div>
        </div>
        <div style="margin:25px 0  0 0; ">
        <table >
            <tr>
                <td >
                    <asp:Image ID="Image1" runat="server" Height="120" Width="120" 
                        ImageUrl="~/ewqa.bmp" BorderColor="#CCCCCC" BorderStyle="Solid" 
                        BorderWidth="1px" />
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload" class="btn btn-primary" 
                        onclick="Button1_Click" Width="91px"/>
                </td>
            </tr>
    </table></div>
</asp:Content>

