<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home_home" %>

<!DOCTYPE HTML>
<html>

<!-- Mirrored from wbpreview.com/previews/WB0L500N4/index.html by HTTrack Website Copier/3.x [XR&CO'2013], Thu, 12 Sep 2013 05:35:24 GMT -->
<head>
    <title>Connect & Learn more</title>
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
	
    <script src="assets/js/bigvideo.js"></script> 
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">    
    <script src="jquery.cycle.all.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#intro").cycle('scrollLeft');

        });
    
    </script>
    <link href="../vc/wbpreview.com/previews/WB09SG9DS/css/icon-style.css" rel="stylesheet"
        type="text/css" />
  <!-- IE Fix for HTML5 Tags -->
  <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->      
</head>
<body style="background: url('assets/img/images (5).jpg') #000 top center fixed no-repeat;background-size:100%;
	font-family:'Open Sans',sans-serif;">


<form id="Form1" runat="server">
  <!-- Navbar -->
  
	<div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
    		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
          	</a>
          	<a class="brand scroller" data-section="html" href="index.html">
            <asp:Image ID="Image1" runat="server"  
                    style="margin-top: 0px;" 
                    ImageUrl="~/CL.png" Height="46px" Width="108px"   /></a>
                 <%-- <img src="assets/img/logo.png" />--%>  
		  	<div class="nav-collapse collapse">
                <ul class="nav pull-right">
                <li><a href="#myModal"  data-toggle="modal" data-backdrop="static" data-keyboard="false">Login</a></li>
                
                  	<%--<li><a href="#" class="toggle_video">Toggle Video Demo</a></li>--%>
                    <li><a href="#" class="scroller" data-section="#about">About</a></li>
                    <%--<li><a href="#" class="scroller" data-section="#team">The Team</a></li>--%>
                    <li><a href="#" class="scroller" data-section="#contact">Contact us</a></li>
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
        <asp:Label ID="Label1" runat="server" Text="   " data-dismiss="alert"
        Visible="False" ForeColor="White" class=" alert btn btn-inverse btn-mini" style="margin-left:500px;"></asp:Label>
    </div>
   
    <!-- end Navbar -->
   <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h3 id="myModalLabel"><h2 class="sign-in">Sign in</h2></h3>
    
</div>
<div class="modal-body">
<div class="row-fluid">
		
						
						<small class="muted">Please sign in using your registered account details</small>
						<div class="squiggly-border"></div>

						<div class="login-inner">
							</div>
								<div class="input-prepend">
									<span class="add-on"> <i class="radmin-icon radmin-user"></i>
									</span>
								
                                    <asp:TextBox class="input-large" ID="username" size="16"  placeholder="Username" runat="server" ></asp:TextBox>
                                    
                                    </div>
								<br />
								<br />
								<div class="input-prepend">
									<span class="add-on"> <i class="radmin-icon radmin-locked"></i>
									</span>
									
                                    <asp:TextBox  runat="server" class="input-large" ID="userpassword" size="16"  placeholder="Password" TextMode="Password" ></asp:TextBox>
                                    </div>
                                    <br />
		                            <a href="#myModal1"  data-toggle="modal" data-backdrop="static" data-keyboard="false" data-dismiss="modal">Lost Your Password?</a><br />
									<%--<a class="btn btn-large btn-inverse pull-right" href="index.html" id="login">Login</a>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Login" 
                            class="btn btn-large btn-inverse pull-left" onclick="Button1_Click" />
								
							</div>

		
		</div>

<div class="modal-footer">
<%--<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
<button class="btn btn-primary">Save changes</button>--%>
</div>
</div>
    
   <div id="myModal1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h3 id="H1"><h2 class="sign-in">Lost Password</h2></h3>
    
</div>
<div class="modal-body">
<div class="row-fluid">
		
						
						<small class="muted">Please Enter your Email-id Here</small>
						<div class="squiggly-border"></div>

						<div class="login-inner">
							</div>
								<div class="input-prepend">
									<span class="add-on"> <i class="radmin-icon radmin-user"></i>
									</span>
								
                                    <asp:TextBox class="input-large" ID="TextBox1" size="16"  placeholder="Username" runat="server" ></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Please enter Email-id" 
                                        ForeColor="#990000" ValidationGroup="q"></asp:RequiredFieldValidator>
                                    
                                    </div>
								<br />
								<br />
								<div class="input-prepend">
									<%--<span class="add-on"> <i class="radmin-icon radmin-locked"></i>
									</span>--%>
									
                                   <%-- <asp:TextBox  runat="server" class="input-large" ID="TextBox2" size="16"  placeholder="Password" TextMode="Password" ></asp:TextBox>--%>
                                    <asp:Button ID="Button4" runat="server" Text="Get Password" 
                            class="btn btn-large btn-inverse pull-left" onclick="Button4_Click1" 
                            ValidationGroup="q"  />
								
                                    </div>
                                    <br />
		                           <%--<a href="#myModal1"  data-toggle="modal" data-backdrop="static" data-keyboard="false">Lost passwpord</a><br />--%>
									<%--<a class="btn btn-large btn-inverse pull-right" href="index.html" id="login">Login</a>--%>
								
							<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
								
							</div>

		
		</div>

<div class="modal-footer">
<%--<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
<button class="btn btn-primary">Save changes</button>--%>
</div>
</div>

    <!-- #intro -->
	<div class="main-container">
		<div class="container-fluid" id="intro">	
		<div class="container">	
			<div class="row span6 center">
         <h1>This Helps to provide Class-room based Learning</h1>
				<p>Educaors can connect with students &amp; communicate academic information,create 
                    class.and Students also share files and Learn more things.
	</p>
    
 <h1> <b> Register As : </b></h1><%--<a href="#register_student"  class="btn btn-xlarge btn-purple" data-toggle="modal" data-backdrop="static" data-keyboard="false">student </a>  <a href="#register_educator"  class="btn btn-xlarge btn-purple" data-toggle="modal">Educator </a>
				--%> 

    <asp:Button ID="Button2" runat="server" Text="Student" class="btn btn-xlarge btn-purple" 
                    onclick="Button2_Click"/>
     <asp:Button ID="Button3" runat="server" Text="Educator" class="btn btn-xlarge btn-purple" 
                    onclick="Button3_Click"/>

			</div>	
		</div>
	</div>

   
    <!-- ends Intro -->
    
    
     <!-- #about -->
<h1>
    
            &nbsp   &nbsp
            &nbsp   &nbsp
            &nbsp   &nbsp
            &nbsp   &nbsp
            &nbsp

</h1>
<div class="container-fluid" id="about">
		<div class="container light">
			<h1>What can we offer</h1>
		<ul class="thumbnails">
		  <li class="span4">
		    <div class="thumbnail">
		      <img alt="" src="assets/img/icon1.png">
		      <h3>Well Connected</h3>
		      <p>Educators can connect with Students &amp; communicate academic information,Create 
                  Classes &amp; then Schedule it</p>
		    </div>
		  </li>
		
		 <li class="span4">
		  <%--   <div class="thumbnail">
		      <img alt="" src="assets/img/icon2.png">
		      <h3>Award Winning</h3>
		      <p>Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur vulputate</p>
		    </div>--%>
		  </li>
		  
		  <li class="span4">
		    <div class="thumbnail">
		       <img alt="" src="assets/img/icon3.png">
		      <h3>Creative Thinking</h3>
		      <p>Educators can invite students for classes,upload materials and Students can 
                  access it.</p>
		    </div>
		  </li>
		</ul>
	</div>
</div>
     <!-- ends About -->
     
     
      <!-- #team -->    

      <!-- End Team -->  
       	
	
      <!-- #contact -->   	
	<div class="container-fluid" id="contact">
	<div class="container dark">
		<h1>Get in contact with us</h1>	
	
		<div class="span5">			
			</div>
				  <div class="control-group">
				    <label class="control-label" for="inputName">Name</label>
				    <div class="controls">
				      &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">Email</label>
				    <div class="controls">
				      &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputContact">Message</label>
				    <div class="controls">
				     &nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				        <asp:Button ID="Button5" runat="server" Text="Submit" class="btn btn-purple" 
                            onclick="Button5_Click" Width="122px"/>
				        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
				    </div>
				  </div>
			</form>
		</div>
	
		<div class="span4">	
				<%--<h2>Pop in for a chat</h2>-- %>
				
			<%--<p>Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit.</p> --%>	
	
				<%--<address>
				  <strong>Your Company, Inc.</strong><br>
				  95 Folsom Ave, Suite 600<br>
				  San Francisco, CA 94107<br>
				  <abbr title="Phone">P:</abbr> (123) 456-7890
				</address> --%>
				 
				<%--<address>
				  <strong>Full Name</strong><br>
				  <a href="mailto:#">first.last@example.com</a>
				</address>		 --%>
		</div>		
	</div>
</div>   <!-- End Contact -->  
	</div>
   </form>
<script>
    $(function () {
        $(window).scroll(function () {
            // global scroll to top button
            if ($(this).scrollTop() > 300) {
                $('.scrolltop').fadeIn();
            } else {
                $('.scrolltop').fadeOut();
            }
        });

        // scroll nav
        $('.scroller').click(function () {
            var section = $($(this).data("section"));
            var top = section.offset().top - 82;
            $("html, body").animate({ scrollTop: top }, 700);
            return false;
        });


        // For the purpose of the demo this allows you to toggle the background between video and img
        $('.toggle_video').click(function () {

            $('#big-video-wrap').fadeToggle();
            return false;

        });

        // BigVideo Setup
        var BV = new $.BigVideo({ useFlashForFirefox: false });
        BV.init();
        if (Modernizr.touch) {
            // fallback image for mobile devices
            BV.show('assets/img/mn.jpg');
        } else {
            BV.show('assets/video/frontier.mp4',
        { ambient: true, doLoop: true, altSource: 'assets/video/frontier.ogv' });
        }


    });
</script>
</body>

<!-- Mirrored from wbpreview.com/previews/WB0L500N4/index.html by HTTrack Website Copier/3.x [XR&CO'2013], Thu, 12 Sep 2013 05:35:38 GMT -->
</html>
