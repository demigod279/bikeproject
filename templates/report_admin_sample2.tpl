<html> 
<head> 

<script src="vwcontrol.js" language="javascript"></script> 

<script language="JavaScript" type="text/javascript"> 

//////////////////////////////////////////////////////////////////////////////////////////////////////// 
var screenSize = vwcontrol.get_screen_avail_size(); 
var CONTAINER_ID = "controlholder";                   //your <div> tag id to hold the control 
var CONTROL_SOURCE = "viewidget.swf";      //point to the control swf file 
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


//////////////////////////////////////////////////////////////////////////////////////////////////////// 
function generate_report(control1) {

var data = document.getElementById("dataholder").innerHTML; 
var dataobj = vwcontrol.xml_parse(data); 

var control1 = vwcontrol.get_control(CONTROL_ID); 
var INCH = control1.getInch(); 

//generate a report with a title and a table 
var format = "96|96|96"; 
control1.startDoc(); 
control1.drawPageBorder(); 
control1.drawPageHeader(dataobj["ProductCategory"], "fontSize=24;algin=center;marginTop=96"); 
control1.drawTable(2.25*INCH,2*INCH,dataobj["ProdcutTable"], format); 
control1.endDoc(); 
control1.preview();

} 

//////////////////////////////////////////////////////////////////////////////////////////////////////// 

</script> 
</head> 
<body> 
<textarea id="dataholder" style="display: none"> 
<ProductCategory>Sports Shoes</ProductCategory> 
<ProdcutTable>Product ID|Product Name|Price^1001|Tennis Shoes|$199.95^1001|Soccer Shoes|$149.95^1001|Basketball Shoes|$179.95</ProdcutTable> 
</textarea> 

<p align=center>VIEWidget Sample 2</p>
<div id="controlholder" style="text-align:center"></div> 
</body> 
</html>