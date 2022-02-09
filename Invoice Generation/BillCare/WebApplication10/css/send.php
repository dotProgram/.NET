<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/mail.js"></script>
	<link href="../css/mail.css" rel="stylesheet"/>
	<link href="../css/mail_rows.css" rel="stylesheet"/>

	<title>Inbox/title>
</head>
<body>
<div id="main">
	<div id="one" class="transparent-divs"><a href="../index.html">
			<div class="mail-header-div"><span>InMail</a></span>
					</div>
			<div class="mail-header-div" id="email-search" style="color:black; margin-left:135px">
			<input type="text" id="mail-search-input" class="ip-tb-style" placeholder="Search"/>
			<button style="background-color:#2790e6; border-color:#2790e6;border-bottom-color:#2790e6" ><img style="background-color:#2790e6" src="../Icons/Search_25px_2.png"/></button>
					</div>
		<div id="header_Buttons">
			<div id="corrnor-logout" class="header_menu_buttons"></div>
			<div id="corrnor-settings" class="header_menu_buttons"></div>
			<div id="corrnor-dropdownmenu"></div>
		</div>	
		
	</div>
	<div id="body_div-regis" class="register transparent-divs" style="background-color:transparent;">
			<div id="navigation-div" class="ont-two" style="background-color:transparent;">
			<h3>The Mailing options</h3><br>
			<b>Inbox </b>(2)<br> Sent (4)<br>  Drafts<br> Delete(1)
							<div id="table-containing-div">
							
					</div>

			</div>	
			<div id="body_div-email" class="ont-two transparent-divs" style="opacity:.85;">
					
					Inbox</br>
					
					<form action="../db/register.php" method="get">
						<input type="text"/> </br>
						<input type="submit">
							
							</input>
							</br>
					</from> 
					<?php
					include_once('../db/connectionemail.php');// This is the email retriever from database
						$q="select * from yeltsin1235_mail_tables.inbox";
						$query_result= mysqli_query($conn_mail, $q);
						if($query_result)
							{
								echo "Congratulations! Query Success REal"."</br>";
							}
					echo '<form action="../db/register.php" method="get">'; 
					echo '<button type="submit" id="delete_button">
							<img id="delete_button_img" align="left" style="background-color:#2790e6" src="../Icons/Delete_25px_2.png"/>
							</button>
							</br>';
					echo '</from>'; 
					$name="Larry Page";
					$subect="Hi You have an our offer letter from Google";
					$date="27th April";

					echo '<table id="inbox_table" cellspacing="0" cellpadding="3" align="center" width="98%">
						 <tr width="30px" id="row_headding">
						 <td align="left"></td>
						 <td align="left"><b>Name</b></td>
						 <td align="left"><b>Subject</b></td>
						 <td align="center"><b>Date</b></td>
						 </tr>';
						 
						 for ($i=0; $i < 5; $i++) { 
						 	# code...
						
						 echo '
							  <tr class="rows">
							  <td align="left"><input type="checkbox"></td> 
							  <td align="left">' . $name   .'</td> 
							  <td align="left">' . $subect .'</td>'.
							 '<td align="center">' . $date   .'</td>'.  
							 '</tr>';  
							 	 }
							 	 echo '</br>';

						 for ($i=0; $i < 5; $i++) { 
						 	# code...
						
						 echo '
							  <tr class="rows_notread">
							  <td align="left"><input type="checkbox"></td>	
							  <td align="left">' . $name   .'</td> 
							  <td align="left">' . $subect .'</td>'.
							 '<td align="center">' . $date   .'</td>'.  
							 '</tr>';  
							 	 }

						include_once('../db/connectionemail.php');// This is the email retriever from database
						$q="select * from yeltsin1235_mail_tables.inbox";
						$query_result= mysqli_query($conn_mail, $q);
						if($query_result)
							{
								echo "Congratulations! Query Success REal"."</br>";
							
//register.php?fn=&ln=&uid=&email=&pw=&cpw=&bday=&dropdown-gender=Male&  \action.php\mailMessageRetriever.php		
						while ($row = mysqli_fetch_array($query_result, MYSQLI_ASSOC)) {
									
									if($row['read_status_'] == 0){

									 echo '
									  <tr class="rows_notread" name='.$row['no'].'>
									  <td align="left"><input type="checkbox"></td>	
									  <td align="left">' . $row['source_id']   .'</td> <td align="left"><a href="action.php/mailMessageRetriever.php?no=1">' . $row['subject'] .'</a></td>'.
									 '<td align="center">' . $row['message_time'] .'</tr>';  
									}
									
									
									else{

									 echo '
									  <tr class="rows"name='.$row['no'].'>
									  <td align="left"><input type="checkbox"></td>	
									  <td align="left">' . $row['source_id']   .'</td> <td align="left">' . $row['subject'] .'</td>'.
									 '<td align="center">' . $row['message_time'] .'</tr>';  
									}
										
								
							}
}






						 ?>

			</div>
			
			</div>

</div>	
		
		















</body>
</html>