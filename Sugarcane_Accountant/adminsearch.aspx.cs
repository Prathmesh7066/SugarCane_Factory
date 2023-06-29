using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sugercaneadmin_adminsearch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from farmer_registertbl where village=@village", con);
        cmd.Parameters.AddWithValue("@village", txtvill.Text);
        con.Open();
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        con.Close();

    }

}