using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class farmer : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblnm.Text = Session["unm"].ToString();
        DataTable dt = new DataTable();
        con.Open();
        SqlDataReader myReader = null;
        SqlCommand cmd = new SqlCommand("select * from accountant_registration where contact_no='" + Session["unm"] + "'", con);
        myReader = cmd.ExecuteReader();


        while (myReader.Read())
        {
            lblnm.Text = (myReader["accountant_name"].ToString());




        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    Session.Abandon();
            Session.Remove("unm");
            //Session.Remove("password");
            Response.Redirect("http://localhost:51920/website/Home.aspx");
        
    }
}
