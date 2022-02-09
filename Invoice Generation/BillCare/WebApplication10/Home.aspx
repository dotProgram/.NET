<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication10.Home" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <link href="css/Home.css" rel="stylesheet"/>
    <link href="css/navigation.css" rel="stylesheet"/>
        <link href="bootstrap-css1/css/bootstrap.min.css" rel="stylesheet"/>
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="bootstrap-css1/js/regis.js"></script>
    <style>body{
      background-color:#0077c5;
    //background-color:RGB(95,158,160);
}
        .class-logo {
            margin-left:20px;margin-top:8px;
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
                 <asp:Button OnClick="Register_Click" ID="Logout" class="btn btn-sm btn-info" runat="server" Text="Logout" BorderColor="black" CausesValidation="False"  />
             
             </div>
         </div>

         </div>
             
        </div></div>
        </div>
        
                    
                            <div class="row">
                           <div id="home-main-div-left" class="col-sm-2" style="padding-left:20px;">
                                <ul>
                                  <li><a class="active" href="#home">Dashboard</a></li>
                                  <li><a href="/createInvoice.aspx">Invoice</a></li>
                                  <li><a href="/Client.aspx">Client</a></li>
                                  <li><a href="#about">History</a></li>
                                </ul>

                         

                            </div>
                                <div id="home-main-div-right" class="col-sm-10">
                                    <div class="row">
                                        <div class="col-sm-1"></div>
                                        <div class="col-sm-2"><h1>Dashboard</h1></div>
                                        <div class="col-sm-7"></div>
                                        <div class="col-sm-2">
                                            

                                        </div>
                                     
                                    </div>  <hr class="hr-class"> 
                                        <iframe width="100%" height="100%" src="sample/jquery-asPieProgress-master/examples/index.html" style="border-style: none"></iframe>
                                    </div>
                            </div>
                                </div>
                        </div>

            

       
    </form>
</body>
</html>
