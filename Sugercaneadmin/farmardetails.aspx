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
              <h5 class="card-title">FARMER PROFILE DETAILS </h5>
			  <div class="table-responsive">
              <table class="table table-bordered">
            <asp:GridView ID="GridView1" class="table table-bordered" AutoGenerateColumns="false" runat="server">


                <Columns>
                    <asp:TemplateField>

                        <HeaderTemplate>Farmer ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblfid" runat="server" Text='<%# Eval("farmer_id") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Farmer Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("farmer_name") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField>

                        <HeaderTemplate>Village</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Village") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                  

                    <asp:TemplateField>

                        <HeaderTemplate>Taluka</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("taluka") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Land In Hector</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("land_in_hector") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Aadhar Number</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("adhar_number") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Mobile No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Photo ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' Height="100px" Width="100px" runat="server" />
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



      <%--Gridview--%>

   
     
</asp:Content>

