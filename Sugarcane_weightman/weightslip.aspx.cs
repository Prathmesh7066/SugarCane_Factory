using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Text;

public partial class booking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = DateTime.Now.ToShortDateString();

    }

    protected void btncode_Click(object sender, EventArgs e)
    {

        SqlCommand cm = new SqlCommand("select * from sugarcane_weight_slip where bookingid=@bookid", con);
        cm.Parameters.AddWithValue("@bookid", txtcode.Text);
        con.Open();
        SqlDataReader da = cm.ExecuteReader();

        if (da.HasRows)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('slip already saved ');", true);

        }
        else
        {
            con.Close();

            //SqlDataReader myReader = null;
            SqlCommand cmd = new SqlCommand("select * from booking where bookingid=@code", con);
            cmd.Parameters.AddWithValue("@code", txtcode.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())

            {
                txtbid.Text = dr["bookingid"].ToString();
                txtnm.Text = dr["full_name"].ToString();
                txtvil.Text = dr["village"].ToString();
                txttal.Text = dr["taluka"].ToString();
                txtgrno.Text = dr["group_no"].ToString();
                txtcuscat.Text = dr["customer_caregory"].ToString();
                txtsuva.Text = dr["sugaecane_variety"].ToString();
                hiddern_farmer_id.Value = dr["farmer_id"].ToString();

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Booking ID Not Found');", true);
            }
            con.Close();
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("weightslip", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@farmer_name", txtnm.Text);
        cmd.Parameters.AddWithValue("@village", txtvil.Text);
        cmd.Parameters.AddWithValue("@taluka", txttal.Text);
        cmd.Parameters.AddWithValue("@group_no", txtgrno.Text);
        cmd.Parameters.AddWithValue("@sugarcane_variety", txtsuva.Text);
        cmd.Parameters.AddWithValue("@customer_category", txtcuscat.Text);
        cmd.Parameters.AddWithValue("@sugarcane_weight", txtwh.Text);
        cmd.Parameters.AddWithValue("@vechical_type", txtvechicalty.Text);
        cmd.Parameters.AddWithValue("@vechical_no", txtvehicaln.Text);
        cmd.Parameters.AddWithValue("@slip_date", txtdate.Text);
        cmd.Parameters.AddWithValue("@bookingid", txtbid.Text);
        cmd.Parameters.AddWithValue("@farmerid", hiddern_farmer_id.Value);
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();

        //identity Scope
        try
        {
            con.Open();
            object obj = cmd.ExecuteScalar();
            Hidden_slip_no.Value = obj.ToString();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }



        //Dummy data for Invoice (Bill).
        string companyName = "SuagrCane Weight Slip";
        string slipno = Hidden_slip_no.Value;
        string nm = txtnm.Text.ToString();
        string vill = txtvil.Text.ToString();
        string talu = txttal.Text.ToString();
        string custcat = txtcuscat.Text.ToString();
        string grno = txtgrno.Text.ToString();
        string sucvar = txtsuva.Text.ToString();
        string sucwet = txtwh.Text.ToString();
        string vecty = txtvechicalty.Text.ToString();
        string vecno = txtvehicaln.Text.ToString();

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.


                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td align='center' style='background-color: red' colspan = '2'><b><h2>Weight sugercane Slip</h2></b></td></tr>");
                sb.Append("<tr><td colspan = '2'></td></tr>");
                sb.Append("<tr><td><b>Slip No: </b>");
                sb.Append(slipno);
                sb.Append("</td><td align = 'right'><b>Date: </b>");
                sb.Append(DateTime.Now);
                sb.Append("<tr><td><b>Name: </b>");
                sb.Append(nm);
                sb.Append("</td><td align = 'right'><b>Vechical type: </b>");
                sb.Append(vecty);
                sb.Append("<tr><td><b>Village: </b>");
                sb.Append(vill);
                sb.Append("</td><td align = 'right'><b>Vechical Number: </b>");
                sb.Append(vecno);
                sb.Append("<tr><td><b>Taluka: </b>");
                sb.Append(talu);
                sb.Append("</td><td align = 'right'><b>Group Number: </b>");
                sb.Append(grno);
                sb.Append("<tr><td><b>Sugarcane weight: </b>");
                sb.Append(sucwet);
                sb.Append("</td><td align = 'right'><b>Sugarcane variety: </b>");
                sb.Append(sucvar);
                sb.Append("<tr><td><b>Sugarcane weight: </b>");
                sb.Append(sucwet);
                sb.Append("</td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Export HTML String as PDF.
                StringReader sr = new StringReader(sb.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                htmlparser.Parse(sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + slipno + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
                

            }
        }

        
    }
   
}

        
    
   
