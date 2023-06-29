<%@ Page Title="" Language="C#" MasterPageFile="~/Sugarcane_Accountant/farmer.master" AutoEventWireup="true" CodeFile="fillmantable.aspx.cs" Inherits="Sugercaneadmin_fillmantable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Fillman Details </h5>
			  <div class="table-responsive">
              <table class="table table-bordered">
            <asp:GridView ID="GridView1" class="table table-bordered" AutoGenerateColumns="false" runat="server">


                <Columns>
                    <asp:TemplateField>

                        <HeaderTemplate>Fillman ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("fillman_id") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Fillman Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("fillman_name") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Contact No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("contact_no") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Email ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("email_id") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>Aadhar No</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("aadhar_no") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>village</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                           <%-- <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField>

                        <HeaderTemplate>Photo ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" ImageUrl='<%# Eval("photo_id") %>' Height="100px" Width="100px" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <HeaderTemplate>View</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnverify" runat="server" Text="Verify" class="btn btn-light px-3" />
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

