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
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["unm"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            lblnm.Text = Session["unm"].ToString();
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("unm");
        //Session.Remove("password");
        Response.Redirect("http://localhost:51920/website/Home.aspx");
    }
}
