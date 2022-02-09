<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INVOICEgenaspmemo.aspx.cs" Inherits="WebApplication10.INVOICEgenaspmemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>
    <asp:Label ID="Label1" runat="server" Text="Order No :" Width="120px"></asp:Label>
    <asp:TextBox ID="txtOrderNo" runat="server"></asp:TextBox><br/>
    <asp:Label ID="Label2" runat="server" Text="Customer Name :" Width="120px"></asp:Label>
    <asp:TextBox ID="txtCustomerName" runat="server">John Willion</asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Address :" Width="120px"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" Height="74px" TextMode="MultiLine" Width="249px">No. 123, New Panasin Street, Ramkhamkeang 24/1, Bangkapi, Bangkok, 10200.</asp:TextBox>
</div>
<div>
    <asp:RadioButton ID="rdoDownload" runat="server" Checked="True" GroupName="pdf" Text="Download PDF" />
    <asp:RadioButton ID="rdoSendEmail" runat="server" GroupName="pdf" Text="Send PDF with email" />
</div>
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Font-Names="Arial"
        Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B" HeaderStyle-BackColor="green"
        AllowPaging="true" PageSize="10">
        <Columns>
            <asp:BoundField ItemStyle-Width="150px" DataField="NO" HeaderText="NO" />
            <asp:BoundField ItemStyle-Width="150px" DataField="ITEM" HeaderText="ITEM" />
            <asp:BoundField ItemStyle-Width="150px" DataField="QUANTITY" HeaderText="QUANTITY" />
            <asp:BoundField ItemStyle-Width="150px" DataField="AMOUNT" HeaderText="AMOUNT(IDR)" />
        </Columns>
    </asp:GridView>
</div>
<div>
    <asp:Button ID="Button1" runat="server" Text="Create PDF" OnClick="Button1_Click" />
</div>
</form>
</body>
</html>
