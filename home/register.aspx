<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="home_register" %>

<!DOCTYPE HTML>
<html>

<!-- Mirrored from wbpreview.com/previews/WB0L500N4/index.html by HTTrack Website Copier/3.x [XR&CO'2013], Thu, 12 Sep 2013 05:35:24 GMT -->
<head>
    <title>Front Row Responsive One page Theme With Video Support</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <meta name="description" content="Front Row Responsive One page Theme With Video Support built by Harkable.com">
    <meta name="author" content="harkable.com"> 

   <%-- <script src="../../../jquery.js" type="text/javascript"></script>--%>
  	<script src="assets/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script> 
   
    <script src="assets/js/jquery-ui-1.8.22.custom.min.js"></script>
    <script src="assets/js/jquery.imagesloaded.min.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/modernizr-2.5.3.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:200' rel='stylesheet' type='text/css'>
	
    <script type="text/javascript">

        function checkNumeric(event) {

            if ((event.keyCode > 57 || event.keyCode < 48) && (event.keyCode != 46 && event.keyCode != 45)) {

                event.keyCode = 0

                return true;

            }
            else {
                return false;
            }

        }

</script>


    <script src="assets/js/bigvideo.js"></script> 
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">    

    <link href="../wbpreview.com/previews/WB09SG9DS/css/icon-style.css" rel="stylesheet"
        type="text/css" />
 
  <!-- IE Fix for HTML5 Tags -->
  <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->      
<style>
.clabel
{
    color:White;
    font-size:medium;
    font-weight:bold;
}


</style>
</head>



<body>


 
    <form id="form1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>--%>
    <div>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
    		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
          	</a>
          	<a class="brand scroller" data-section="html" href="index.html"><asp:Image ID="Image1" runat="server"  
                    style="margin-top: 0px;" 
                    ImageUrl="~/CL.png" Height="39px" Width="82px"   /></a>
		  	<div class="nav-collapse collapse">
                <ul class="nav pull-right">
                <%--<li><a href="#login"  data-toggle="modal" data-backdrop="static" data-keyboard="false">Login</a></li>--%>
                
                  	<li><a href="home.aspx" class="toggle_video">Home</a></li>
                    <li><a href="home.aspx" class="scroller" >Login</a></li>
                    <%--<li><a href="#" class="scroller" data-section="#team">The Team</a></li>--%>
                    <%--<li><a href="#" class="scroller" data-section="#contact">Contact us</a></li>--%>
                    <%--<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Dropdown
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Example Link</a></li>
                            <li><a href="#">Example Link 2</a></li>
                            <li><a href="#">Example Link 3</a></li>
                        </ul>
                    </li>--%>
                </ul>
	        </div>
        </div>
      </div>
    </div>

    <div id="register_student"  style="margin:120px 0 0 120px;">

<div >
<div class="row-fluid">
		
				<table class="style1">
              
              
              
                  
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="First Name" class="clabel" ForeColor="#333300"
                    ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfname" required=required runat="server" onkeypress="return checkNumeric(event);"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Last Name" class="clabel" 
                        ForeColor="#333300"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tlname" required=required onkeypress="return checkNumeric(event);" runat="server"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Contact No" class="clabel" 
                        ForeColor="#333300"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tmno" required=required runat="server"></asp:TextBox>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="tmno" ErrorMessage="Mobile no is must be of 10 digits" 
                        ValidationExpression="^[0-9]{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email Id" class="clabel" 
                        ForeColor="#333300"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="temail" required=required runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="temail" ErrorMessage="Enter valid Email-id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State" class="clabel" 
                        ForeColor="#333300"></asp:Label>
                </td>
               
                
                
                <td>
                    <asp:DropDownList ID="dstate" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dstate_SelectedIndexChanged">
                        <asp:ListItem>--Select  any one State--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [state_list]"></asp:SqlDataSource>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="City" class="clabel" 
                        ForeColor="#333300"></asp:Label>
                </td>
                <td>
                 
                    <asp:DropDownList ID="dcity" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="city_name" DataValueField="city_name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [city_name] FROM [cities] WHERE ([city_state] = @city_state)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dstate" Name="city_state" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Collage Name" class="clabel" 
                        ForeColor="#333300"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcollage"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Position"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tposition"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="bregister" runat="server" Height="47px" 
                         Text="Register"  class="btn btn-primary" onclick="bregister_Click"/>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td> 
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    * All Fields must be filled.<br />
                    *Password length is maximum 8 characters &amp; must have 1 digit and 1 capital 
                    letter.<br />
                    *Mobile no must be of 10 digits.</td>
            </tr>
        </table>	
						

		
		</div>
</div>

</div>
    </div>
  <%--   </ContentTemplate>
    </asp:UpdatePanel>--%>
    </form>
     
</body>
</html>
