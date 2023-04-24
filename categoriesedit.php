
<?php


include('DatabaseClassConfig.php');

//Place Code here


include('DatabaseClass.php');


$db = new DatabaseClass("production.categories",false,$global_serverName,$global_connectionInfo);

$db->mode = "edit";

$category_id = $_GET["category_id"];

$tsql = "select category_id,category_name, image from production.categories where category_id = '" . $category_id . "'";



  
if ($db->Select($tsql, "category_id") === false) {
    $db->closeConnection();
    //header("Location: index.php");
}


  


//This will delete
if ( isset($_GET['remove']) && $_GET['remove'] == "true"  ) {

    //echo "Type: Delete";
    $db->deleteRow($_GET['category_id']);
    header("Location: index.php");

}

//    #Save Code
if ( $_POST['save'] == "Save" ) {

    //echo "Type: Save";
    
    $db->updateRow(['category_name','image']);
    $strmessage = "Changes Saved";
    $smarty->assign("message", $strmessage);
    
}

$smarty->assign('category_id',  $db->getFieldByColumnName("category_id"));

$smarty->assign('category_name',  $db->getFormFieldByColumnName("category_name",true));
$smarty->assign('image',  $db->getFormFieldByColumnName("image",true));



$db->closeConnection();






//End Code Here

include('footerbase.php');

$smarty->display('categoriesedit.tpl');


?>

