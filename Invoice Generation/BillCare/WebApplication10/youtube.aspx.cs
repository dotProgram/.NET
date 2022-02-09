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
using iTextSharp.text.html;//XMLWorkerHelper
using iTextSharp.text.html.simpleparser;

namespace WebApplication10
{
    public partial class youtube : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string companyName = "William Bill Gates";
            int orderNo = 1234;
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[5] {
                            new DataColumn("ProductId", typeof(string)),
                            new DataColumn("Product", typeof(string)),
                            new DataColumn("Price", typeof(int)),
                            new DataColumn("Quantity", typeof(int)),
                            new DataColumn("Total", typeof(int))});
            dt.Rows.Add(101, "Laptop", 200, 5, 1000);
            dt.Rows.Add(102, "Dell Mouse", 400, 2, 800);
            dt.Rows.Add(103, "Keyboard", 300, 3, 900);
            dt.Rows.Add(104, "UPS", 550, 2, 1100);
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.font='Segoe UI'
                    // sb.Append("<font='Segoe UI'>");
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2' style='background-color:pink'>");
                    sb.Append("<tr><td align='center' color='steelblue' style='background-color: blue' colspan = '2'><h2>Order Sheet</h2></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Order No: </b>");
                    sb.Append(orderNo);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>Client: </b>");
                    sb.Append(companyName);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    //   sb.Append("<font='Segoe UI'>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1' bgcolor='white'");
                    sb.Append("<tr bgcolor='#59d'");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
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
                    sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'><b>Total</b></td>");
                    sb.Append("<td>$");
                    sb.Append(dt.Compute("sum(Total)", ""));
                    sb.Append("</td>");
                    sb.Append("</tr></table>");
                   

                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=BillCare_Invoice_" + orderNo + ".pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                   // ExportToPdf(dt);
                }
            }
        }
        // NEW PDF CODE FUN
        /*
        public void ExportToPdf(DataTable dt)
        {
             
            Document document = new Document();
            PdfWriter writer = PdfWriter.GetInstance(document, new FileStream("d://sample.pdf", FileMode.Create));
            document.Open();
            iTextSharp.text.Font font5 = iTextSharp.text.FontFactory.GetFont(FontFactory.HELVETICA, 5);

            PdfPTable table = new PdfPTable(dt.Columns.Count);
            PdfPRow row = null;
            float[] widths = new float[] { 4f, 4f, 4f, 4f };

            table.SetWidths(widths);

            table.WidthPercentage = 100;
            int iCol = 0;
            string colname = "";
            PdfPCell cell = new PdfPCell(new Phrase("Products"));

            cell.Colspan = dt.Columns.Count;

            foreach (DataColumn c in dt.Columns)
            {

                table.AddCell(new Phrase(c.ColumnName, font5));
            }

            foreach (DataRow r in dt.Rows)
            {
                if (dt.Rows.Count > 0)
                {
                    table.AddCell(new Phrase(r[0].ToString(), font5));
                    table.AddCell(new Phrase(r[1].ToString(), font5));
                    table.AddCell(new Phrase(r[2].ToString(), font5));
                    table.AddCell(new Phrase(r[3].ToString(), font5));
                }
            } document.Add(table);
            document.Close();
        }

        //END
         */

        protected void Button2_Click(object sender, EventArgs e)
        {
            //ExportToPdf();
        }
    }
}