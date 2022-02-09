$(document).ready(function() {
alert("jQuery Still Running");
$(".hidden-labels").hide();
//-------------------Validation Starts--------------------------

 		var cn=false;
 		var bt=false;
 		var fy=false;
 		var bc=false;
 		



            	//internal-validation starts- 
            	$("#company_name").focusout(function() {
            		var valu=$("#company_name").val();
						//alert("focus out");
                         
            	if(valu == "")
            		{
            		//alert("Inside if");
            			$("#label192").show(30);
            			
            			$("#company_name").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
            			
            			cn = false;
            		}
            		else{
							cn=true;
							
						$("#label192").hide();
						
						$("#company_name").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
					}
					  });	
		//internal-validation ends- 						
            	//internal-validation starts- 
              $("#business_name").focusout(function() {
                var valu=$("#business_name").val();
            //alert("focus out");
                         
              if(valu == "")
                {
                //alert("Inside if");
                  $("#Label9").show(30);
                  
                  $("#business_name").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
                  
                  bt = false;
                }
                else{
              bt=true;
              
            $("#Label9").hide();
            
            $("#business_name").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
          } 
				


});

    //internal-validation ends-   	
    
    //internal-validation starts- 
              $("#f_year").focusout(function() {
                var valu=$("#f_year").val();
            //alert("focus out");
                         
              if(valu == "")
                {
                //alert("Inside if");
                  $("#Label10").show(30);
                  
                  $("#f_year").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
                  
                  bt = false;
                }
                else{
              bt=true;
              
            $("#Label10").hide();
            
            $("#f_year").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
          } 
        


});

//internal-validation starts- 
              $("#b_country").focusout(function() {
                var valu=$("#b_country").val();
            //alert("focus out");
                         
              if(valu == "ccountry")
                {
                //alert("Inside if");
                  $("#Label13").show(30);
                  
                  $("#b_country").css({
                              "border-color":"#CC0066",
                             /* "border-color":"#FC354C",  */
                               "border-width": "1.5 px",
                                "border-type": "solid",
                          });
                  
                  bt = false;
                }
                else{
              bt=true;
              
            $("#Label13").hide();
            
            $("#b_country").css({
                            
                             "border-color":"silver",  
                              // "border-width": ".5px",
                                "border-type": "none",
                          });
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