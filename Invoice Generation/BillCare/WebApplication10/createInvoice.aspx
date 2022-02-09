<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createInvoice.aspx.cs" Inherits="WebApplication10.WebForm5" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <link href="css/Home.css" rel="stylesheet"/>
      <link href="css/navigation.css" rel="stylesheet"/>
        <link href="bootstrap-css1/css/bootstrap.min.css" rel="stylesheet"/>
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/invoice.js"></script>
     <script type="text/javascript" src="bootstrap-css1/js/regis.js"></script>
    <script>
        function aspx() {
            alert("Man Are u sure");
            return false;
        }
    </script>
    <style>body{
    background-color:#005ce6;  
    //background-color:#0077c5;
    height:auto;
    margin-bottom:-14px;
  
    //background-color:RGB(95,158,160);
    
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
        .class-logo {
            margin-left:20px;margin-top:8px;
        }
        .auto-style3 {
            width: 138px;
        }
        </style>
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="form-signin">

    <div class=".container-fluid ">
        <div class="row">
         <div id="navigation-div" class="col-md-12">
             <div class="row">
             <div id="Div1" class="col-xs-3">
         	<div class="class-logo">
             
         <asp:Image ID="Image1" class="logo" runat="server" Height="41px" ImageUrl="logo/BillingSoftware.png" Width="103px" />
         </div>
         </div>
         <div id="Div2" class="col-xs-6"></div>
                 <div id="Div4" class="col-xs-2"></div>
         <div id="Div3" class="col-xs-1">
         	 <div style="margin-right:1px">
                 <asp:Button OnClick="Register_Click" ID="Logout"  class="btn btn-sm btn-info" runat="server" Text="Logout" BorderColor="black" CausesValidation="False"  />
             
             </div>
         </div>

         </div>
             
        </div></div>
        </div>
        
                    
                            <div class="row">
                           <div id="home-main-div-left" class="col-sm-2">
                             <ul>
                                  <li><a href="/Home.aspx">Dashboard</a></li>
                                  <li><a class="active" href="/createInvoice.aspx">Invoice</a></li>
                                  <li><a href="/Client.aspx">Client</a></li>
                                  <li><a href="#about">History</a></li>
                                </ul>

                            </div>
                                <div id="home-main-div-right" class="col-sm-10">
                                     <div class="row">
                                        <div class="col-sm-1"></div>
                                        <div class="col-sm-2"><h1>Invoice</h1></div>
                                        <div class="col-sm-7"></div>
                                        <div class="col-sm-2">
                                            </div>
                                     
                                    </div>  <hr class="hr-class"> 
                               
                                    
                                    <table>
                                        <tr>
                                            <td>Choose Client&nbsp;</td><td class="auto-style3">
                                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="clientID" DataValueField="clientID">
                                                    <asp:ListItem Selected="True">Choose</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINEbillcareConnectionString %>" SelectCommand="SELECT [clientID] FROM [db_clients]"></asp:SqlDataSource>
                                                                  </td> <td>                                            <input id="Button1" class="btn btn-primary" type="button" value="Create Invoice" /></td>
                                        </tr>
                                    </table>
                                    <hr><br/>
                                    <div id="create-invoice-panel" class="panel panel-primary">
      <div class="panel-heading" style="text-align: center;">Generate Invoice</div>
      <div class="panel-body"><br/>

          <asp:Button ID="Button2" class="btn btn-lg btn-success btn-block" runat="server" Text="Sample Invoice" PostBackUrl="~/PDF.aspx" />

      </div>
    </div>

                                    
       

                                     <asp:SqlDataSource ID="SqlDataSourceClient" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINEbillcareConnectionString %>" SelectCommand="SELECT [first_name], [last_name], [email], [country], [state], [city], [street_1], [street_2], [pincode], [phone] FROM [db_clients] WHERE ([clientID] = @clientID)">
                                         <SelectParameters>
                                             <asp:FormParameter FormField="DropDownList" Name="clientID" Type="String" DefaultValue="aspx" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
       

                            </div>
                                </div>
                        

            

       
    </form>
</body>
</html>
