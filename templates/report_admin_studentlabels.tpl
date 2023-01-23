<html> 
<head> 

<script src="../vwcontrol.js" language="javascript"></script>
<script src="../extensions/vw.label.js" language="javascript"></script>

<script language="JavaScript" type="text/javascript">
var screenSize = vwcontrol.get_screen_avail_size(); 
var CONTAINER_ID = "controlholder";
var CONTROL_SOURCE = "../viewidget.swf";
var CONTROL_ID = "control1";
var CONTROL_WIDTH = 0.7*screenSize.width;
var CONTROL_HEIGHT = 0.6*screenSize.height;

function control_start() { 
    vwcontrol.load(CONTAINER_ID, CONTROL_SOURCE, CONTROL_ID, CONTROL_WIDTH, CONTROL_HEIGHT); 
} 
window.onload = control_start; 

function vwcontrol_onload() { 
    var control1 = vwcontrol.get_control(CONTROL_ID); 
    generate_report(control1); 
}

////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
function generate_report(control1) { 
	window.control1 = control1;	

    var INCH = control1.getInch();
    initialize(control1, INCH);

	generate_labels(3);
} 


////////////////////////////////////////////////////////
function generate_labels(labelType) { 
		
    control1.clear();
    control1.startDoc();            

	drawPages(control1, labelType);

    control1.endDoc();    
    control1.previewFitPage(0);
} 


////////////////////////////////////////////////////////
function drawPages(control1, nLabelType) {

	//var labelFontSize(1 To 4);
	var labelFontSize = new Array();
    labelFontSize[1] = 10;
    labelFontSize[2] = 14;
    labelFontSize[3] = 12;
    labelFontSize[4] = 12;
    
    var INCH = control1.getInch();
    
    var prop = "vAlign=middle;align=left;fontSize=" + labelFontSize[nLabelType];

    //-----
    //Draw lables
    var cData = getLabelData();
    vw.label.drawMailLabels(control1, nLabelType, cData, prop, INCH);
}

////////////////////////////////////////////////////////
function initialize(control1, inchUnit) {

	var INCH16 = inchUnit/16;

//--------------------------
//Property setup
control1.setProperty("refMarginLeft", 0);
control1.setProperty("refMarginTop", 0);
control1.setProperty("refMarginRight", 0);
control1.setProperty("refMarginBottom", 0);

control1.setProperty("marginLeft", INCH16);
control1.setProperty("marginTop", INCH16);
control1.setProperty("marginRight", INCH16);
control1.setProperty("marginBottom", INCH16);

}

////////////////////////////////////////////////////////
function getLabelData() {
var sTemp;
var CRLF = "\n";

var cData = new Array();

    
    {$DataRow}
    


return cData;

}

////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
function labelsize_onchange(e) {
	//var e = this;		
	var labelType = parseInt(e.value,10);
	generate_labels(labelType);	
	return true;
}

////////////////////////////////////////////////////////
////////////////////////////////////////////////////////

</script> 

</head> 
<body> 
<p align=center style="font-size:24px">Mailing Labels</p>

<div style="text-align:center">
	Select a label size:&nbsp;
	<label><input type=radio id="size3" value="3" checked name="sizegroup" onclick="return labelsize_onchange(this);">1 1/2'' x 4''</label>
	<label><input type=radio id="size1" value="1" name="sizegroup" onclick="return labelsize_onchange(this);">1'' x 2 5/8''</label>
	<label><input type=radio id="size2" value="2" name="sizegroup" onclick="return labelsize_onchange(this);">2 1/2'' x 3 3/8''</label>
	<label><input type=radio id="size4" value="4" name="sizegroup" onclick="return labelsize_onchange(this);">2 3/4'' x 2 3/4''</label>
</div> 
	<br>


<div id="controlholder" style="text-align:center"></div> 
</body> 
</html>