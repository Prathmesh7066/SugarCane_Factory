<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcaneuser/farmer.master" AutoEventWireup="true" CodeFile="booking_table.aspx.cs" Inherits="Sugarcaneuser_booking_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">FARMER BOOKING </h5>
			  <div class="table-responsive">
              <table class="table table-bordered">
            <asp:GridView ID="GridView1" class="table table-bordered" AutoGenerateColumns="false" runat="server">


                <Columns>
                    <asp:TemplateField>

                        <HeaderTemplate>Booking ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="iblbookid" runat="server" Text='<%# Eval("bookingid") %>'></asp:Label>
                    
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Threshing Season Year</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblth" runat="server" Text='<%# Eval("threshing_season_year") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Customer Category</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblcst" runat="server" Text='<%# Eval("customer_caregory") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Farmer Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblfnm" runat="server" Text='<%# Eval("full_name") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Village</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblvlg" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Taluka</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbltal" runat="server" Text='<%# Eval("taluka") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>District</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbldis" runat="server" Text='<%# Eval("district") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Mobile No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblmob" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Aadhar Card No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbladh" runat="server" Text='<%# Eval("addhar_card_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Aadhar Card No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblpancrd" runat="server" Text='<%# Eval("addhar_card_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Pan Card No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblpan" runat="server" Text='<%# Eval("pan_card_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Bank Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblbank" runat="server" Text='<%# Eval("bank_name") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Branch</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblbranch" runat="server" Text='<%# Eval("branch") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Account No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblacc" runat="server" Text='<%# Eval("account_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Village of Sugarcane_field</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblvillsu" runat="server" Text='<%# Eval("village_of_sugarcane_field") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Group No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblgp" runat="server" Text='<%# Eval("group_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Water Supply</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblws" runat="server" Text='<%# Eval("water_supply") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Land in Hectares</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblinh" runat="server" Text='<%# Eval("land_in_hectares") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Sugaecane Variety</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblsv" runat="server" Text='<%# Eval("sugaecane_variety") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Status</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Sugercane Complete</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblsc" runat="server" Text='<%# Eval("sugercanecomplete") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
                  <asp:HiddenField ID="HiddenField1" runat="server" />
              </table>
            </div>
            </div>
          </div>
        </div>
        </div>
      </div><!--End Row-->
</asp:Content>

