<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcaneuser/farmer.master" AutoEventWireup="true" CodeFile="weight_slip_details.aspx.cs" Inherits="Sugarcaneuser_weight_slip_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Sugarcane Weight Slip </h5>
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

                        <HeaderTemplate>Farmer Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblfrnm" runat="server" Text='<%# Eval("farmer_name") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Village</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblvill" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Taluka</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbltal" runat="server" Text='<%# Eval("taluka") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Sugarcane Variety</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblsuvr" runat="server" Text='<%# Eval("sugarcane_variety") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Sugarcane Weight</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblwt" runat="server" Text='<%# Eval("sugarcane_weight") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Sugarcane Category</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblscat" runat="server" Text='<%# Eval("customer_category") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Vechical Type</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblvecty" runat="server" Text='<%# Eval("vechical_type") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Vechical Number</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblvecnm" runat="server" Text='<%# Eval("vechical_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Group No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblgrno" runat="server" Text='<%# Eval("group_no") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>date</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbldate" runat="server" Text='<%# Eval("slip_date") %>'></asp:Label>
                           
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

