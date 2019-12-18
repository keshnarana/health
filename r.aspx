<%@ Page Language="C#" AutoEventWireup="true" CodeFile="r.aspx.cs" Inherits="Default3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>SELF-HEALTH CARE</title>
	<meta name="description" content="Cardio is a free one page template made exclusively for Codrops by Luka Cvetinovic" />
	<meta name="keywords" content="html template, css, free, one page, gym, fitness, web design" />
	<meta name="author" content="Luka Cvetinovic for Codrops" />
	<!-- Favicons (created with http://realfavicongenerator.net/)-->
	<link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-touch-icon-57x57.png"/>
	<link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-touch-icon-60x60.png"/>
	<link rel="icon" type="image/png" href="img/favicons/favicon-32x32.png" sizes="32x32"/>
	<link rel="icon" type="image/png" href="img/favicons/favicon-16x16.png" sizes="16x16"/>
	<link rel="manifest" href="img/favicons/manifest.json"/>
	<link rel="shortcut icon" href="img/favicons/favicon.ico"/>
	<meta name="msapplication-TileColor" content="#00a8ff"/>
	<meta name="msapplication-config" content="img/favicons/browserconfig.xml"/>
	<meta name="theme-color" content="#ffffff"/>
	<!-- Normalize -->
	<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<!-- Owl -->
	<link rel="stylesheet" type="text/css" href="css/owl.css"/>
	<!-- Animate.css -->
	<link rel="stylesheet" type="text/css" href="css/animate.css"/>
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.1.0/css/font-awesome.min.css"/>
	<!-- Elegant Icons -->
	<link rel="stylesheet" type="text/css" href="fonts/eleganticons/et-icons.css"/>
	<!-- Main style -->
	<link rel="stylesheet" type="text/css" href="css/cardio.css"/>
    <style type="text/css">
        .style1
        {
            width: 555px;
            height: 324px;
        }
        .style2
        {
            font-size:larger;
            width: 239px;
            text-align: center;
        }
        .style3
        {
            width: 200px;
        }
        .style4
        {
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    	<div class="preloader">
		<img src="img/loader.gif" alt="Preloader image" />
	</div>
	<nav class="navbar">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button><h4 style="color:Light-Blue">Self-Health care.</h4>
			
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right main-nav">
					
					<li><a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue">Register</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

    <header id="intro">
		<div class="container">
			<div class="table">
				<div class="header-text">
					<div class="row">
						<div class="col-md-12 text-center">
							<h3 class="light white">Take care of your body.</h3>
							<h1 class="white typed">It's the only place you have to live.</h1>
							<span class="typed-cursor">|</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

    	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<h3 class="white">Register</h3>
				<form action="" class="popup-form">
			   <h1 align="center" style="color: #00ff00;">
                                Enter your details
                            </h1>
                          <table class="style1">
                <tr>
                    <td style="font-size: x-large; width: 145px;">
                      
                    </td>
                    <td class="style3">
                        <asp:Label ID="LID" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-large; width: 145px; color:White"" class="text-center">
                        your
                       user name:
                    </td>
                    <td style="font-size: x-large" class="style3">
                        <asp:Textbox type="text" class="form-control form-white" ID="Textusrnm" 
                            runat="server" Height="22px" Width="200px"/>
                    </td>
                    <td style="font-size: x-large" class="style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textusrnm"
                            ErrorMessage="*enter name"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td></td><td class="style3"></td><td class="style4"></td></tr>
                <tr>
                    <td style="font-size: x-large; width: 145px; color:White"" class="text-center">
                        password:
                    </td>
                    <td class="style3">
                        <asp:Textbox type="text" class="form-control form-white" ID="Textpass" 
                            runat="server" TextMode="Password" Height="22px" Width="200px"/>
                    </td>
                    <td style="font-size: x-large" class="style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textpass"
                            ErrorMessage="*enter paswd"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-large; width: 145px; color:White"" class="text-center">
                         confirm
                       password:
                    </td>
                    <td class="style3">
                        <asp:Textbox type="text" class="form-control form-white" ID="Textcnfmpas" runat="server" TextMode="Password" Height="22px" Width="200px" />
                    </td>
                    <td style="font-size: x-large" class="style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textcnfmpas"
                            ErrorMessage="*confirm password" ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Textpass"
                            ControlToValidate="Textcnfmpas" ErrorMessage="*paswd must match" 
                            ForeColor="Blue" font-size="Large"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-large; width: 145px; color:White"" class="text-center">
                        phone no:
                    </td>
                    <td class="style3">
                        <asp:Textbox type="text" class="form-control form-white" ID="Textphno"  runat="server" MaxLength="10" Height="22px" Width="200px" />
                    </td>
                    <td class="style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textphno"
                            ErrorMessage="*enter phone no"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
                        
                        <br />
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*should be 10 digit"
                            ValidationExpression="[0-9]{10}"  ControlToValidate="Textphno"  
                            ForeColor="Blue" font-size="Large"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr><td style="font-size: x-large; width: 145px; color:White"" class="text-center">email id:</td>
                <td class="style3"><asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="200px"  class="form-control form-white"  ></asp:TextBox></td>
            <td class="style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                             ControlToValidate="TextBox1" ForeColor="Blue" font-size="Large" ErrorMessage="*enter email"  ></asp:RequiredFieldValidator><br />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="TextBox1"
                      ForeColor="Blue" font-size="Large" ErrorMessage="*incorrect email"  
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr>
             </table>
              
                     <asp:Button ID="Button1" runat="server" type="submit" Text="SUBMIT" class="btn btn-submit"  OnClick="Buttonsub_Click"></asp:Button>
					
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>\
				</form>
			</div>
		</div>
	</div>  

    <div class="mobile-nav">
		<ul>
		</ul>
		<a href="#" class="close-link"><i class="arrow_up"></i></a>
	</div>
	<!-- Scripts -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/typewriter.js"></script>
	<script src="js/jquery.onepagenav.js"></script>
	<script src="js/main.js"></script> 

  

  <section>
		<div class="cut cut-top"></div>
		<div class="container">
			<div class="row intro-tables">
				<div class="col-md-4">
					<div class="intro-table intro-table-first">
                    <br />
						<h5 style="text-align:center; color:White" > Contact us</h5>
						<div class="owl-carousel owl-schedule bottom">
							<div class="item">
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white"> Phone No:</h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"> 022-3876543</h5>
									</div>
								</div>
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white">Mobile:</h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white">+9876543210</h5>
									</div>
								</div>
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white"></h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white">Address:</h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white">Self-Health care center,<br />
                                     mumbai-04.</h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white"></h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white">Email:</h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white">health@gmail.com</h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
								<div class="schedule-row row">
									<div class="col-xs-6">
										<h5 class="regular white"></h5>
									</div>
									<div class="col-xs-6 text-right">
										<h5 class="white"></h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="intro-table intro-table-hover">
						<h5 class="white heading hide-hover">Premium Member login</h5>
						<div class="bottom">
							<h4 style="text-align:center; color:White">Login</h4>
							<h4 style="text-align:center; color:White"></h4>
							<a href="login.aspx" class="btn btn-white-fill expand">Login</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="intro-table intro-table-third"><br /><br /><br /><br />
						<h5 style="text-align:center; color:White"> We help you can check how healthy or fit you are with just few clicks.</h5>
						<h5 style="text-align:center; color:White"> Stay healthy. Stay fit.</h5>
						
					</div>
				</div>
			</div>
		</div>
	</section><div class="mobile-nav">
		<ul>
		</ul>
		<a href="#" class="close-link"><i class="arrow_up"></i></a>
	</div>
      </div>
    </form>
</body>
</html>
