<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Registration</title>
  <!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon"/>
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
    <link href="assets/css/app-style.css" rel="stylesheet" />

    <style>



					  
.card-authentication1 {
width : 45rem;
}
    </style>
</head>
<body class="bg-theme bg-theme1">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

	<div class="card card-authentication1 mx-auto my-4">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="assets/images/logo-icon.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">Sign Up</div>
		    <form runat="server">
			  <div class="form-group">
			  <label for="exampleInputName">Name</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputName" class="form-control input-shadow" placeholder="Enter Your Name">--%>
                        <asp:TextBox ID="txtnm" class="form-control input-shadow" placeholder="Enter Your Name" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputEmailId">Village</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txtvil" class="form-control input-shadow" placeholder="Enter Village" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-city"></i>
				  </div>
			   </div>
			  </div>
                <div class="form-group">
			  <label for="exampleInputEmailId">Taluka</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txttal" class="form-control input-shadow" placeholder="Enter Taluka" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-pin"></i>
				  </div>
			   </div>
			  </div>
                <div class="form-group">
			  <label for="exampleInputEmailId">Land In Hectors</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txtland" class="form-control input-shadow"  runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-landscape"></i>
				  </div>
			   </div>
			  </div>
                  <div class="form-group">
			  <label for="exampleInputEmailId">Aadhar Number</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txtadhar" class="form-control input-shadow" Placeholder="Enter Aadhar No" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-assignment-account"></i>
				  </div>
			   </div>
			  </div>
                  <div class="form-group">
			  <label for="exampleInputEmailId">Mobile No.</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txtmob" class="form-control input-shadow" placeholder="Enter Mobile No" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-phone"></i>
				  </div>
			   </div>
			  </div>
                  <div class="form-group">
			  <label for="exampleInputEmailId">Date of Birth</label>
			   <div>
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                 <asp:TextBox ID="txtbd"  class="form-control input-shadow" type="date" runat="server"></asp:TextBox>
				  <div class="form-control-position">
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			   <label for="exampleInputPassword">Photo ID</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputPassword" class="form-control input-shadow" placeholder="Choose Password">--%>
                      <asp:FileUpload ID="FileUpload1" class="form-control input-shadow" runat="server" />
				  <%--<div class="form-control-position">
					  <i class="icon-lock"></i>
				  </div>--%>
			   </div>
			  </div>
			  
			   <div class="form-group">
			     <div class="icheck-material-white">
                   <input type="checkbox" id="user-checkbox" checked="" />
                   <label for="user-checkbox">I Agree With Terms & Conditions</label>
			     </div>
			    </div>
			  <asp:Button ID="signup" class="btn btn-light btn-block waves-effect waves-light" OnClick="signup_Click" runat="server" Text="signup" />
			 <%--<button type="button" class="btn btn-light btn-block waves-effect waves-light">Sign Up</button>--%>
			  <div class="text-center mt-3">Sign Up With</div>
			  
			 <div class="form-row mt-4">
			  <div class="form-group mb-0 col-6">
			   <button type="button" class="btn btn-light btn-block"><i class="fa fa-facebook-square"></i> Facebook</button>
			 </div>
			 <div class="form-group mb-0 col-6 text-right">
			  <button type="button" class="btn btn-light btn-block"><i class="fa fa-twitter-square"></i> Twitter</button>
			 </div>
			</div>
			
			 </form>
		   </div>
		  </div>
		  <div class="card-footer text-center py-3">
		    <p class="text-warning mb-0">Already have an account? <a href="login.html"> Sign In here</a></p>
		  </div>
	     </div>
    
     <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--start color switcher-->
   <div class="right-sidebar">
    <div class="switcher-icon">
      <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
    </div>
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
		<li id="theme13"></li>
        <li id="theme14"></li>
        <li id="theme15"></li>
      </ul>
      
     </div>
   </div>
  <!--end color switcher-->
	
	</div><!--wrapper-->
	
  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
	
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
  
</body>
</html>
