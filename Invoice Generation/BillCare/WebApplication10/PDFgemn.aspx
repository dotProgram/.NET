<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDFgemn.aspx.cs" Inherits="WebForm7" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Div1" runat="server">

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Name" Width="113px" />

        </div>
  <div id="print" runat="server">
    <h1><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#333333">Gold </span></h1>
         <div>
              <table>
                  <tr>
                      <td>
                         
                         
                         
                      </td>
                      <td>
                          
                      </td>
                 </tr>
                 <tr>
                     <td>Name: </td>
                     <td>
                         <asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                      <td>Designation: </td>
                     <td>Asst. Project Manager</td>
                 </tr>
                 <tr>
                      <td>Work Experience: </td>
                      <td>9 Years in IT</td>
                 </tr>
                 <tr>
                      <td>About: </td>
                     <td>
                         <p class="MsoNormal" style="margin-bottom:11.25pt;line-height:normal">
                             <span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#333333">Gold price has gained 16.5% for 3 months. The precious metal has demonstrated a record quarterly increase since 1986. Global markets stocks, bonds, and commodities rally has continued for the sixth consecutive week, but the gold price increase is a clear indication that investors have not yet got rid of all their fears. Demand for SPDR Gold Shares instruments, the world&#39;s largest ETF in gold, has tested maximum since December 2013. Traders continue to bet on further growth. Gold had been felling for 5 consecutive years. It was a period of recovery of the US economy and the dollar&#39;s steady growth. But now the possible premature tightening monetary policy by Fed threatens the recent achievements. The risk of another increase of a key Federal Reserve rate this year - that is what makes investors choose gold. The metal is also popular in the market of futures. According to CFTC data, the number of contracts for the growth of quotations has exceeded 161 thousand. Meanwhile, 
                             earlier in the year when gold price has already grown, many people have been waiting its fall. Futures contracts on prices reduce dominated – the total number was about 10 thousand.<br />
                             <br />
                             Jeffrey Gundlach, the head of Doubleline Capital, predicts that gold price will have risen to $1.400 per troy ounce by the end of the year (the current market price is about $1233). Gundlach confirmed his forecast twice, in January and in March. However, now the investor is nervous: the rally has been continuing for too long, there may be noticeable adjustments. It became to known that the legendary hedge fund manager John Paulson sold long-term contracts for $400mln for gold growth which he has held for many months. Some market participants are alerted: Paulson knows something, and we don’t. Nevertheless, while the rally continues mining companies grow together with gold. Newmont Mining shares have gained 48%, Randgold Resources - 54%, and Barrick Gold, the largest in terms of production in the world, have jumped by 72%.<o:p></o:p></span></p>
                         <span style="font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-ansi-language:EN-US;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">It should be noted that most of gold quotations’ growth came in the first 6 weeks of the year. Oil, stocks, and &quot;junk&quot; bonds had been falling, had tried to recover then, but have fell again. Of course, against this volatility, investors preferred to take refuge in &quot;safe haven&quot;. Compared with January, the situation on the stock and commodity markets is stabilized. However, gold continues to rise, since all key risks remain in force. The Fed, the ECB, and the Bank of Japan may take unexpected decisions, further slowdown is possible in China; Britain can leave the EU, the results of future elections in the United States are uncertain. Donald Trump – is a clear risk.<br />
                         And the innocuous-looking democrat Bernie Sanders offers audit the Fed and tough regulation of Wall Street.</span></td>
                 </tr>
                 <tr>
                     <td>Location: </td>
                    <td>New Delhi INDIA</td>
                 </tr>
             </table>
        </div>
    </div>
    <div>
        <asp:Button ID="btnCreatePDF" runat="server" Text="Create PDF" OnClick="btnCreatePDF_Click" />
    </div>
    </form>
</body>
</html>