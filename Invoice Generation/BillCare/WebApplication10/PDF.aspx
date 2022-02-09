<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDF.aspx.cs" Inherits="pdfx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap-css1/css/bootstrap.min2.css" rel="stylesheet"/>
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
        }
        .auto-style2 {
            width: 42px;
        }
        .auto-style3 {
            width: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="auto-style1">
        <tr >
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" class="btn btn-lg btn-success btn-block" runat="server" OnClick="Button1_Click" Text="Click Here" />
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
