$(document).ready(function() {
//alert("jQuery Still Running");
$(".validation-lable,#Label195").hide();
//-------------------Validation Starts--------------------------

 		var fn=false;
 		var ln=false;
 		var email=false;
 		var pass=false;
 		var cpass=false;
 		var country=false;
 		var state=false;
 		var pin=false;
 		var phone=false;



            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#first_name").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label195").show(30);
            			
            			$("#first_name").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			fn = false;
            		}
            		else{
							fn=true;
							
						$("#Label195").hide();
						
						$("#first_name").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends

            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#last_name").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label9").show(30);
            			
            			$("#last_name").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			ln = false;
            		}
            		else{
							ln=true;
							
						$("#Label9").hide();
						
						$("#last_name").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#email_id").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label10").show(30);
            			
            			$("#email_id").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			email = false;
            		}
            		else{
							email=true;
							
						$("#Label10").hide();
						
						$("#email_id").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#password").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label11").show(30);
            			
            			$("#password").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			pass = false;
            		}
            		else{
							pass=true;
							
						$("#Label11").hide();
						
						$("#password").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#cpassword").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label12").show(30);
            			
            			$("#cpassword").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			cpass = false;
            		}
            		else{
							cpass=true;
							
						$("#Label12").hide();
						
						$("#cpassword").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#country").val();
						//alert("focus out");
                         
            	if(valu == "ccountry")
            		{
            		//alert("Inside if");
            			$("#Label13").show(30);
            			
            			$("#country").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			country = false;
            		}
            		else{
							country=true;
							
						$("#Label13").hide();
						
						$("#country").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends

//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#state").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label193").show(30);
            			
            			$("#state").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			state = false;
            		}
            		else{
							state=true;
							
						$("#Label193").hide();
						
						$("#state").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#city").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#Label14").show(30);
            			
            			$("#city").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			city = false;
            		}
            		else{
							city=true;
							
						$("#Label14").hide();
						
						$("#city").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#pincode").val();
						//alert("focus out");
                         
            	if(valu=="" || valu.indexOf(" ") !== -1)
            		{
            		//alert("Inside if");
            			$("#Label16").show(30);
            			
            			$("#pincode").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			pin= false;
            		}
            		
            		else if(jQuery.isNumeric(valu) == false){
            		$("#Label16").show(30);
                  $("#pincode").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
                  $("#Label16").html("*Incorrect Pin Code");
                  pin=false;
                }
            		
            		else{
							pin=true;
							
						$("#Label16").hide();
						
						$("#pincode").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends
            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#phone").val();
						//alert("focus out");
                         
            	if(valu=="" || valu.indexOf(" ") !== -1 )
            		{
            		//alert("Inside if");
            			$("#Label17").show(30);
            			
            			$("#phone").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			phone = false;
            		}
            		 else if(jQuery.isNumeric(valu) == false ){
            		 $("#Label17").show(30);
            			
            			$("#phone").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
                  $("#Label17").html("*Incorrect Phone No.");

                }
            		else{
							phone = true;
							
						$("#Label17").hide();
						
						$("#phone").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}				


});
//internal-validation ends

$("#form1").submit(function() {


if(fn==true && ln==true && pass==true && city==true && email==true && cpass==true && country==true && state==true && pin==true && phone==true){
alert("ok");

return true;
}
else{

	//alert("Fill the fields");
	return false;
}
});

// ------------------Validation Ends------------------------------
/*

$("*").click(function() {
$("#Label195,#Label19").show(50);
$("#first_name,#last_name").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  *//*
                               "border-width": ".5px",
                                "border-type": "solid",
                          });
});
*/
});