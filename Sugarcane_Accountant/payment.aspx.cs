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

public partial class Sugarcane_Accountant_payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnview_Click(object sender, EventArgs e)
    {

        SqlCommand cm = new SqlCommand("select * from payment where bookingid=@bookid", cn);
        cm.Parameters.AddWithValue("@bookid", txtbcode.Text);
        cn.Open();
        SqlDataReader da = cm.ExecuteReader();

        if (da.HasRows)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Payment already Paid ');", true);

        }
        else
        {
            cn.Close();
            SqlCommand srcmd = new SqlCommand("select booking.farmer_id,booking.bookingid,sugarcane_weight_slip.sugarcane_weight,Booking.full_name,Booking.village,Booking.mobile_no,Booking.land_in_hectares,Booking.sugaecane_variety,Booking.bank_name,Booking.account_no from Booking inner join sugarcane_weight_slip on Booking.bookingid = sugarcane_weight_slip.bookingid  where booking.bookingid=@bookid", cn);
            srcmd.Parameters.AddWithValue("@bookid", txtbcode.Text);

            cn.Open();
            SqlDataReader dr = srcmd.ExecuteReader();

            if (dr.Read())
            {
                txtbkid.Text = dr["bookingid"].ToString();
                txtfid.Text = dr["farmer_id"].ToString();
                txtnm.Text = dr["full_name"].ToString();
                txtvil.Text = dr["village"].ToString();
                txtbanknm.Text = dr["bank_name"].ToString();
                txtacno.Text = dr["account_no"].ToString();
                txtmono.Text = dr["mobile_no"].ToString();
                txtland.Text = dr["land_in_hectares"].ToString();
                txtsuva.Text = dr["sugaecane_variety"].ToString();
                txtwe.Text = dr["sugarcane_weight"].ToString();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Code Not available ');", true);
            }

            cn.Close();
        }

    }


    protected void btnsend_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("payment_slip", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@farmerid", txtfid.Text);
        cmd.Parameters.AddWithValue("@bookingid", txtbkid.Text);
        cmd.Parameters.AddWithValue("@farmer_name", txtnm.Text);
        cmd.Parameters.AddWithValue("@village", txtvil.Text);
        cmd.Parameters.AddWithValue("@mobile_no", txtmono.Text);
        cmd.Parameters.AddWithValue("@sugarcane_variety", txtsuva.Text);
        cmd.Parameters.AddWithValue("@sugartone", txtwe.Text);
        cmd.Parameters.AddWithValue("@land_in_hectors", txtland.Text);
        cmd.Parameters.AddWithValue("@bank_name", txtbanknm.Text);
        cmd.Parameters.AddWithValue("@rate", txtrate.Text); 
        cmd.Parameters.AddWithValue("@total", txttotal.Text);
        cmd.Parameters.AddWithValue("@account_no", txtacno.Text);


        try
        {
            cn.Open();
            object obj = cmd.ExecuteScalar();
            Hidden_slip_no.Value = obj.ToString();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            cn.Close();
        }



        paymentstatus();



        string farmerid = txtfid.Text.ToString();
        string bookingid = txtbkid.Text.ToString();
        string slipno = Hidden_slip_no.Value;
        string nm = txtnm.Text.ToString();
        string mobno = txtmono.Text.ToString();
        string vill = txtvil.Text.ToString();
        string sugtone = txtwe.Text.ToString();
        string land = txtland.Text.ToString();
        string banknm = txtbanknm.Text.ToString();
        string sucvar = txtsuva.Text.ToString();
        string rate = txtrate.Text.ToString();
        string accono = txtacno.Text.ToString();
        string total = txttotal.Text.ToString();



        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.


                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td align='center' style='background-color: red' colspan = '2'><b><h1>Sugarcane Farming</h1><b><h2>Payment Slip</h2></b></td></tr>");
                sb.Append("<tr><td colspan = '2'></td></tr>");
                sb.Append("<tr><td><b>Slip No: </b>");
                sb.Append(slipno);
                sb.Append("<tr><td><b>Farmer ID: </b>");
                sb.Append(farmerid);
                sb.Append("<tr><td><b>Booking ID: </b>");
                sb.Append(bookingid);
                sb.Append("</td><td align = 'right'><b>Date: </b>");
                sb.Append(DateTime.Now);
                sb.Append("<tr><td><b>Name: </b>");
                sb.Append(nm);
                sb.Append("</td><td align = 'right'><b>mobile no:</b>");
                sb.Append(mobno);
                sb.Append("<tr><td><b>Village: </b>");
                sb.Append(vill);
                sb.Append("<tr><td align = 'right'><b>total weight: </b>");
                sb.Append(sugtone);
                sb.Append("</td><td><b>land in hector: </b>");
                sb.Append(land);
                sb.Append("<tr><td align = 'right'><b>bank name: </b>");
                sb.Append(banknm);
                sb.Append("<tr><td><b>Paid Amount: </b>");
                sb.Append(total);
                sb.Append("<tr><td align = 'right'><b>Rate: </b>");
                sb.Append(rate);
                sb.Append("<tr><td><b>Account no: </b>");
                sb.Append(accono);
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

    protected void btnclick_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtwe.Text);
        int b = Convert.ToInt32(txtrate.Text);

        int c = a * b;
        txttotal.Text = Convert.ToString(c);
    }

    void paymentstatus()
    {
        SqlCommand cmd = new SqlCommand("update booking set payment_status='paid' where bookingid=@updatepaid", cn);
        cmd.Parameters.AddWithValue("@updatepaid", txtbkid.Text);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}
