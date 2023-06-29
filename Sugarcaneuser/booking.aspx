<%@ Page Title="" Language="C#" MasterPageFile="farmer.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-6">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Farmer Booking</div>
           <hr>
            <form>
           <div class="form-group">
            <label for="input-1">Name</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtnm" class="form-control" runat="server" placeholder="Enter Your Name" ReadOnly="true" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-2">Village</label>
            <%--<input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtvil" class="form-control" runat="server" placeholder="Enter Your Village" ></asp:TextBox>
           </div>
           
           <div class="form-group">
            <label for="input-3">Taluka</label>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txttal" class="form-control" runat="server" placeholder="Enter Taluka Name" ></asp:TextBox>
           </div>
           
           <div class="form-group">
            <label for="input-4">District</label>
            <%--<input type="text" class="form-control" id="input-4" placeholder="Enter Password">--%>
               <asp:TextBox ID="txtdis" class="form-control" value="Sangli" ReadOnly="true" runat="server" placeholder="Enter District" ></asp:TextBox>
           </div>
          
           <div class="form-group">
            <label for="input-5">Mobile No</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="Txtmob" class="form-control" runat="server" placeholder="Enter Your Mobile " ></asp:TextBox>
           </div>

            <div class="form-group">
            <label for="input-5">Aadhar No.</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtaadhar" class="form-control" runat="server" placeholder="Enter Aadhar No. " ></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Pan Card No.</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtpan" class="form-control" runat="server" placeholder="Enter Pan Card No. " ></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Village of Sugarcane field</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtsurfield" class="form-control" runat="server" placeholder="Enter Village of Sugarcane field" ></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Threshing Season Year</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txttsy" class="form-control" runat="server" ></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Customer Category</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
                    <asp:DropDownList ID="ddmemb" class="form-control" runat="server">
                        <asp:ListItem>Member</asp:ListItem>
                        <asp:ListItem>Nonmember</asp:ListItem>
                    </asp:DropDownList>


           </div>
                <div class="form-group">
            <label for="input-5">Group No.</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtgrno" class="form-control" runat="server" placeholder="Enter Group No. " ></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Water Supply</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
                    <asp:DropDownList  ID="ddwater"  class="form-control" runat="server">
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem>River</asp:ListItem>
                        <asp:ListItem>Well</asp:ListItem>
                    </asp:DropDownList>
           </div>
                <div class="form-group">
            <label for="input-5">Land In Hectors</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtland" class="form-control" runat="server" ></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-5">Sugarcane variety</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtsuva" class="form-control" runat="server"></asp:TextBox>
           </div>

                <asp:HiddenField ID="hiddern_farmer_id" runat="server" />

           <div class="form-group py-2">
             <div class="icheck-material-white">
            <input type="checkbox" id="user-checkbox1" checked=""/>
            <label for="user-checkbox1">I Agree Terms & Conditions</label>
            </div>
           </div>
           <div class="form-group">
           <%-- <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Button ID="btnsubmit" runat="server" Text="Book" OnClick="btnsubmit_Click" class="btn btn-light px-5" />
          </div>
          <%--</form>--%>
         </div>
         </div>
      </div>

      <div class="col-lg-6">
        <div class="card">
           <div class="card-body">
           <div class="card-title">Bank Details</div>
           <hr>
            <%--<form>--%>
           <div class="form-group">
            <label for="input-6">Bank Name</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
               <asp:TextBox ID="txtbnm" class="form-control" runat="server" placeholder="Enter Bank Name" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-7">Branch</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtbranch" class="form-control" runat="server" placeholder="Enter Branch"></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-8">Account No.</label>
          <%--  <input type="text" class="form-control form-control-rounded" id="input-8" placeholder="Enter Your Mobile Number">--%>
               <asp:TextBox ID="txtacno" class="form-control" runat="server" placeholder="Enter Account No."></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-9">IFSC CODE</label>
          <%--  <input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
               <asp:TextBox ID="txtifsc" class="form-control" runat="server" placeholder="Enter IFSC CODE"></asp:TextBox>
           </div>
          </form>
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

