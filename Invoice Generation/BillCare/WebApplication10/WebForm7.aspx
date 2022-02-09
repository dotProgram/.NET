<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication10.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link href="css/register.css" rel="stylesheet"/>
        <link href="bootstrap-css1/css/bootstrap.min.css" rel="stylesheet"/>
  
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/regis.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 191px;
        }
        .auto-style2 {
            height: 356px;
        }
        .auto-style4 {
            width: 76px;
        }
        .auto-style5 {
            width: 76px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style11 {
            width: 36px;
        }
        .auto-style12 {
            width: 36px;
            height: 23px;
        }
        .auto-style13 {
            width: 126px;
        }
        .auto-style14 {
            height: 23px;
            width: 126px;
        }
        .auto-style15 {
            width: 79px;
        }
        .auto-style16 {
            height: 23px;
            width: 79px;
        }
        .auto-style17 {
            width: 67px;
        }
        .auto-style18 {
            width: 67px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BCString %>" SelectCommand="SELECT * FROM [db_users]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="street_1" HeaderText="street_1" SortExpression="street_1" />
                <asp:BoundField DataField="street_2" HeaderText="street_2" SortExpression="street_2" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
        </asp:GridView>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="country" DataValueField="country">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BCString %>" SelectCommand="SELECT [country] FROM [db_users]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F7DE" />
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                first_name:
                <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                <br />
                last_name:
                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                country:
                <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                street_1:
                <asp:Label ID="street_1Label" runat="server" Text='<%# Eval("street_1") %>' />
                <br />
                street_2:
                <asp:Label ID="street_2Label" runat="server" Text='<%# Eval("street_2") %>' />
                <br />
                pincode:
                <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <div class="auto-style1">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    first_name:
                    <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
                    <br />
                    last_name:
                    <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    country:
                    <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                    <br />
                    state:
                    <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    <br />
                    city:
                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    <br />
                    street_1:
                    <asp:TextBox ID="street_1TextBox" runat="server" Text='<%# Bind("street_1") %>' />
                    <br />
                    street_2:
                    <asp:TextBox ID="street_2TextBox" runat="server" Text='<%# Bind("street_2") %>' />
                    <br />
                    pincode:
                    <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    first_name:
                    <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
                    <br />
                    last_name:
                    <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    country:
                    <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                    <br />
                    state:
                    <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    <br />
                    city:
                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    <br />
                    street_1:
                    <asp:TextBox ID="street_1TextBox" runat="server" Text='<%# Bind("street_1") %>' />
                    <br />
                    street_2:
                    <asp:TextBox ID="street_2TextBox" runat="server" Text='<%# Bind("street_2") %>' />
                    <br />
                    pincode:
                    <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    first_name:
                    <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
                    <br />
                    last_name:
                    <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
                    <br />
                    email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    country:
                    <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
                    <br />
                    state:
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                    <br />
                    city:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                    <br />
                    street_1:
                    <asp:Label ID="street_1Label" runat="server" Text='<%# Bind("street_1") %>' />
                    <br />
                    street_2:
                    <asp:Label ID="street_2Label" runat="server" Text='<%# Bind("street_2") %>' />
                    <br />
                    pincode:
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Bind("pincode") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
        </div>
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                first_name:
                <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                <br />
                last_name:
                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                country:
                <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                street_1:
                <asp:Label ID="street_1Label" runat="server" Text='<%# Eval("street_1") %>' />
                <br />
                street_2:
                <asp:Label ID="street_2Label" runat="server" Text='<%# Eval("street_2") %>' />
                <br />
                pincode:
                <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                first_name:
                <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
                <br />
                last_name:
                <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />
                country:
                <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                street_1:
                <asp:TextBox ID="street_1TextBox" runat="server" Text='<%# Bind("street_1") %>' />
                <br />
                street_2:
                <asp:TextBox ID="street_2TextBox" runat="server" Text='<%# Bind("street_2") %>' />
                <br />
                pincode:
                <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">first_name:
                <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
                <br />last_name:
                <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
                <br />email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />country:
                <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                <br />state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />street_1:
                <asp:TextBox ID="street_1TextBox" runat="server" Text='<%# Bind("street_1") %>' />
                <br />street_2:
                <asp:TextBox ID="street_2TextBox" runat="server" Text='<%# Bind("street_2") %>' />
                <br />pincode:
                <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                <br />phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                first_name:
                <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                <br />
                last_name:
                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                country:
                <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                street_1:
                <asp:Label ID="street_1Label" runat="server" Text='<%# Eval("street_1") %>' />
                <br />
                street_2:
                <asp:Label ID="street_2Label" runat="server" Text='<%# Eval("street_2") %>' />
                <br />
                pincode:
                <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                first_name:
                <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                <br />
                last_name:
                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                country:
                <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                street_1:
                <asp:Label ID="street_1Label" runat="server" Text='<%# Eval("street_1") %>' />
                <br />
                street_2:
                <asp:Label ID="street_2Label" runat="server" Text='<%# Eval("street_2") %>' />
                <br />
                pincode:
                <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
    <div class="auto-style2">
        <table class="table-condensed" style="border-width:1px; border-style:solid;">
            <tr>
                <td class="auto-style4">Item Name</td>
                <td class="auto-style13">Description</td>
                <td class="auto-style17">Unit Price</td>
                <td class="auto-style11">Quantity</td>
                <td class="auto-style15">Total</td>
                <td>Add Item</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="69px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox3" runat="server" Width="60px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:TextBox value="1" ID="TextBox4" runat="server" Width="52px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Add" Width="51px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="XmlDataSource1">
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server"></asp:XmlDataSource>
    </div>
    </form>
    </body>
</html>
