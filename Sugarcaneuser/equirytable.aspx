<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcaneuser/farmer.master" AutoEventWireup="true" CodeFile="equirytable.aspx.cs" Inherits="Sugarcaneuser_equirytable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Enquiry Details</h5>
			  <div class="table-responsive">
              <table class="table table-bordered">
            <asp:GridView ID="GridView1" class="table table-bordered" AutoGenerateColumns="false" runat="server">


                <Columns>
                    <asp:TemplateField>

                        <HeaderTemplate>Farmer ID Number</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblslipno" runat="server" Text='<%# Eval("farmer_id") %>'></asp:Label>
                    
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
                            <asp:Label ID="lblvill" runat="server" Text='<%# Eval("farmer_village") %>'></asp:Label>
                          
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Mobile no</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbltal" runat="server" Text='<%# Eval("farmer_mobileno") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Query</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblsuvr" runat="server" Text='<%# Eval("farmer_query") %>'></asp:Label>
                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Status</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblwt" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                           
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

