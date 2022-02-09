$(document).ready(function() {
//alert("jQuery  Running");
$("#pass_label,#email_id_label").hide();
//-------------------BUTTON-Validation Starts--------------------------
function button_validation(){



}
//-------------------BUTTON-Validation ENDS--------------------------

//-------------------Validation Starts--------------------------

 		var email=false;
 		var pass=false;
 	
 		



            	//internal-validation starts- 
            	$("#Button1").click(function() {
            		var valu=$("#email_id").val();
						//alert("focusout out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#email_id_label").show(30);
            			
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
							
						$("#email_id_label").hide();
						
						$("#email_id").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}
					  });	
		//internal-validation ends- 						
            	//internal-validation starts- 
              $("#Button1").click(function(){
                var valu=$("#password").val();
            //alert("focusout out");
                         
              if(valu == "")
                {
                //alert("Inside if");
                  $("#pass_label").show(30);
                  
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
              
            $("#pass_label").hide();
            
            $("#password").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
          } 
				


});

    //internal-validation ends-   	
    Button1
    
    
    
    
   $("#form1").submit(function() {


if(email==true && pass==true  ){
//alert("ok");

return true;
}
else{

	//alert("Fill the fields");
	return false;
}
});
    //internal-validation ends-  
    

    //internal-validation ends-  
            	
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