<%@ Page Title="" Language="C#" MasterPageFile="farmer.master" AutoEventWireup="true" CodeFile="weightslip.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .content-wrapper2 {
    
	padding-top: 70px;
	padding-left: 10px;
    padding-right: 10px;
    padding-bottom: 70px;
    overflow-x: hidden;
	-webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease; 
  }
        .tit{
            
            text-align:center;
            margin-top:60px;
            margin-right:30px;
            
        }
        .btn
        {
           background-color:orangered;

        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                          <%--Search--%>
    <div class="content-wrapper">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-12">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Search Farmar</div>
           <hr>
        
           <div class="form-group">
            <label for="input-1">Enter Code</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtcode" class="form-control" runat="server" placeholder="Enter Your Code" ></asp:TextBox>
           </div>
                <div class="form-group">
           <%-- <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Button ID="btncode" runat="server" Text="Search" onClick="btncode_Click" class="btn btn-light px-5" />&nbsp&nbsp&nbsp
          </div>
                
                </div>
             </div>
          </div>
        </div>
        <div class="tit">

            
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="lbltitle" runat="server" Text="Weight sugercane Slip" Font-Bold="true" Font-Size="XX-Large" ForeColor="white" BackColor="Black" ></asp:Label>
               
        </div>
    <%--FORMs--%>

        <div class="clearfix"></div>
	
  <div class="content-wrapper2">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-6">
         <div class="card">
           <div class="card-body">
           <div class="card-title"></div>
           <hr>
            <%--<form>--%>
               <div class="form-group">
            <label for="input-1">Booking ID</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtbid" class="form-control" runat="server" ReadOnly="true" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-1">Name</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtnm" class="form-control" runat="server" placeholder="Enter Your Name" ReadOnly="true" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-2">Village</label>
            <%--<input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtvil" class="form-control" runat="server" placeholder="Enter Your Village" ReadOnly="true"></asp:TextBox>
           </div>
           
           <div class="form-group">
            <label for="input-3">Taluka</label>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txttal" class="form-control" runat="server" placeholder="Enter Taluka Name" ReadOnly="true" ></asp:TextBox>
           </div>
           
                <div class="form-group">
            <label for="input-5">Customer Category</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtcuscat" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Group No.</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtgrno" class="form-control" runat="server" placeholder="Enter Group No. " ReadOnly="true" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-5">Sugarcane variety</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtsuva" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
           </div>
              <%-- Farmer_id_hiddenfield--%>
                <asp:HiddenField ID="hiddern_farmer_id" runat="server" />
               <asp:HiddenField ID="Hidden_slip_no" runat="server" />

           <div class="form-group py-2">
             <div class="icheck-material-white">

            </div>
           </div>
           <div class="form-group">
           <%-- <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Button ID="btnsubmit" runat="server" Text="Save" onclick="btnsubmit_Click" class="btn btn-light px-5" />&nbsp&nbsp&nbsp
               
          </div>
          <%--</form>--%>
         </div>
         </div>
      </div>

      <div class="col-lg-6">
        <div class="card">
           <div class="card-body">
           <div class="card-title"></div>
           <hr>
            <%--<form>--%>
           <div class="form-group">
            <label for="input-6">Sugarcane weight</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
               <asp:TextBox ID="txtwh" class="form-control" runat="server" placeholder="Enter Bank weight" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-7">Vechical Number</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtvehicaln" class="form-control" runat="server" placeholder="Vechical Number"></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-8">Vechical Type</label>
          <%--  <input type="text" class="form-control form-control-rounded" id="input-8" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txtvechicalty" class="form-control" runat="server" placeholder="Enter Account No."></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-9">Date</label>
          <%--  <input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
               <asp:TextBox ID="txtdate" class="form-control" runat="server" readonly="true"></asp:TextBox>
           </div>
        
         </div>
         </div>
      </div>
    </div><!--End Row-->

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

