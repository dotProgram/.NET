<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspDotNet.aspx.cs" Inherits="WebApplication10.aspDotNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link href="bootstrap-css1/css/bootstrap.min.css" rel="stylesheet"/>
  
		<script type="text/javascript" src="bootstrap-css1/js/jquery.js"></script>
        <script type="text/javascript" src="bootstrap-css1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Table row -->
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                      <br><br>
                      <div class="row">
                        <!--Product Table-->
                        <div class="col-xs-12 table">
                          <table id="myTable" runat="server" class="table-bordered">
                              <tr>
                                    <td><b>No.&nbsp;</b></td>
                                   <td><b>Item Name</b></td>
                                  <td><b>Discription</b></td>
                                  <td><b>Price</b></td>
                                  <td><b>Units</b></td>
                                  </tr>
    <tr>
        <td>1.</td>
        <td><asp:TextBox runat="server" id="TextBox11" type="text" name="TextBox11"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox12" type="text" name="TextBox12"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox13" type="text" name="TextBox13"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox14" type="text" name="TextBox14"></asp:TextBox></td>
        
    </tr>
                              <tr>
                                  <td>2.</td>
        <td><asp:TextBox runat="server" id="TextBox21" type="text" name="TextBox21"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox22" type="text" name="TextBox22"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox23" type="text" name="TextBox23"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox24" type="text" name="TextBox24"></asp:TextBox></td>
        <td><input id="Button1" runat="server" type="button" class="button" value="Add More Item" onclick="addField();"/></td>
    </tr>
                               <tr>
                                   <td>3.</td>
        <td><asp:TextBox runat="server" id="TextBox31" type="text" name="TextBox31"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox32" type="text" name="TextBox32"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox33" type="text" name="TextBox33"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox34" type="text" name="TextBox34"></asp:TextBox></td>
        
    </tr>
                               <tr>
                                   <td>4.</td>
        <td><asp:TextBox runat="server" id="TextBox41" type="text" name="TextBox41"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox42" type="text" name="TextBox42"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox43" type="text" name="TextBox43"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox44" type="text" name="TextBox44"></asp:TextBox></td>
        
    </tr>
                               <tr>
                                   <td>5.</td>
        <td><asp:TextBox runat="server" id="TextBox51" type="text" name="TextBox51"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox52" type="text" name="TextBox52"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox53" type="text" name="TextBox53"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox54" type="text" name="TextBox54"></asp:TextBox></td>
        
    </tr>
                               <tr>
                                   <td>6.</td>
        <td><asp:TextBox runat="server" id="TextBox61" type="text" name="TextBox61"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox62" type="text" name="TextBox62"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox63" type="text" name="TextBox63"></asp:TextBox></td>
        <td><asp:TextBox runat="server" id="TextBox64" type="text" name="TextBox64"></asp:TextBox></td>
        
    </tr>
                              
</table>
                            
                            <asp:Button id='addrow' Text='Create Invoice' runat="server" OnClick="addrow_Click" />
                        </div>
                        <!--/Product Table-->
                        <!-- /.col -->
<script type="text/javascript">

    function addField(argument) {
        var myTable = document.getElementById("myTable");
        var currentIndex = myTable.rows.length;
        var currentRow = myTable.insertRow(-1);
        var columnNo = 1;
        alert("ROW LWNGTH: "+currentIndex);

        var linksBox = document.createElement("input");
        linksBox.setAttribute("name", "TextBox" + currentIndex + columnNo);
		linksBox.setAttribute("id", "TextBox" + currentIndex + columnNo);
        linksBox.setAttribute("runat", "server");
		columnNo++;
		
        var keywordsBox = document.createElement("input");
        keywordsBox.setAttribute("name", "TextBox" + currentIndex + columnNo);
        keywordsBox.setAttribute("id", "TextBox" + currentIndex + columnNo);
        keywordsBox.setAttribute("runat", "server");
		columnNo++;
		
        var violationsBox = document.createElement("input");
        violationsBox.setAttribute("name", "TextBox" + currentIndex + columnNo);
        violationsBox.setAttribute("id", "TextBox" + currentIndex + columnNo);
        violationsBox.setAttribute("runat", "server");
        columnNo++;
        //ADDED LINE CODE STARTS
        
           var unitBox = document.createElement("input");
        unitBox.setAttribute("name", "TextBox" + currentIndex + columnNo);
		unitBox.setAttribute("id", "TextBox" + currentIndex + columnNo);
        unitBox.setAttribute("runat", "server");
		//ADDED LINE CODE Ends
		
        var addRowBox = document.createElement("input");
        addRowBox.setAttribute("type", "button");
        addRowBox.setAttribute("value", "Add another Item");
        addRowBox.setAttribute("onclick", "addField();");
        addRowBox.setAttribute("class", "button");

        var currentCell = currentRow.insertCell(-1);
        currentCell.appendChild(linksBox);

        currentCell = currentRow.insertCell(-1);
        currentCell.appendChild(keywordsBox);

        currentCell = currentRow.insertCell(-1);
        currentCell.appendChild(violationsBox);
        
         //ADDED LINE CODE STARTS
        currentCell = currentRow.insertCell(-1);
        currentCell.appendChild(unitBox);
        //ADDED LINE CODE Ends

        currentCell = currentRow.insertCell(-1);
        currentCell.appendChild(addRowBox);
    }

</script>
    </div>
    </form>
</body>
</html>
