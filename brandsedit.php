
<?php


include('DatabaseClassConfig.php');

//Place Code here


include('DatabaseClass.php');


$db = new DatabaseClass("production.brands",false,$global_serverName,$global_connectionInfo);

$db->mode = "edit";

$brand_id = $_GET["brand_id"];

$tsql = "select brand_id,brand_name from production.brands where brand_id = '" . $brand_id . "'";



  
if ($db->Select($tsql, "brand_id") === false) {
    $db->closeConnection();
    //header("Location: index.php");
}


  


//This will delete
if ( isset($_GET['remove']) && $_GET['remove'] == "true"  ) {

    //echo "Type: Delete";
    $db->deleteRow($_GET['brand_id']);
    header("Location: index.php");

}

//    #Save Code
if ( $_POST['save'] == "Save" ) {

    //echo "Type: Save";
    
    $db->updateRow(['brand_name']);
    $strmessage = "Changes Saved";
    $smarty->assign("message", $strmessage);
    
}

$smarty->assign('brand_id',  $db->getFieldByColumnName("brand_id"));

$smarty->assign('brand_name',  $db->getFormFieldByColumnName("brand_name",true));




$db->closeConnection();





//End Code Here


include('footerbase.php');

$smarty->display('brandsedit.tpl');


?>

