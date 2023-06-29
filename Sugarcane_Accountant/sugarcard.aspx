<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcane_Accountant/farmer.master" AutoEventWireup="true" CodeFile="sugarcard.aspx.cs" Inherits="Sugarcane_Accountant_sugarcard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">
    
    <div class="mt-3">
      <div id='calendar'>
          <asp:Button ID="Button1" runat="server" Text="Button" />
           <asp:Button ID="Button2" runat="server" Text="Button" />
      </div>
    </div>
        
			
		<!--start overlay-->
		  <div class="overlay toggle-menu"></div>

		<!--end overlay-->	
			
    </div>
    <!-- End container-fluid-->
   </div><!--End content-wrapper-->
   
  <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
</asp:Content>

