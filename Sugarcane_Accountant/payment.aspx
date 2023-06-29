<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcane_Accountant/farmer.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Sugarcane_Accountant_payment" %>

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
    <div>
    <div class="content-wrapper">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-12">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Search Farmar</div>
           <hr>
            <form>
           <div class="form-group">
            <label for="input-1">Enter Code</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtbcode" class="form-control" runat="server" placeholder="Enter Your Code" ></asp:TextBox>
           </div>

      <asp:Label ID="lblcode" runat="server"></asp:Label>

                <div class="form-group">
           <%-- <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Button ID="btnview" runat="server" Text="view" onclick="btnview_Click" class="btn btn-light px-5" />
          </div>
                
                </div>
             </div>
          </div>
        </div>
        <div id='printMe'>
        <div class="tit">

            
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="lbltitle" runat="server" Text="Payment Slip" Font-Bold="true" Font-Size="XX-Large" ForeColor="white"  ></asp:Label>
               
        </div>
    <%--FORMs--%>

        <div class="clearfix"></div>
	
  <div class="content-wrapper2">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-6">
         <div class="card">
           <div class="card-body">
               <div ="bill">
         
            <form>
                <div class="form-group">
            <label for="input-1">Farmer ID</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtfid" class="form-control" runat="server" ReadOnly="true" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-1">Booking ID</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtbkid" class="form-control" runat="server" ReadOnly="true" ></asp:TextBox>
           </div>

           <div class="form-group">
            <label for="input-1">Name</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtnm" class="form-control" runat="server" placeholder="Enter Your Name" ReadOnly="true" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-2">Village</label>
            <%--<input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtvil" class="form-control" runat="server" placeholder="Enter Your Village" ReadOnly="true" ></asp:TextBox>
           </div>
           
            <div class="form-group">
            <label for="input-5">mobile no.</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtmono" class="form-control" runat="server" placeholder="Enter mobile no " ReadOnly="true" ></asp:TextBox>
           </div>

                  <div class="form-group">
            <label for="input-5">land in hectors</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtland" class="form-control" runat="server" ReadOnly="true" ></asp:TextBox>
           </div>

                 <div class="form-group">
            <label for="input-5">Sugarcane variety</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtsuva" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
           </div>
          
            

               

           <div class="form-group py-2">
             <div class="icheck-material-white">

            </div>
           </div>
          
                
                
          <%--</form>--%>
         </div>
         
               
           </div></div>
      </div>


        
      <div class="col-lg-6">
        <div class="card">
           <div class="card-body">
          
            <%--<form>--%>
           
           

         
           
              

                <div class="form-group">
            <label for="input-5">bank name</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtbanknm" class="form-control" runat="server" placeholder="Bank Name " ReadOnly="true" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-5">account no.</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtacno" class="form-control" runat="server" placeholder="Account No" ReadOnly="true" ></asp:TextBox>
           </div>
               
                <div class="form-group">
            <label for="input-4">total weight</label>
            <%--<input type="text" class="form-control" id="input-4" placeholder="Enter Password">--%>
               <asp:TextBox ID="txtwe" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
           </div>
          

                  <div class="form-group">
            <label for="input-5">rate</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtrate" class="form-control" runat="server" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-5">total</label>
      <asp:Button ID="btnclick"  runat="server" OnClick="btnclick_Click" class="btn btn-light px-5" Text="total click"  />
                </div>
                 <div class="form-group">
            <label for="input-5">total rs</label>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txttotal" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
           </div>

              

               <%-- <div class="form-group">
            <label for="input-5">Date </label>
               <asp:TextBox ID="txtdate" class="form-control" runat="server" type="date" ></asp:TextBox>
           </div>--%>

                    <asp:HiddenField ID="Hidden_slip_no" runat="server" />


               <div class="form-group py-2">
             <div class="icheck-material-white">

            </div>
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
            </div>
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->


<%--        buttons--%>
         <div class="col-lg-6">
        <%--<div class="card">
           <div class="card-body">--%>
         <div class="form-group">
               &nbsp&nbsp&nbsp <asp:Button ID="btnsend" runat="server" onclick="btnsend_Click"  Text="send" class="btn btn-light px-5" />&nbsp&nbsp&nbsp
          </div>
 </div>
     

         
    </div>


</asp:Content>

