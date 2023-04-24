
<?php

include('DatabaseClassConfig.php');

//Place Code here



include('DatabaseClass.php');


$db = new DatabaseClass("Production.products",false,$global_serverName,$global_connectionInfo);

$db->mode = "edit";

$product_id = $_GET["product_id"];

$tsql = "Select product_id, product_name, brand_id, category_id, model_year, list_price, description, sku, tags from production.products  where product_id = '" . $product_id . "'";

if ($db->Select($tsql, "product_id") === false) {
    $db->closeConnection();
    echo 'error 1';
    //header("Location: index.php");
}


  


//This will delete
if ( isset($_GET['remove']) && $_GET['remove'] == "true"  ) {

    //echo "Type: Delete";
    $db->deleteRow($_GET['product_id']);

    header("Location: index.php");

}

//    #Save Code
if ( $_POST['save'] == "Save" ) {

    //echo "Type: Save";
    
    $db->updateRow(['product_id','product_name','brand_id','category_id','model_year','list_price','phone',"description",'sku','tags']);
    $strmessage = "Changes Saved";
    $smarty->assign("message", $strmessage);
    
}

$smarty->assign('product_id',  $db->getFieldByColumnName("product_id"));
$smarty->assign('product_name',  $db->getFormFieldByColumnName("product_name",true));


//$smarty->assign('brand_name',  $db->getFormFieldByColumnName("brand_name",true));
$smarty->assign('brand_id',  $db->getFormOptionFieldByColumnName("brand_id", $db->getFieldByColumnName("brand_id"), "SELECT brand_id, brand_name FROM production.brands ORDER BY brand_name"));

//$smarty->assign('category_name',  $db->getFormFieldByColumnName("category_name",true));
$smarty->assign('category_id',  $db->getFormOptionFieldByColumnName("category_id", $db->getFieldByColumnName("category_id"), "SELECT category_id, category_name FROM production.categories ORDER BY category_name"));

$smarty->assign('model_year',  $db->getFormFieldByColumnName("model_year",true));
$smarty->assign('list_price',  $db->getFormFieldByColumnName("list_price",true));
$smarty->assign('description',  $db->getFormFieldByColumnName("description",true));
$smarty->assign('sku',  $db->getFormFieldByColumnName("sku",true));
$smarty->assign('tags',  $db->getFormFieldByColumnName("tags",true));

$stock = "";
//change table name
$db = new DatabaseClass("sales.stores",false,$global_serverName,$global_connectionInfo);
//change selection statements, ORDER MATTERS
$tsql = "select st.stock_id, s.store_name, st.quantity 
from sales.stores s 
inner join production.stocks st 
on st.store_id = s.store_id and st.product_id = " . $product_id . " 
order by s.store_id";


//echo "<Br><Br><br>.................." . $tsql;

//change to prime key
$db->Select($tsql, "stock_id");

//change this to match needed data
$stock = $db->getGrid(['stock_id', 'store_name' , 'quantity'], "stockedit.php");

$db->closeConnection();
//change var name
$smarty->assign('stock', $stock);





$db->closeConnection();




//End Code Here
include('footerbase.php');

$smarty->display('productedit.tpl');


?>

