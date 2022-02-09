using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class aspDotNet : System.Web.UI.Page
    {
        int price ;
        int quantity;
        int[,] array_bill = new int[9, 4];
        int total_X = 0;
        Boolean Unit_status;
        Boolean Price_status; 

        protected void Page_Load(object sender, EventArgs e)
        {
            // The following code overrides the existing value of the row
           // this.myTable.Rows[1].Cells[0].InnerText = "Test of dynamic update";
        }

        protected void addrow_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // String h = this.myTable.Rows[1].Cells[0].InnerText;
                string text = "";
                string textInvoice = "";

                //for (int i = 1; i <= 5; i++)
                //{
                //    TextBox tb = FindControl("TextBox" + i.ToString()) as TextBox;
                //    if (tb != null)
                //    {
                //        text += tb.Text + "<br>";
                //    }
                //}
                // CODE FOR OBTAINING THE Invoice list items TABLE VALUES [STARTS]
                

                for (int i = 1; i < 7; i++)
                {
                    int total = 1;

                    if ( true) {
                        for (int j = 1; j < 5; j++)
                        {


                            TextBox tbINVOICE = FindControl("TextBox" + i.ToString() + j.ToString()) as TextBox;
                            //Response.Write("TextBox" + i.ToString() + j.ToString() + " INSIDE LOOP");
                            if (tbINVOICE.Text != "" && tbINVOICE.Text != " " && tbINVOICE.Text != null)
                            {
                                //int temp = Convert.ToInt32(tbINVOICE.Text);
                                try
                                {
                                    if (j == 3) {
                                        price = Convert.ToInt32(tbINVOICE.Text);


                                        Price_status = true;
                                        array_bill[i, j] = price;
                                    }
                                    if (j == 4)
                                    {
                                        quantity = Convert.ToInt32(tbINVOICE.Text);
                                        array_bill[i, j] = quantity;
                                        Unit_status = true;
                                    }

                                    if (Price_status == true && Unit_status == true)
                                    {
                                        total_X = quantity * price;
                                        array_bill[i, 2] = total;
                                        textInvoice += "NEW ARRAY" + "total_X" + "";
                                        Price_status = false;
                                        Unit_status = false;
                                    }


                                    Response.Write("\n Q: " + quantity + "P: " + price);
                                    Response.Write(array_bill[i, j] + "\n");

                                }
                                catch (Exception exc)
                                {
                                    // Response.Write("Error " + exc.ToString());
                                }
                                finally { }

                                textInvoice += tbINVOICE.Text + "&emsp;";



                            }
                            else if (String.IsNullOrEmpty(tbINVOICE.Text))
                            {
                                textInvoice += "<b>" + "*NULL*" + "</b>";
                            }

                        }
                        textInvoice += "Total OLD:" + total;
                        textInvoice += "<br>";
                    }
                }
                // CODE FOR OBTAINING THE Invoice list items TABLE VALUES [ENDS]

                //Response.Write(text);
                Response.Write(textInvoice);
            }
            }
    }
}