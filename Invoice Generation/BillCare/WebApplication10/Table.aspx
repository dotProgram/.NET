<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="WebApplication10.Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 74%;
            height: 337px;
        }
        .auto-style2 {
            width: 198px;
            text-align: right;
        }
        .auto-style3 {
            width: 140px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 140px;
            font-size: small;
        }
        .auto-style8 {
            width: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Client Id</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="185px" CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">First Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox8" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email id</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Width="179px" CausesValidation="True" ValidationGroup="asp"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Country</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" Width="178px" CausesValidation="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server" Width="176px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Pin Code</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Phone No</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox7" runat="server" Width="184px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
