<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcaneuser/farmer.master" AutoEventWireup="true" CodeFile="farmerenquiry.aspx.cs" Inherits="Sugarcaneuser_farmerenquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .card-authentication1 {
width : 45rem;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">

	<div class="card card-authentication1 mx-auto my-4">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">Enquiry</div>
		    <form>
                <div class="form-group">
			  <label for="exampleInputName">Farmer ID</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputName" class="form-control input-shadow" placeholder="Enter Your Name">--%>
                        <asp:TextBox ID="txtid" class="form-control input-shadow" ReadOnly="true" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputName">Name</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputName" class="form-control input-shadow" placeholder="Enter Your Name">--%>
                        <asp:TextBox ID="txtnm" class="form-control input-shadow" ReadOnly="true" placeholder="Enter Your Name" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputEmailId">Village</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txtvil" class="form-control input-shadow" ReadOnly="true" placeholder="Enter Village" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-city"></i>
				  </div>
			   </div>
			  </div>
                
                  
                  <div class="form-group">
			  <label for="exampleInputEmailId">Mobile No.</label>
			   <div class="position-relative has-icon-right">
				  <%--<input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter Your Email ID">--%>
                   <asp:TextBox ID="txtmob" class="form-control input-shadow" ReadOnly="true" placeholder="Enter Mobile No" runat="server"></asp:TextBox>
				  <div class="form-control-position">
					  <i class="zmdi zmdi-phone"></i>
				  </div>
			   </div>
			  </div>
                  
                <div class="form-group">
			  <label for="exampleInputEmailId">Query</label>
			   <div class="position-relative has-icon-right">
                    <asp:TextBox ID="txtqu" TextMode="MultiLine" cols="20" rows="2" class="form-control input-shadow" runat="server"></asp:TextBox>
<%--                        <textarea id="TextArea1" cols="20" class="form-control input-shadow" rows="2"></textarea>--%>
				  <div class="form-control-position">
					  
				  </div>
			   </div>
			  </div>
			  </div>
			  

                <%--//hidden field--%>
                <asp:HiddenField ID="HiddenField1" runat="server" />
			  
                <div>
			  <asp:Button ID="submit" class="btn btn-light btn-block waves-effect waves-light" runat="server" onclick="submit_Click" Text="Submit" />
			 </div>
			  
			
			 </form>
		   </div>
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
	
	</div>
</asp:Content>

