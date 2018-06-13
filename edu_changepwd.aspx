<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="edu_changepwd.aspx.cs" Inherits="changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row-fluid">
						<div class="span12">
							<%--<h2 class="welcome">
								Welcome ,
								<span class="text-info"><%Response.Write(Session["username"].ToString()); %></span>
							</h2>--%>
						</div>
					</div>


     <form>
    <fieldset>
    <legend>Change  Password</legend>
   <div class="control-group">
    <label class="control-label" for="inputEmail">old password</label>
    <div class="controls">
    
       <asp:TextBox ID="txtoldpwd" runat="server" ></asp:TextBox>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="inputPassword">New password</label>
    <div class="controls">
    
          <asp:TextBox ID="txtnpwd" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="inputPassword">Retype New Password</label>
    <div class="controls">
    
        <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    </div>
    <div class="control-group">
    <div class="controls">
   
   
        <asp:Button ID="Button1" runat="server"  Text="Change" class="btn btn-primary " onclick="Button1_Click" 
                   />
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    </div>
    </fieldset>


     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtnpwd" 
        ErrorMessage="Password must contain a special character,a Digit &amp; a Capital letter" 
        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$,%&amp;^]).{4,8}$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnpwd" ControlToValidate="txtcpwd" 
                    ErrorMessage="Password does not matched" ForeColor="#CC3300"></asp:CompareValidator>
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="#CC3300" 
        Text="Wrong old password" Visible="False"></asp:Label>
    </form>
                    
</asp:Content>

