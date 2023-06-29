using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sugercaneadmin_farmer_enquiry : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from farmerenquiry", con);
        con.Open();
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        con.Close();
    }

    protected void btnverify_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow r = (GridViewRow)btn.NamingContainer;



        Label l = (Label)r.FindControl("lblenq");
        HiddenField1.Value = l.Text;

        SqlCommand cmd = new SqlCommand("update farmerenquiry set status='solved' where enquiry_id=@eid", con);
        cmd.Parameters.AddWithValue("@eid", HiddenField1.Value);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        binddata();
    }
}