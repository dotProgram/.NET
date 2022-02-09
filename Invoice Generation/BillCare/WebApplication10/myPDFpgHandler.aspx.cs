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
using iTextSharp.tool;
using iTextSharp.text.pdf;
using iTextSharp.text.html;//XMLWorkerHelper
using iTextSharp.text.html.simpleparser;

namespace WebApplication10
{
   private void ExportToPDF()  
{  
    //set the cotent type to PDF  
    Response.ContentType = "application/pdf";  
    Response.AddHeader("content-disposition", "attachment;filename=Products.pdf");  
    Response.Cache.SetCacheability(HttpCacheability.NoCache);  
    StringWriter sw = new StringWriter();  
    HtmlTextWriter hw = new HtmlTextWriter(sw);         

    //hide the link button column  
    gvProducts.Columns[4].Visible = false;     

    //Outputs server control content to a provided System.Web.UI.HtmlTextWriter  
    gvProducts.RenderControl(hw);         

    //load the html content to the string reader  
    StringReader sr = new StringReader(sw.ToString());     

    //HTMLDocument  
    //Document(Rectangle pageSize, float marginLeft, float marginRight, float marginTop, 
          float marginBottom)  
    Document document = new Document(PageSize.A4, 10f, 10f, 10f, 0f);     

    //iText class that allows you to convert HTML to PDF  
    HTMLWorker htmlWorker = new HTMLWorker(document);     

    //When this PdfWriter is added to a certain PdfDocument,   
    //the PDF representation of every Element added to this Document will be written to the outputstream.  
    PdfWriter.GetInstance(document, Response.OutputStream);     

    //open the document  
    document.Open();   
    htmlWorker.Parse(sr);     

    //close the document stream  
    document.Close();     

    //write the content to the response stream  
    Response.Write(document);  
    Response.End();  
} 
    protected void Button1_Click(object sender, EventArgs e)
    {
        ExportDataTableToPdf();
    }
    public class myPDFpgHandler : PdfPageEventHelper
    {
        PdfContentByte pdfContent;
        PdfTemplate template;
        protected BaseFont helv;
        BaseFont bf = null;
      

        public override void OnEndPage(iTextSharp.text.pdf.PdfWriter writer, iTextSharp.text.Document document)
        {
            Phrase p1Header = new Phrase("ABCDEFGHIJKL ", FontFactory.GetFont("verdana", 10));
            Phrase p2address = new Phrase("#07 Shriya Apartment,Karve Nagar,Kothrud,Pune", FontFactory.GetFont("TimesNewRoman", 8));
            iTextSharp.text.Image imgPDF = iTextSharp.text.Image.GetInstance(HttpRuntime.AppDomainAppPath + "\\Images\\football.jpg");
            PdfPTable pdfTab = new PdfPTable(3);
            //PdfPCell pdfCell2 = new PdfPCell(p1Header);
            imgPDF.ScalePercent(35.0F);
            imgPDF.SetAbsolutePosition(document.PageSize.Width - 50.0F - 500.0F, document.PageSize.Height - 780.0F - 300.6F);
            //imgPDF.SetAbsolutePosition(document.PageSize.Width - 40.0F - 560.0F, document.PageSize.Height - 780.0F - 300.6F); OO
            PdfPCell pdfCell1 = new PdfPCell(imgPDF);
            PdfPCell pdfCell2 = new PdfPCell(p1Header);
            PdfPCell pdfCell3 = new PdfPCell(p2address);
            pdfCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            pdfCell2.HorizontalAlignment = Element.ALIGN_CENTER;
            pdfCell3.HorizontalAlignment = Element.ALIGN_RIGHT;
            pdfCell1.Border = 0;
            pdfCell2.Border = 0;
            pdfCell3.Border = 0;
            pdfCell1.Indent = 0;
            pdfCell2.Indent = 0;
            pdfCell3.Indent = 0;

            pdfTab.AddCell(pdfCell1);
            pdfTab.AddCell(pdfCell2);
            pdfTab.AddCell(pdfCell3);
            pdfTab.SpacingAfter = 40f;
            pdfTab.TotalWidth = document.PageSize.Width - 20;

            BaseFont bfTimes = BaseFont.CreateFont(BaseFont.TIMES_ROMAN, BaseFont.CP1252, false);
            Font times = new Font(bfTimes, 12, Font.ITALIC);

            pdfTab.WriteSelectedRows(0, -1, 10, document.PageSize.Height - 5, writer.DirectContent);
            //pdfTab.WriteSelectedRows(0, -1, 10, document.PageSize.Height - 15, writer.DirectContent); OO
            pdfContent = writer.DirectContent;
            pdfContent.MoveTo(30, document.PageSize.Height - 50);
            pdfContent.LineTo(document.PageSize.Width - 50, document.PageSize.Height - 50);
            //pdfContent.LineTo(document.PageSize.Width - 50, document.PageSize.Height - 50);OO
            pdfContent.Stroke();
        }
        public override void OnStartPage(PdfWriter writer, Document document)
        {
            Phrase p1Footer = new Phrase("Shriya Apartments", FontFactory.GetFont("verdana", 8));
            //iTextSharp.text.Image imgPDF = iTextSharp.text.Image.GetInstance(HttpRuntime.AppDomainAppPath + "\\Images\\logo.gif");
            PdfPTable pdfTabFooter = new PdfPTable(1);
            //PdfPCell pdfCell1 = new PdfPCell(imgPDF);
            PdfPCell pdfCell2 = new PdfPCell(p1Footer);
            //pdfCell1.HorizontalAlignment = Element.ALIGN_LEFT;
            pdfCell2.HorizontalAlignment = Element.ALIGN_RIGHT;
            //pdfCell1.Border = 0;
            pdfCell2.Border = 0;
            //pdfTab.AddCell(pdfCell1);
            pdfTabFooter.TotalWidth = 316f;
            float[] cfWidths = new float[] { 2f };
            pdfTabFooter.SetWidths(cfWidths);
            pdfTabFooter.AddCell(pdfCell2);
            //pdfTabFooter.TotalWidth = document.PageSize.Width - 20;
            pdfTabFooter.WriteSelectedRows(0, -1, 10, pdfTabFooter.TotalHeight, writer.DirectContent);
            //pdfTabFooter.WriteSelectedRows(0, -1, 10, document.PageSize.Height - 15, writer.DirectContent);
            document.SetMargins(document.LeftMargin, document.RightMargin, document.TopMargin + 30, document.BottomMargin + 30);
            pdfContent = writer.DirectContent;
            pdfContent.MoveTo(30, document.PageSize.Height - 50);
            //pdfContent.LineTo(document.PageSize.Width - 40, document.PageSize.Height - 40);
            pdfContent.Stroke();
        }
 
    }
}