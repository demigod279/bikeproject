
<?php


include('DatabaseClassConfig.php');

//Place Code here


include('DatabaseClass.php');


$db = new DatabaseClass("production.stocks", false, $global_serverName, $global_connectionInfo);

$db->mode = "edit";

$stock_id = $_GET["stock_id"];

$tsql = "select st.stock_id,st.quantity, s.store_name, p.product_name 
from production.stocks st 
inner join sales.stores s on s.store_id = st.store_id 
inner join production.products p on p.product_id = st.product_id 
where stock_id = '" . $stock_id . "'";

//echo $tsql;


if ($db->Select($tsql, "stock_id") === false) {
    $db->closeConnection();
    //header("Location: index.php");
}




//    #Save Code
if ($_POST['save'] == "Save") {

    //echo "Type: Save";

    $db->updateRow(['quantity']);
    $strmessage = "Changes Saved";
    $smarty->assign("message", $strmessage);
}

$smarty->assign('stock_id',  $db->getFieldByColumnName("stock_id"));

$smarty->assign('quantity',  $db->getFormFieldByColumnName("quantity", true));
$smarty->assign('store_name',  $db->getFieldByColumnName("store_name"));
$smarty->assign('product_name',  $db->getFieldByColumnName("product_name"));






$db->closeConnection();





//End Code Here


include('footerbase.php');

$smarty->display('stockedit.tpl');


?>

