<%@ Page Title="" Language="C#" MasterPageFile="~/Sugercaneadmin/farmer.master" AutoEventWireup="true" CodeFile="accountant_registration.aspx.cs" Inherits="Sugercaneadmin_accountant_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .content-wrapper{
            margin-right:310px;
            margin-left:416px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-12">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Accountant Details</div>
           <hr>
            <form>
           <div class="form-group">
            <label for="input-1">Name</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtnm" class="form-control" runat="server" placeholder="Enter Your Name" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-2">Contact No</label>
            <%--<input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtcontact" class="form-control" runat="server" placeholder="Enter Contact No" ></asp:TextBox>
           </div>
           
           <div class="form-group">
            <label for="input-3">Email ID</label>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Enter Email ID" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-3">City/Village</label>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txtvill" class="form-control" runat="server" placeholder="Enter Village" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-3">Aadhar No</label>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txtadhar" class="form-control" runat="server" placeholder="Enter Aadhar No" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-3">Photo ID</label>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
                    <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
           </div>

           <div class="form-group py-2">
             <div class="icheck-material-white">
            <input type="checkbox" id="user-checkbox1" checked=""/>
            <label for="user-checkbox1">I Agree Terms & Conditions</label>
            </div>
           </div>
           <div class="form-group">
           <%-- <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Button ID="btnsubmit" runat="server" Text="Register" Onclick="btnsubmit_Click" class="btn btn-light px-5" />
          </div>
          </form>
         </div>
         </div>
      </div>

     <!--End Row-->

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

