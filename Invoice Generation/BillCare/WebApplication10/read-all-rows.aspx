<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="read-all-rows.aspx.cs" Inherits="WebApplication10.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Project Management</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        Rows: <asp:TextBox ID="txtRows" runat="server" Width="30px"> </asp:TextBox> <br />
        Cols: &nbsp;<asp:TextBox ID="txtCols" runat="server" Width="30px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnGenerate" OnClick="btnGenerate_Click" runat="server" Text="Generate" />&nbsp;<br /> <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <br />
    </div>
    </div>
        <asp:Button ID="btnPost" runat="server" OnClick="Button1_Click" Text="Cause Postback" />
    </form>
</body>
</html>