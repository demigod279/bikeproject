<html> 
<head> 

<!--***** Step 1: include vwcontrol.js *****//--> 
<script src="vwcontrol.js" language="javascript"></script> 

<script language="JavaScript" type="text/javascript"> 


//***** Step 2: modify the following control constants ***** 
var screenSize = vwcontrol.get_screen_avail_size(); 
var CONTAINER_ID = "controlholder";                   //your <div> tag id to hold the control 
var CONTROL_SOURCE = "viewidget.swf";         //point to the control swf file 
var CONTROL_ID = "control1";                                //give the control an instance id 
var CONTROL_WIDTH = 0.8*screenSize.width;          //specify the control width 
var CONTROL_HEIGHT = 0.7*screenSize.height;       //specify the control height 

function control_start() { 
    vwcontrol.load(CONTAINER_ID, CONTROL_SOURCE, CONTROL_ID, CONTROL_WIDTH, CONTROL_HEIGHT); 
} 
window.onload = control_start; 

function vwcontrol_onload() { 
    var control1 = vwcontrol.get_control(CONTROL_ID); 
    generate_report(control1); 
}


//***** Step 3: write code to generate report (may use separate js file if extensive coding needed)*****
function generate_report(control1) { 

    //get length unit 
    var INCH = control1.getInch(); 

    //create document 
    control1.startDoc(); 
    control1.drawString(10, 25, "{$ReportName}","fontSize=24"); 
    control1.drawString(10, 50, "{$District}-{$SchoolName}","fontSize=16"); 

    
    {$HeaderRow}
    
    control1.drawString(10, 115,"----------------------------------------------------------------------------------------------------------------------------------------------------------------------");
   
    {$DataRow}
    
    //...draw other stuff here 

    
   // control1.newPage();
     //control1.drawString(10, 25, "{$ReportName}","fontSize=24"); 
    //control1.drawString(10, 50, "{$SchoolName}","fontSize=16"); 

    //create new page 
   
    //...draw other stuff here 

    //end document 
    control1.endDoc(); 

    //preview first page (page index=0) 
    control1.setCurrentPage(0); 
    control1.preview(); 

} 

</script> 
</head> 
<body> 
<div id="controlholder" style="text-align:center"></div> 
</body> 
</html>