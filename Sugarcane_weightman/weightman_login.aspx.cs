using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from weightman_registration where @weightman_id=contact_no and @weightman_password=aadhar_no", con);
        cmd.Parameters.AddWithValue("@weightman_id", txtid.Text);
        cmd.Parameters.AddWithValue("@weightman_password", txtpass.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["unm"] = txtid.Text;
            Response.Redirect("weightslip.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Your username and Password is incorrect');", true);
        }
        con.Close();
    }
}