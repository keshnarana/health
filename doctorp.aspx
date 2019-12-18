<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doctorp.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" /><title>SELF-HEALTH CARE
        </title>
        <meta name="description" content="Cardio is a free one page template made exclusively for Codrops by Luka Cvetinovic" />
        <meta name="keywords" content="html template, css, free, one page, gym, fitness, web design" />
        <meta name="author" content="Luka Cvetinovic for Codrops" />
        <!-- Favicons (created with http://realfavicongenerator.net/)-->
        <link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-touch-icon-60x60.png" />
        <link rel="icon" type="image/png" href="img/favicons/favicon-32x32.png" sizes="32x32" />
        <link rel="icon" type="image/png" href="img/favicons/favicon-16x16.png" sizes="16x16" />
        <link rel="manifest" href="img/favicons/manifest.json" />
        <link rel="shortcut icon" href="img/favicons/favicon.ico" />
        <meta name="msapplication-TileColor" content="#00a8ff" />
        <meta name="msapplication-config" content="img/favicons/browserconfig.xml" />
        <meta name="theme-color" content="#ffffff" />
        <!-- Normalize -->
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <!-- Owl -->
        <link rel="stylesheet" type="text/css" href="css/owl.css" />
        <!-- Animate.css -->
        <link rel="stylesheet" type="text/css" href="css/animate.css" />
        <!-- Font Awesome -->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.1.0/css/font-awesome.min.css" />
        <!-- Elegant Icons -->
        <link rel="stylesheet" type="text/css" href="fonts/eleganticons/et-icons.css" />
        <!-- Main style -->
        <link rel="stylesheet" type="text/css" href="css/cardio.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">
        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- full calendar css-->
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <!-- easy pie chart-->
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet"
            type="text/css" media="screen" />
        <!-- owl carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
        <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/fullcalendar.css">
        <link href="css/widgets.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
        <link href="css/xcharts.min.css" rel=" stylesheet">
        <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            background-color:White;
            text-align: center;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <section id="container" class="">
            <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom">
                    <i class="icon_menu"></i>
                </div>
            </div>

            <!--logo start-->
            <a href="" class="logo">SELF-HEALTH <span class="lite">CARE</span></a>
            <!--logo end-->
             <style type="text/css" media="screen">
                                .buttonclass1
                    {
                        -moz-border-radius: 4px;
                        -webkit-border-radius: 4px;
                        border-radius: 4px;
                        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#191919 ), color-stop(44%,black), color-stop(100%,#191919)); /* Chrome,Safari4+ */
                        background: -webkit-linear-gradient(top, #191919  0%,black 44%,#191919 100%); /* Chrome10+,Safari5.1+ */
                        -webkit-transition-duration: 0.4s;
                        transition-duration: 0.4s;
                        padding-left: 10px;
                        font-weight: bold;
                        top: 18px;
                        left: 690px;
                        position: absolute;
                        height: 35px;
                        width: 96px;
                    }
                    .buttonclass1:hover
                    {
                        color: White;
                        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,blue), color-stop(100%,#191919)); /* Chrome,Safari4+ */
                        background: -webkit-linear-gradient(top,  #blue 0%,#191919 100%); /* Chrome10+,Safari5.1+ */
                    }</style>
                    <asp:Button id="btnBack" class="buttonclass1" runat="server" text="Back" xmlns:asp="#unknown"
                    onclientclick="JavaScript: window.history.back(1); return false;">
            </asp:Button>
            <div class="top-nav notification-row">
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                
                    <!-- alert notification start-->
                    
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="profile-ava"></span>&nbsp;<span class="username">
                        <asp:Label ID="Lwelcome" runat="server" Text="Welcome.." Font-Size="Large"></asp:Label>
                        </span><b class="caret"></b></a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up">
                            </div>
                             
                            <li><a href="login.aspx"><i class="icon_key_alt"></i>Log Out</a> </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
            </header>
      <!--header end-->

      <!--sidebar start-->
            <aside>
            <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li class="active"><a class="" href="doctorp.aspx"><i class="icon_house_alt"></i>
                        <span>Refresh</span> </a></li>
                   
                </ul>
              <!-- sidebar menu end-->
            </div>
            </aside>
            </section>
     
            <!--main content start-->
            <section id="main-content">
          <section class="wrapper">
              <!--overview start-->
			  <div class="col-md-6 portlets"><div style="background: linear-gradient( gray, white)">
                 <br /><asp:Image ID="Image1" runat="server"></asp:Image>
                  <br />
                  <br />
                  Name:
 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                  Avalability:
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                  <br /><h3 style="background-color:#3c763d;">
                  Questions asked by your patients are shown here:</h3><br /><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      
                      
                      SelectCommand="SELECT [user_name], [question], [answer], [Doctor_name] FROM [Feedback] WHERE ([Doctor_name] = @Doctor_name)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="Label1" Name="Doctor_name" PropertyName="Text" 
                              Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                      DataSourceID="SqlDataSource1" Width="567px">
                      <Columns>
                          <asp:BoundField DataField="user_name" HeaderText="user_name" 
                              SortExpression="user_name" />
                          <asp:BoundField DataField="question" HeaderText="question" 
                              SortExpression="question" />
                          <asp:BoundField DataField="answer" HeaderText="answer" 
                              SortExpression="answer" />
                          <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                              SortExpression="Doctor_name" />
                      </Columns>
                  </asp:GridView><br />
                  <table><tr><td> user name:</td><td> <asp:TextBox  ID="TextBox4" class="form-control help-bolck" Height="39px" BorderColor="black" BorderWidth="1px" Width="306px" runat="server"></asp:TextBox>
                 </td></tr><tr><td> Answer:</td><td><asp:TextBox ID="TextBox1" class="form-control help-bolck" Height="39px" BorderColor="black" BorderWidth="1px" Width="306px" runat="server"></asp:TextBox></td></tr></table>
            
                  <asp:Button ID="Button1" 
                      runat="server" Text="Submit" CssClass="btn-default" onclick="Button1_Click"></asp:Button>
              <!-- project team & activity end -->
                  <br />
                  <br />
               <h3 style="background-color:#3c763d; top: -1px;">   Reports:</h3>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT result.user_name AS Expr1, result.*, Feedback.question, Feedback.answer, Feedback.Doctor_name FROM Feedback INNER JOIN result ON Feedback.user_name = result.user_name where Feedback.Doctor_name = @DoctorName">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="Label1" Name="DoctorName" 
                              PropertyName="Text" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                      DataKeyNames="id" DataSourceID="SqlDataSource3">
                      <Columns>
                          <asp:BoundField DataField="user_name" HeaderText="user_name" 
                              SortExpression="user_name" />
                          <asp:BoundField DataField="bmi" HeaderText="bmi" SortExpression="bmi" />
                          <asp:BoundField DataField="wh" HeaderText="wh" SortExpression="wh" />
                          <asp:BoundField DataField="lbmm" HeaderText="lbmm" SortExpression="lbmm" />
                          <asp:BoundField DataField="bf" HeaderText="bf" SortExpression="bf" />
                          <asp:BoundField DataField="f" HeaderText="f" SortExpression="f" />
                          <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                              ReadOnly="True" SortExpression="id" />
                          <asp:BoundField DataField="question" HeaderText="question" 
                              SortExpression="question" />
                          <asp:BoundField DataField="answer" HeaderText="answer" 
                              SortExpression="answer" />
                          <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                              SortExpression="Doctor_name" />
                      </Columns>
                  </asp:GridView>
                  <br />
               <h3 style="background-color:#3c763d; top: 0px;">   Appointments to be confimed:</h3><br /><asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT * FROM [Aptment] WHERE ([Doctor_name] = @Doctor_name)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="Label1" Name="Doctor_name" PropertyName="Text" 
                              Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                      DataKeyNames="DateOfAptment" DataSourceID="SqlDataSource2" Width="580px">
                      <Columns>
                          <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                              SortExpression="Doctor_name" />
                          <asp:BoundField DataField="user_name" HeaderText="user_name" 
                              SortExpression="user_name" />
                          <asp:BoundField DataField="DateOfAptment" HeaderText="DateOfAptment" 
                              ReadOnly="True" SortExpression="DateOfAptment" />
                          <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                          <asp:BoundField DataField="Confirmation" HeaderText="Confirmation" 
                              SortExpression="Confirmation" />
                      </Columns>
                  </asp:GridView>
                  <br />
                  <br />
                    <table><tr><td> user name:</td><td>    <asp:TextBox ID="TextBox3" class="form-control help-bolck" Height="39px" BorderColor="black" BorderWidth="1px" Width="306px" runat="server"></asp:TextBox>
                  </td></tr><tr><td>
                  Confirmation:</td><td> <asp:TextBox ID="TextBox2" class="form-control help-bolck" Height="39px" BorderColor="black" BorderWidth="1px" Width="306px" runat="server"></asp:TextBox></td></tr></table>
                  <br /><br />
                  <asp:Button ID="Button2" runat="server" onclick="Button2_Click"  CssClass="btn-default" Text="Submit" />
                  <br />
                  <br /></div>
</div>
            </section> </section>
     
            <div class="text-right">
                <div class="style1">
                    Copyright © 2017 | |     <a href="#">SELF-HEALTH care</a>
                </div>
            </div>
        
            <!--main content end-->
            <!-- container section start -->
            <!-- javascripts -->
            <script src="js/jquery.js"></script>
            <script src="js/jquery-ui-1.10.4.min.js"></script>
            <script src="js/jquery-1.8.3.min.js"></script>
            <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
            <!-- bootstrap -->
            <script src="js/bootstrap.min.js"></script>
            <!-- nice scroll -->
            <script src="js/jquery.scrollTo.min.js"></script>
            <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
            <!-- charts scripts -->
            <script src="assets/jquery-knob/js/jquery.knob.js"></script>
            <script src="js/jquery.sparkline.js" type="text/javascript"></script>
            <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
            <script src="js/owl.carousel.js"></script>
            <!-- jQuery full calendar -->
            &nbsp;<!-- Full Google Calendar - Calendar --><script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script><!--script for this page only-->
            <script src="js/calendar-custom.js"></script><script src="js/jquery.rateit.min.js">
            </script><!-- custom select --><script src="js/jquery.customSelect.min.js"></script>
            <script src="assets/chart-master/Chart.js"></script><!--custome script for all page--><script src="js/scripts.js">
            </script><!-- custom script for this page--><script src="js/sparkline-chart.js"></script><script src="js/easy-pie-chart.js">
            </script><script src="js/jquery-jvectormap-1.2.2.min.js"></script><script src="js/jquery-jvectormap-world-mill-en.js"></script><script src="js/xcharts.min.js">
            </script><script src="js/jquery.autosize.min.js"></script><script src="js/jquery.placeholder.min.js"></script><script src="js/gdp-data.js"></script>
            <script src="js/morris.min.js"></script><script src="js/sparklines.js"></script><script src="js/charts.js"></script><script src="js/jquery.slimscroll.min.js">
            </script><script>

                
            </script>
       
    </div>
    </form>
</body>
</html>
