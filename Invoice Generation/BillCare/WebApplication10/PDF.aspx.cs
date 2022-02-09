using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using iTextSharp.text;

using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data.SqlClient;
using System.Configuration;
public partial class pdfx : System.Web.UI.Page
{
    string reterivedClientNameGlobal;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        genInvoice();
    }
    private void genInvoice()
    {
/* ---------------- SQL CONNECTION TO GET CLIENT DETAILS------------------------*/
                          
        /* *****************************CODE Start ***************************/

     
        try
        {

            string clientID = "sdf3r3";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
            conn.Open();
            string ckeckuser = "select count(*) from db_clients where clientID = '" + clientID + "'";
          
            SqlCommand com = new SqlCommand(ckeckuser, conn);
           // SqlCommand com2 = new SqlCommand(totalRegistered, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //Response.Write("<br/>TRY Access No: " + count + "<br/>");
   
            if (temp == 1)
            {
                try { 
                 Response.Write("<font color='green'><b>INSIDE TRUE IF</b><br></font>");
                // string retClientNameQuery = "SELECT first_name from db_clients where clientID='" + clientID + "'";
                string retClientNameQuery = "SELECT * from db_clients where Id = 1";
                SqlCommand retClientNameCommand = new SqlCommand(retClientNameQuery, conn);


                    //************Single Value Return DQL Command
                                 // string reterivedClientNameLocal = retClientNameCommand.ExecuteScalar().ToString();
                    //************Single Value Return DQL Command


                    //Session["new"] = reterivedClientNameLocal;
                    // OBTAIN *************** MULTIPLE VALUES******************
                    using (SqlDataReader reader = retClientNameCommand.ExecuteReader())
                    {
                        reader.Read();
                        string client_first_name = reader["first_name"]?.ToString();
                        string client_last_name = reader["last_name"]?.ToString();
                        string country = reader["country"]?.ToString();
                        string state = reader["state"]?.ToString();
                        string city = reader["city"]?.ToString();
                        string street_1 = reader["street_1"]?.ToString();
                        string street_2 = reader["street_2"]?.ToString();
                        string pincode = reader["pincode"]?.ToString();

                        Response.Write("<font color='pink'><b>" + client_first_name +"  " + client_last_name +"</b><br></font>");
                        this.reterivedClientNameGlobal = client_first_name + " ";
                        this.reterivedClientNameGlobal += client_last_name + "<br>";
                        this.reterivedClientNameGlobal += street_1 + "<br>";
                        //this.reterivedClientNameGlobal += street_2 + "<br>";
                        this.reterivedClientNameGlobal += city.TrimEnd() + ", ";
                        this.reterivedClientNameGlobal += state + "<br>";
                        this.reterivedClientNameGlobal += country + "<br>";
                        this.reterivedClientNameGlobal += pincode + "<br>";
                    }




                   // Response.Write("<font color='red'><b>"+ reterivedClientNameLocal + "</b><br></font>");
                    //this.reterivedClientNameGlobal = reterivedClientNameLocal;
                    //Response.Write("<font color='orange'><b>Global Value" + reterivedClientNameGlobal + "</b><br></font>");
                   // this.reterivedClientNameGlobal = " " + "temp true";
                }
                catch (Exception exc)
                {
                    Response.Write("<font color='blue'> "+ exc.ToString() + " </ font ><br>");
                }




            }
            else
            {

                //this.reterivedClientNameGlobal = " " + "temp Falase";
                Response.Write("<font color='red'>ELSE LOOP<b></b><br></font>");
            }


            conn.Close();

        }
        catch (Exception exc)
        {
            //  Response.Write("<br/>DB Access No: " + count + "<br/>");
            // goto again;
            //Response.Write("<br/>Error " + exc.ToString() + "<br/>");
          //  this.reterivedClientNameGlobal += "inside Exception";
        }
        finally
        {

            //Response.Write("<font color='blue'>&nbsp;Query Executed</font>");
           //this.reterivedClientNameGlobal += "inside finally";
        }

        /* ***************************** CODE ENDS ************************** */
      

        /*PDF GEN CODE STARTS*/


        // string companyName2 = "Tour and Reavels";
        string clientName = this.reterivedClientNameGlobal;
        int orderNo = 1234;
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[6] {
                            new DataColumn("No.", typeof(string)),
                            new DataColumn("Product", typeof(string)),
                            new DataColumn("Discription", typeof(string)),
                            new DataColumn("Price", typeof(int)),
                            new DataColumn("Units", typeof(int)),
                            new DataColumn("Total", typeof(int))});


        //DATA FOR ENTRING THE TABLE ROW -- START
        dt.Rows.Add(101, "Sun Glasses", "Discription", 200, 5, 1000);
        dt.Rows.Add(102, "Jeans", "Discription", 400, 2, 800);
        dt.Rows.Add(103, "Trousers", "Discription", 300, 3, 900);
        dt.Rows.Add(104, "Shirts", "Discription", 550, 2, 1100);
        dt.Rows.Add(105, "PShirts", "CDiscription", 550, 2, 1100);

        //--------------// VIA FOR LOOP
        for (int i = 0; i <= 9; i++)
        {
            dt.Rows.Add(i, "PShirts", "CDiscription", 550, 2, 1100);
        }
        //DATA FOR ENTRING THE TABLE ROW -- Ends


        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();


                // sb.Append("<br />");
               

                //sb.Append("<h1 bgcolor='#0085c3' align='center' color='red'>Invoice</h1>");
                sb.Append("<table width='100%' ");
                sb.Append("<tr bgcolor='#666666'><td color='white' align='center'><h2 color='white'>Invoice</h2></td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Generate Invoice (Bill) Header.
                sb.Append("<table width='100%' cellspacing='0' cellpadding='3'>");
                //sb.Append("<tr bgcolor='#0085c3'><td color='white' align='center' style='background-color: red' colspan = '2'><b color='white'>Invoice</b></td></tr>");

                sb.Append("<tr><td><b>Order No: </b>");
                sb.Append(orderNo);
                sb.Append("</td><td align = 'right'><b>Date: </b>");
                sb.Append(DateTime.Now);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Client: </b><br/>");

                sb.Append("<font size='3' color='#464e55'>" + clientName + "</font><br/>");
                /*
                sb.Append("North Belford, California<br/>");
                sb.Append("192545<br/>");*/
                sb.Append("</td></tr>");
                sb.Append("</table>");


               
                sb.Append("<br />");
                sb.Append("<br />");
                sb.Append("<br />");
                sb.Append("<br />");
                sb.Append("<br />");


                //Generate Invoice (Bill) Items Grid.
                sb.Append("<table border = '.5'>");
                //sb.Append("<table width='100%' ");
                //sb.Append("<col width='50'>");
                // sb.Append("<col width='200'>");
                //sb.Append("<col width='130'>");
                // sb.Append("<col width='80'>");
                // sb.Append("<col width='50'>");
                sb.Append("<tr> <b>");// color='white' 
                int turn = 0;
                foreach (DataColumn column in dt.Columns)
                {
                    turn++;
                    if (turn == 1)
                    {
                        sb.Append("<th width='6%' bgcolor='#ededed' color='#011016' >");
                        sb.Append(column.ColumnName);
                        sb.Append("</th> ");

                    }

                    else if (turn == 4 || turn == 6)
                    {
                        sb.Append("<th width='10%' bgcolor='#ededed' color='#011016' >");
                        sb.Append(column.ColumnName);
                        sb.Append("</th> ");

                    }
                    else if (turn == 5)
                    {
                        sb.Append("<th width='6%' bgcolor='#ededed' color='#011016' >");
                        sb.Append(column.ColumnName);
                        sb.Append("</th> ");

                    }
                    else if (turn == 2)
                    {
                        sb.Append("<th width='20%' bgcolor='#ededed' color='#011016' >");
                        sb.Append(column.ColumnName);
                        sb.Append("</th> ");

                    }
                    else
                    {

                        sb.Append("<th bgcolor='#ededed' color='#011016' >");
                        sb.Append(column.ColumnName);
                        sb.Append("</th> ");
                    }
                }
                sb.Append("</b></tr>");
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<td>");
                        sb.Append(row[column]);
                        sb.Append("</td>");
                    }
                    sb.Append("</tr>");
                }
                // Enter Extra six ROWS
                for (int i = 0; i <= 15 - dt.Rows.Count; i++)
                {
                    sb.Append("<tr color='white'>");
                    for (int ik = 0; ik < dt.Columns.Count; ik++)
                    {
                        sb.Append("<td>");
                        sb.Append(".");
                        sb.Append("</td>");
                    }
                    sb.Append("</tr>");
                }
                // Enter Extra six ROWS ENDS


                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1); // ORIGINAL sb.Append(dt.Columns.Count - 1);
                sb.Append("'><b>Total</b></td>");
                sb.Append("<td>");
                sb.Append(dt.Compute("sum(Total)", ""));
                sb.Append("</td>");
                sb.Append("</tr></table>");



                //Export HTML String as PDF.
                StringReader sr = new StringReader(sb.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);

                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                //MY Lines
                PdfContentByte cb = new PdfContentByte(writer);
                BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1250, true);
                cb = new PdfContentByte(writer);
                bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1250, true);
                cb = writer.DirectContent;
                cb.BeginText();
                cb.SetFontAndSize(bf, 10);
                Rectangle pageSize = writer.PageSize;
                cb.SetTextMatrix(pageSize.GetLeft(180), 40);
                cb.ShowText("Thank you for choosing BillCare. © All Rights Reserved");

                cb.EndText();
                //End


                htmlparser.Parse(sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + orderNo + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
                
            }
        }
      
    }


}