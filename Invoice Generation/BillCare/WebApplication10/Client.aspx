<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="WebApplication10.Client" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <link href="css/Home.css" rel="stylesheet"/>
    <link href="css/navigation.css" rel="stylesheet"/>
        <link href="bootstrap-css1/css/bootstrap.min.css" rel="stylesheet"/>
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="bootstrap-css1/js/regis.js"></script>
    <script>
       
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
        #Button1 {
            margin-top: 20px;
        }
        .auto-style123 {
            width: 100%;
            
        }
       
      .auto-style123 >  th, td {
    padding: 3px;
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
                 <asp:Button type="button" OnClick="Register_Click" ID="Logout"  class="btn btn-sm btn-info" runat="server" Text="Logout"  CausesValidation="False"  />
             
             </div>
         </div>

         </div>
             
        </div></div>
        </div>
        
                    
                            <div class="row">
                           <div id="home-main-div-left" class="col-sm-2">
                               <ul>
                                  <li><a href="/Home.aspx">Dashboard</a></li>
                                  <li><a href="/createInvoice.aspx">Invoice</a></li>
                                  <li><a class="active" href="#contact">Client</a></li>
                                  <li><a href="#about">History</a></li>
                                </ul>

                            </div>
                                <div id="home-main-div-right" class="col-sm-10">
                                    <div class="row">
                                        <div class="col-sm-1"></div>
                                        <div class="col-sm-2"><h1>Clients</h1></div>
                                        <div class="col-sm-7"></div>
                                        <div class="col-sm-2">
                                            <input data-toggle="modal"  id="Button1" class="btn btn btn-primary" type="button" data-target="#myModal" value="Add Client" />

                                        </div>
                                     
                                    </div>  <hr class="hr-class"> 
                                    <div class="row">
                           <div id="Div5" class="col-sm-12">
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINEbillcareConnectionString %>" SelectCommand="SELECT [Id], [clientID], [first_name], [last_name], [email], [country], [state], [pincode], [phone] FROM [db_clients]"></asp:SqlDataSource>
        <asp:GridView style="border-radius: 5px;" class="table-condensed" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%">
            <Columns >
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" ControlStyle-BackColor="red" />
                <asp:BoundField DataField="clientID" HeaderText="clientID" SortExpression="clientID" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
        </asp:GridView>

                            </div></div>
                                    
         <!-- Modal Start -->                          
       

  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content">
       <div class="modal-header"> <button type="button" class="close" data-dismiss="modal"  aria-hidden="true">×</button> 
      <h4 class="modal-title" id="myModalLabel"> Add new Client </h4> </div> 
      <div class="modal-body"> 
          <table class="auto-style123" >
            <tr>
                <td class="auto-style2">Client Id</td>
                <td class="auto-style3">
                    <asp:TextBox ID="client_id" runat="server" CssClass="auto-style4" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">first_name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="first_name" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">last_name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="last_name" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Country</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="country" runat="server" class="form-control" Width="180px">
                                           <asp:ListItem value="Afghanistan">Afghanistan</asp:ListItem>
	    <asp:ListItem value="Albania">Albania</asp:ListItem>
	    <asp:ListItem value="Algeria">Algeria</asp:ListItem>
	    <asp:ListItem value="American Samoa">American Samoa</asp:ListItem>
	    <asp:ListItem value="Andorra">Andorra</asp:ListItem>
	    <asp:ListItem value="Angola">Angola</asp:ListItem>
	    <asp:ListItem value="Anguilla">Anguilla</asp:ListItem>
	    <asp:ListItem value="Antartica">Antarctica</asp:ListItem>
	    <asp:ListItem value="Antigua and Barbuda">Antigua and Barbuda</asp:ListItem>
	    <asp:ListItem value="Argentina">Argentina</asp:ListItem>
	    <asp:ListItem value="Armenia">Armenia</asp:ListItem>
	    <asp:ListItem value="Aruba">Aruba</asp:ListItem>
	    <asp:ListItem value="Australia">Australia</asp:ListItem>
	    <asp:ListItem value="Austria">Austria</asp:ListItem>
	    <asp:ListItem value="Azerbaijan">Azerbaijan</asp:ListItem>
	    <asp:ListItem value="Bahamas">Bahamas</asp:ListItem>
	    <asp:ListItem value="Bahrain">Bahrain</asp:ListItem>
	    <asp:ListItem value="Bangladesh">Bangladesh</asp:ListItem>
	    <asp:ListItem value="Barbados">Barbados</asp:ListItem>
	    <asp:ListItem value="Belarus">Belarus</asp:ListItem>
	    <asp:ListItem value="Belgium">Belgium</asp:ListItem>
	    <asp:ListItem value="Belize">Belize</asp:ListItem>
	    <asp:ListItem value="Benin">Benin</asp:ListItem>
	    <asp:ListItem value="Bermuda">Bermuda</asp:ListItem>
	    <asp:ListItem value="Bhutan">Bhutan</asp:ListItem>
	    <asp:ListItem value="Bolivia">Bolivia</asp:ListItem>
	    <asp:ListItem value="Bosnia and Herzegowina">Bosnia and Herzegowina</asp:ListItem>
	    <asp:ListItem value="Botswana">Botswana</asp:ListItem>
	    <asp:ListItem value="Bouvet Island">Bouvet Island</asp:ListItem>
	    <asp:ListItem value="Brazil">Brazil</asp:ListItem>
	    
	    <asp:ListItem value="Brunei Darussalam">Brunei Darussalam</asp:ListItem>
	    <asp:ListItem value="Bulgaria">Bulgaria</asp:ListItem>
	    <asp:ListItem value="Burkina Faso">Burkina Faso</asp:ListItem>
	    <asp:ListItem value="Burundi">Burundi</asp:ListItem>
	    <asp:ListItem value="Cambodia">Cambodia</asp:ListItem>
	    <asp:ListItem value="Cameroon">Cameroon</asp:ListItem>
	    <asp:ListItem value="Canada">Canada</asp:ListItem>
	    <asp:ListItem value="Cape Verde">Cape Verde</asp:ListItem>
	    <asp:ListItem value="Cayman Islands">Cayman Islands</asp:ListItem>
	    <asp:ListItem value="Central African Republic">Central African</asp:ListItem>
	    <asp:ListItem value="Chad">Chad</asp:ListItem>
	    <asp:ListItem value="Chile">Chile</asp:ListItem>
	    <asp:ListItem value="China">China</asp:ListItem>
	    <asp:ListItem value="Christmas Island">Christmas Island</asp:ListItem>
	    <asp:ListItem value="Cocos Islands">Cocos Islands</asp:ListItem>
	    <asp:ListItem value="Colombia">Colombia</asp:ListItem>
	    <asp:ListItem value="Comoros">Comoros</asp:ListItem>
	    <asp:ListItem value="Congo">Congo</asp:ListItem>
	    
	    <asp:ListItem value="Cook Islands">Cook Islands</asp:ListItem>
	    <asp:ListItem value="Costa Rica">Costa Rica</asp:ListItem>
	    <asp:ListItem value="Cota D'Ivoire">Cote d'Ivoire</asp:ListItem>
	    <asp:ListItem value="Croatia">Croatia (Hrvatska)</asp:ListItem>
	    <asp:ListItem value="Cuba">Cuba</asp:ListItem>
	    <asp:ListItem value="Cyprus">Cyprus</asp:ListItem>
	    <asp:ListItem value="Czech Republic">Czech Republic</asp:ListItem>
	    <asp:ListItem value="Denmark">Denmark</asp:ListItem>
	    <asp:ListItem value="Djibouti">Djibouti</asp:ListItem>
	    <asp:ListItem value="Dominica">Dominica</asp:ListItem>
	    <asp:ListItem value="Dominican Republic">Dominican Republic</asp:ListItem>
	    <asp:ListItem value="East Timor">East Timor</asp:ListItem>
	    <asp:ListItem value="Ecuador">Ecuador</asp:ListItem>
	    <asp:ListItem value="Egypt">Egypt</asp:ListItem>
	    <asp:ListItem value="El Salvador">El Salvador</asp:ListItem>
	    <asp:ListItem value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
	    <asp:ListItem value="Eritrea">Eritrea</asp:ListItem>
	    <asp:ListItem value="Estonia">Estonia</asp:ListItem>
	    <asp:ListItem value="Ethiopia">Ethiopia</asp:ListItem>
	    <asp:ListItem value="Falkland Islands">Falkland Islands</asp:ListItem>
	    <asp:ListItem value="Faroe Islands">Faroe Islands</asp:ListItem>
	    <asp:ListItem value="Fiji">Fiji</asp:ListItem>
	    <asp:ListItem value="Finland">Finland</asp:ListItem>
	    <asp:ListItem value="France">France</asp:ListItem>
	    <asp:ListItem value="France Metropolitan">France, Metropolitan</asp:ListItem>
	    <asp:ListItem value="French Guiana">French Guiana</asp:ListItem>
	    <asp:ListItem value="French Polynesia">French Polynesia</asp:ListItem>
	    
	    <asp:ListItem value="Gabon">Gabon</asp:ListItem>
	    <asp:ListItem value="Gambia">Gambia</asp:ListItem>
	    <asp:ListItem value="Georgia">Georgia</asp:ListItem>
	    <asp:ListItem value="Germany">Germany</asp:ListItem>
	    <asp:ListItem value="Ghana">Ghana</asp:ListItem>
	    <asp:ListItem value="Gibraltar">Gibraltar</asp:ListItem>
	    <asp:ListItem value="Greece">Greece</asp:ListItem>
	    <asp:ListItem value="Greenland">Greenland</asp:ListItem>
	    <asp:ListItem value="Grenada">Grenada</asp:ListItem>
	    <asp:ListItem value="Guadeloupe">Guadeloupe</asp:ListItem>
	    <asp:ListItem value="Guam">Guam</asp:ListItem>
	    <asp:ListItem value="Guatemala">Guatemala</asp:ListItem>
	    <asp:ListItem value="Guinea">Guinea</asp:ListItem>
	    <asp:ListItem value="Guinea-Bissau">Guinea-Bissau</asp:ListItem>
	    <asp:ListItem value="Guyana">Guyana</asp:ListItem>
	    <asp:ListItem value="Haiti">Haiti</asp:ListItem>
	    
	
	    <asp:ListItem value="Honduras">Honduras</asp:ListItem>
	    <asp:ListItem value="Hong Kong">Hong Kong</asp:ListItem>
	    <asp:ListItem value="Hungary">Hungary</asp:ListItem>
	    <asp:ListItem value="Iceland">Iceland</asp:ListItem>
	    <asp:ListItem value="India">India</asp:ListItem>
	    <asp:ListItem value="Indonesia">Indonesia</asp:ListItem>
	    <asp:ListItem value="Iran">Iran </asp:ListItem>
	    <asp:ListItem value="Iraq">Iraq</asp:ListItem>
	    <asp:ListItem value="Ireland">Ireland</asp:ListItem>
	    <asp:ListItem value="Israel">Israel</asp:ListItem>
	    <asp:ListItem value="Italy">Italy</asp:ListItem>
	    <asp:ListItem value="Jamaica">Jamaica</asp:ListItem>
	    <asp:ListItem value="Japan">Japan</asp:ListItem>
	    <asp:ListItem value="Jordan">Jordan</asp:ListItem>
	    <asp:ListItem value="Kazakhstan">Kazakhstan</asp:ListItem>
	    <asp:ListItem value="Kenya">Kenya</asp:ListItem>
	    <asp:ListItem value="Kiribati">Kiribati</asp:ListItem>
	    <asp:ListItem value="Democratic People's Republic of Korea">Korea, North Korea</asp:ListItem>
	    <asp:ListItem value="Korea">Korea, South Korea</asp:ListItem>
	    <asp:ListItem value="Kuwait">Kuwait</asp:ListItem>
	    <asp:ListItem value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
	    <asp:ListItem value="Lao">Lao</asp:ListItem>
	    <asp:ListItem value="Latvia">Latvia</asp:ListItem>
	    <asp:ListItem value="Lebanon" >Lebanon</asp:ListItem>
	    <asp:ListItem value="Lesotho">Lesotho</asp:ListItem>
	    <asp:ListItem value="Liberia">Liberia</asp:ListItem>
	    <asp:ListItem value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</asp:ListItem>
	    <asp:ListItem value="Liechtenstein">Liechtenstein</asp:ListItem>
	    <asp:ListItem value="Lithuania">Lithuania</asp:ListItem>
	    <asp:ListItem value="Luxembourg">Luxembourg</asp:ListItem>
	    <asp:ListItem value="Macau">Macau</asp:ListItem>
	    <asp:ListItem value="Macedonia">Macedonia</asp:ListItem>
	    <asp:ListItem value="Madagascar">Madagascar</asp:ListItem>
	    <asp:ListItem value="Malawi">Malawi</asp:ListItem>
	    <asp:ListItem value="Malaysia">Malaysia</asp:ListItem>
	    <asp:ListItem value="Maldives">Maldives</asp:ListItem>
	    <asp:ListItem value="Mali">Mali</asp:ListItem>
	    <asp:ListItem value="Malta">Malta</asp:ListItem>
	    <asp:ListItem value="Marshall Islands">Marshall Islands</asp:ListItem>
	    <asp:ListItem value="Martinique">Martinique</asp:ListItem>
	    <asp:ListItem value="Mauritania">Mauritania</asp:ListItem>
	    <asp:ListItem value="Mauritius">Mauritius</asp:ListItem>
	    <asp:ListItem value="Mayotte">Mayotte</asp:ListItem>
	    <asp:ListItem value="Mexico">Mexico</asp:ListItem>
	    <asp:ListItem value="Micronesia">Micronesia</asp:ListItem>
	    <asp:ListItem value="Moldova">Moldova</asp:ListItem>
	    <asp:ListItem value="Monaco">Monaco</asp:ListItem>
	    <asp:ListItem value="Mongolia">Mongolia</asp:ListItem>
	    <asp:ListItem value="Montserrat">Montserrat</asp:ListItem>
	    <asp:ListItem value="Morocco">Morocco</asp:ListItem>
	    <asp:ListItem value="Mozambique">Mozambique</asp:ListItem>
	    <asp:ListItem value="Myanmar">Myanmar</asp:ListItem>
	    <asp:ListItem value="Namibia">Namibia</asp:ListItem>
	    <asp:ListItem value="Nauru">Nauru</asp:ListItem>
	    <asp:ListItem value="Nepal">Nepal</asp:ListItem>
	    <asp:ListItem value="Netherlands">Netherlands</asp:ListItem>
	    <asp:ListItem value="Netherlands Antilles">Netherlands Antilles</asp:ListItem>
	    <asp:ListItem value="New Caledonia">New Caledonia</asp:ListItem>
	    <asp:ListItem value="New Zealand">New Zealand</asp:ListItem>
	    <asp:ListItem value="Nicaragua">Nicaragua</asp:ListItem>
	    <asp:ListItem value="Niger">Niger</asp:ListItem>
	    <asp:ListItem value="Nigeria">Nigeria</asp:ListItem>
	    <asp:ListItem value="Niue">Niue</asp:ListItem>
	    <asp:ListItem value="Norfolk Island">Norfolk Island</asp:ListItem>
	    <asp:ListItem value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>
	    <asp:ListItem value="Norway">Norway</asp:ListItem>
	    <asp:ListItem value="Oman">Oman</asp:ListItem>
	    <asp:ListItem value="Pakistan">Pakistan</asp:ListItem>
	    <asp:ListItem value="Palau">Palau</asp:ListItem>
	    <asp:ListItem value="Panama">Panama</asp:ListItem>
	    <asp:ListItem value="Papua New Guinea">Papua New Guinea</asp:ListItem>
	    <asp:ListItem value="Paraguay">Paraguay</asp:ListItem>
	    <asp:ListItem value="Peru">Peru</asp:ListItem>
	    <asp:ListItem value="Philippines">Philippines</asp:ListItem>
	    <asp:ListItem value="Pitcairn">Pitcairn</asp:ListItem>
	    <asp:ListItem value="Poland">Poland</asp:ListItem>
	    <asp:ListItem value="Portugal">Portugal</asp:ListItem>
	    <asp:ListItem value="Puerto Rico">Puerto Rico</asp:ListItem>
	    <asp:ListItem value="Qatar">Qatar</asp:ListItem>
	    <asp:ListItem value="Reunion">Reunion</asp:ListItem>
	    <asp:ListItem value="Romania">Romania</asp:ListItem>
	    <asp:ListItem value="Russia">Russian Federation</asp:ListItem>
	    <asp:ListItem value="Rwanda">Rwanda</asp:ListItem>
	    <asp:ListItem value="Saint Kitts and Nevis">Saint Kitts and Nevis</asp:ListItem> 
	    <asp:ListItem value="Saint LUCIA">Saint LUCIA</asp:ListItem>
	    
	    <asp:ListItem value="Samoa">Samoa</asp:ListItem>
	    <asp:ListItem value="San Marino">San Marino</asp:ListItem>
	    <asp:ListItem value="Sao Tome and Principe">Sao Tome and Principe</asp:ListItem> 
	    <asp:ListItem value="Saudi Arabia">Saudi Arabia</asp:ListItem>
	    <asp:ListItem value="Senegal">Senegal</asp:ListItem>
	    <asp:ListItem value="Seychelles">Seychelles</asp:ListItem>
	    <asp:ListItem value="Sierra">Sierra Leone</asp:ListItem>
	    <asp:ListItem value="Singapore">Singapore</asp:ListItem>
	
	    <asp:ListItem value="Slovenia">Slovenia</asp:ListItem>
	    <asp:ListItem value="Solomon Islands">Solomon Islands</asp:ListItem>
	    <asp:ListItem value="Somalia">Somalia</asp:ListItem>
	    <asp:ListItem value="South Africa">South Africa</asp:ListItem>
	    
	    <asp:ListItem value="Span">Spain</asp:ListItem>
	    <asp:ListItem value="SriLanka">Sri Lanka</asp:ListItem>
	    <asp:ListItem value="St. Helena">St. Helena</asp:ListItem>
	    <asp:ListItem value="St. Pierre and Miguelon">St. Pierre and Miquelon</asp:ListItem>
	    <asp:ListItem value="Sudan">Sudan</asp:ListItem>
	    <asp:ListItem value="Suriname">Suriname</asp:ListItem>
	
	    <asp:ListItem value="Swaziland">Swaziland</asp:ListItem>
	    <asp:ListItem value="Sweden">Sweden</asp:ListItem>
	    <asp:ListItem value="Switzerland">Switzerland</asp:ListItem>
	    <asp:ListItem value="Syria">Syrian Arab Republic</asp:ListItem>
	    <asp:ListItem value="Taiwan">Taiwan</asp:ListItem>
	    <asp:ListItem value="Tajikistan">Tajikistan</asp:ListItem>
	    <asp:ListItem value="Tanzania">Tanzania</asp:ListItem>
	    <asp:ListItem value="Thailand">Thailand</asp:ListItem>
	    <asp:ListItem value="Togo">Togo</asp:ListItem>
	    <asp:ListItem value="Tokelau">Tokelau</asp:ListItem>
	    <asp:ListItem value="Tonga">Tonga</asp:ListItem>
	    <asp:ListItem value="Trinidad and Tobago">Trinidad and Tobago</asp:ListItem>
	    <asp:ListItem value="Tunisia">Tunisia</asp:ListItem>
	    <asp:ListItem value="Turkey">Turkey</asp:ListItem>
	    <asp:ListItem value="Turkmenistan">Turkmenistan</asp:ListItem>
	   
	    <asp:ListItem value="Tuvalu">Tuvalu</asp:ListItem>
	    <asp:ListItem value="Uganda">Uganda</asp:ListItem>
	    <asp:ListItem value="Ukraine">Ukraine</asp:ListItem>
	    <asp:ListItem value="United Arab Emirates">United Arab Emirates</asp:ListItem>
	    <asp:ListItem value="United Kingdom">United Kingdom</asp:ListItem>
	    <asp:ListItem value="United States">United States</asp:ListItem>
	    
	    <asp:ListItem value="Uruguay">Uruguay</asp:ListItem>
	    <asp:ListItem value="Uzbekistan">Uzbekistan</asp:ListItem>
	    <asp:ListItem value="Vanuatu">Vanuatu</asp:ListItem>
	    <asp:ListItem value="Venezuela">Venezuela</asp:ListItem>
	    <asp:ListItem value="Vietnam">Viet Nam</asp:ListItem>
	    <asp:ListItem value="Virgin Islands (British)">Virgin Islands (British)</asp:ListItem>
	    <asp:ListItem value="Virgin Islands (U.S)">Virgin Islands (U.S.)</asp:ListItem>
	    <asp:ListItem value="Wallis and Futana Islands">Wallis and Futuna Islands</asp:ListItem>
	    <asp:ListItem value="Western Sahara">Western Sahara</asp:ListItem>
	    <asp:ListItem value="Yemen">Yemen</asp:ListItem>
	    <asp:ListItem value="Yugoslavia">Yugoslavia</asp:ListItem>
	    <asp:ListItem value="Zambia">Zambia</asp:ListItem>
	    <asp:ListItem value="Zimbabwe">Zimbabwe</asp:ListItem>
                                       </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td class="auto-style3">
                    <asp:TextBox ID="state" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pin Code</td>
                <td class="auto-style3">
                    <asp:TextBox ID="pincode" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="phone" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
      </div> 
      <div class="modal-footer"> 
          <button type="button" class="btn btn-default" data-dismiss="modal"> Cancel </button> 
          <!-- <button type="button" class="btn btn-primary"> Add Client </button>--> 
          <asp:Button ID="Button2" OnClick="AddClient_Click" type="button"  class="btn btn-primary" runat="server" Text="Save" /> 
      </div> </div> </div>
            
      <!-- /.modal-dialog --> </div><!-- /.modal -->
                                    <!-- Modal End -->
                            </div>
                                </div>
                        

            

       
    </form>
</body>
</html>
