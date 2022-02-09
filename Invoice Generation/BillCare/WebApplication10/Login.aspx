<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication10.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <link href="css/login.css" rel="stylesheet"/>
        <link href="bootstrap-css1/css/bootstrap.min.css" rel="stylesheet"/>
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="js/login_validation.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
    <style>body{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   // background-color:RGB(95,158,160);
}#Register{margin-left:95%;
             //background-color:#9dca68 ;
             //border-radius:5px;
            
             margin-top:1px;
            }
 #Reset1{
      Width:300px;
 }

        .auto-style1 {
            width: 146px;
        }
        .auto-style2 {
            width: 367px
            
        }

        .auto-style3 {
            width: 146px;
            height: 51px;
        }
        .auto-style4 {
            width: 367px;
            height: 51px;
        }
        .auto-style5 {
            height: 51px;
        }
        .auto-style6 {
            width: 146px;
            height: 30px;
        }
        .auto-style7 {
            width: 367px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }

        .auto-style10 {
            width: 367px;
            color: #CC0066;
            font-size: small;
            height: 5px;
        }
        .auto-style11 {
            width: 146px;
            font-size: medium;
        }

        .auto-style12 {
            width: 146px;
            height: 5px;
        }
        .auto-style13 {
            height: 5px;
        }

        .auto-style14 {
            width: 367px;
            font-size: small;
        }

        .auto-style15 {
            font-size: 14px;
        }

    </style>
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="form-signin">

    <div class="container-fluid">
       <!-- ••••••
         <div class="row">
         <div id="navigation-div" class="col-md-12">
             <asp:Button OnClick="Register_Click" ID="Register" class="btn btn-sm btn-success" runat="server" Text="Register" BorderColor="black" CausesValidation="False"  />
             
        </div>
        </div> 
           -->
        
                    <div class="row">
            
                    <div id="col-md-12-id" class="col-md-12">
                      
                           <div id="Login-div" class="form-signin">
                           
                           <table class="nav-justified">
                               <tr>
                                   <td class="auto-style1">&nbsp;</td>
                                   <td class="auto-style2" >
                                       <div style="margin-left:30px;" >
             <asp:Image ID="Image1" class="logo" runat="server" Height="61px" ImageUrl="logo/BillingSoftware2.png" Width="168px" ImageAlign="Middle" />
                                   </td></div>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style1">&nbsp;</td>
                                   <td class="auto-style2" >
                                       <asp:Label ID="unpw_vali" runat="server" style="margin-left: 30px;color: #CC0066; font-size: small; text-align: center;"></asp:Label>
                                   </td>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style11">Email ID</td>
                                   <td class="auto-style2">
                                       <asp:TextBox ID="email_id" runat="server" class="form-control" Width="300px" Height="42px" TextMode="Email"></asp:TextBox>
                                   </td>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style12"></td>
                                   <td class="auto-style10">
                                       <asp:Label ID="email_id_label" runat="server">*Enter Email Id</asp:Label>
                                   </td>
                                   <td class="auto-style13"></td>
                               </tr>
                               <tr>
                                   <td class="auto-style11">Password</td>
                                   <td class="auto-style2">
                                       <asp:TextBox ID="password" runat="server" class="form-control" Width="300px" Height="42px" TextMode="Password"></asp:TextBox>
                                   </td>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style1">&nbsp;</td>
                                   <td class="auto-style2">
                                       <asp:Label ID="pass_label" runat="server" style="color: #CC0066; font-size: small;">*Enter Password</asp:Label>
                                   </td>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style1">&nbsp;</td>
                                   <td class="auto-style2">
                                       <asp:CheckBox ID="CheckBox1" runat="server"  />
                                       <asp:Label ID="Label3" runat="server" Text="Remember me"></asp:Label>
                                   </td>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style1">&nbsp;</td>
                                   <td class="auto-style14">
                                       <a href="registerPage.aspx">Not Registered Yet? Click Here to Register</a></td>
                                   <td>&nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="auto-style3"></td>
                                   <td class="auto-style4">
                                       <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block" runat="server" Text="Sign In" Width="300px" OnClick="Button1_Click" />
                                   </td>
                                   <td class="auto-style5"></td>
                               </tr>
                               <tr>
                                   <td class="auto-style6"></td>
                                   <td class="auto-style7">
                                       <input id="Reset1" type="reset" class="btn btn-md btn-default btn-block" value="Reset" style="background-color: #DDDDDD"/></td>
                                   <td class="auto-style8"></td>
                               </tr>
                           </table>
                               
                           </div>
                        </div>

                    
            </div>
            
        
    

 </div>      
</div>
       
    </form>
</body>
</html>
