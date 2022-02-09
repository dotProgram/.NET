using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using System.IO;
using System.Text.RegularExpressions;
using iTextSharp.text.html.simpleparser;



public partial class WebForm7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreatePDF_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=FileName.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        StringWriter sw = new StringWriter();

        HtmlTextWriter w = new HtmlTextWriter(sw);
        print.RenderControl(w);

        string htmWrite = sw.GetStringBuilder().ToString();
        htmWrite = Regex.Replace(htmWrite, "</?(a|A).*?>", "");
        htmWrite = htmWrite.Replace("\r\n", "");
        StringReader reader = new StringReader(htmWrite);

        Document doc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        string pdfFilePath = Server.MapPath(".") + "/PDFFiles";

        HTMLWorker htmlparser = new HTMLWorker(doc);
        PdfWriter.GetInstance(doc, Response.OutputStream);

        doc.Open();
        try
        {
            htmlparser.Parse(reader);
            doc.Close();
            Response.Write(doc);
            Response.End();
        }
        catch (Exception ex)
        { }
        finally
        {
            doc.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text.ToString();
    }
}
