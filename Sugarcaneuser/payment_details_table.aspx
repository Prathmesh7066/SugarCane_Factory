<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcaneuser/farmer.master" AutoEventWireup="true" CodeFile="payment_details_table.aspx.cs" Inherits="Sugarcaneuser_payment_details_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Payment Details</h5>
			  <div class="table-responsive">
              <table class="table table-bordered">
            <asp:GridView ID="GridView1" class="table table-bordered" AutoGenerateColumns="false" runat="server">


                <Columns>
                    <asp:TemplateField>

                        <HeaderTemplate>Slip Number</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblslipno" runat="server" Text='<%# Eval("slip_no") %>'></asp:Label>
                    
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Booking ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblbokid" runat="server" Text='<%# Eval("bookingid") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Farmer Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblfrn" runat="server" Text='<%# Eval("farmer_name") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Village</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblvild" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Bank Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblbkn" runat="server" Text='<%# Eval("bank_name") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Account Number</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblacun" runat="server" Text='<%# Eval("account_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Sugarcane Weight</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblswt" runat="server" Text='<%# Eval("sugarton") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Rate</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblrate" runat="server" Text='<%# Eval("Rate") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Total Amount</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbltotam" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
                  
              </table>
            </div>
            </div>
          </div>
        </div>
        </div>
      </div><!--End Row-->
</asp:Content>

