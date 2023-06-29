using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sugarcaneuser_booking_table : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddata();

        }

    }

    void binddata()
    {
        SqlCommand cmd = new SqlCommand("select * from booking where farmer_id='" + Session["unm"] + "'", con);
        con.Open();
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        con.Close();
    }


    protected void btncancel_Click(object sender, EventArgs e)
    {

        Button btn = sender as Button;
        GridViewRow r = (GridViewRow)btn.NamingContainer;

        Label l = (Label)r.FindControl("iblbookid");

        HiddenField1.Value = l.Text;

        SqlCommand cm = new SqlCommand("Delete from booking where bookingid= @bookingid", con);
        cm.Parameters.AddWithValue("@bookingid", HiddenField1.Value.ToString());
        con.Open();
        cm.ExecuteNonQuery();
        con.Close();
    }
}