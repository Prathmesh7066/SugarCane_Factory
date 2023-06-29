<%@ Page Title="" Language="C#" MasterPageFile="~/Sugercaneadmin/farmer.master" AutoEventWireup="true" CodeFile="adminsearch.aspx.cs" Inherits="Sugercaneadmin_adminsearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /*.content-wrapper{
            margin-right:310px;
            margin-left:416px;
        }*/
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
           <div class="card-title">Search Farmar</div>
           <hr>
            <form>
           <div class="form-group">
            <label for="input-1">Enter Village</label>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
                <asp:TextBox ID="txtvill" class="form-control" runat="server" placeholder="Enter Your Village" ></asp:TextBox>
           </div>

           <div class="form-group">
           <%-- <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" class="btn btn-light px-5" />
          </div>

              <%-- Gridview--%>
         <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Result </h5>
                <div class="table-responsive">
                   <table class="table table-bordered">
                <asp:GridView ID="GridView1" class="table table-bordered" runat="server">
                   

                </asp:GridView>
                       </table>
                </div>
                </div>
              </div>
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

</asp:Content>

