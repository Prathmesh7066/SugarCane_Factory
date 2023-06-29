<%@ Page Title="" Language="C#" MasterPageFile="farmer.master" AutoEventWireup="true" CodeFile="farmardetails.aspx.cs" Inherits="table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">WEIGHTSLIP DETAILS </h5>
			  <div class="table-responsive">
              <table class="table table-bordered">
            <asp:GridView ID="GridView1" class="table table-bordered"  runat="server">


               
            </asp:GridView>
              </table>
            </div>
            </div>
          </div>
        </div>
        </div>
      </div><!--End Row-->



      <%--Gridview--%>

   
     
</asp:Content>

