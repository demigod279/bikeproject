
<?php


include('DatabaseClassConfig.php');

//Place Code here


include('DatabaseClass.php');


$db = new DatabaseClass("sales.orders", false, $global_serverName, $global_connectionInfo);

$db->mode = "edit";

$order_id = $_GET["order_id"];

$tsql = "
select order_id,customer_id,order_status, FORMAT(order_date, 'yyyy-MM-dd') AS order_date, FORMAT(required_date, 'yyyy-MM-dd') AS required_date, FORMAT(shipped_date, 'yyyy-MM-dd') AS shipped_date, store_id, staff_id from sales.orders where order_id = '" . $order_id . "'";
//echo $tsql;
if ($db->Select($tsql, "order_id") === false) {
    $db->closeConnection();
    echo 'error 1';
    //header("Location: index.php");
}





//This will delete
if (isset($_GET['remove']) && $_GET['remove'] == "true") {

    //echo "Type: Delete";
    $db->deleteRow($_GET['order_id']);

    header("Location: index.php");
}

//    #Save Code
if ($_POST['save'] == "Save") {

    //echo "Type: Save";

    $db->updateRow(['customer_id', 'order_status', 'order_date', 'required_date', 'shipped_date', 'store_id', 'staff_id']);
    $strmessage = "Changes Saved";
    $smarty->assign("message", $strmessage);
}

$smarty->assign('order_id',  $db->getFieldByColumnName("order_id"));
$smarty->assign('customer_id',  $db->getFormOptionFieldByColumnName("customer_id", $db->getFieldByColumnName("customer_id"), "SELECT customer_id, first_name+' '+last_name AS name FROM sales.customers"));
$smarty->assign('order_status',  $db->getFormFieldByColumnName("order_status", true));
$smarty->assign('order_date',  $db->getFormFieldByColumnName("order_date", true));
$smarty->assign('required_date',  $db->getFormFieldByColumnName("required_date", true));
$smarty->assign('shipped_date',  $db->getFormFieldByColumnName("shipped_date", true));

$smarty->assign('store_id',  $db->getFormOptionFieldByColumnName("store_id", $db->getFieldByColumnName("store_id"), "SELECT store_id, store_name FROM sales.stores"));
$smarty->assign('staff_id',  $db->getFormOptionFieldByColumnName("staff_id", $db->getFieldByColumnName("staff_id"), "SELECT staff_id, first_name+' '+last_name AS name FROM sales.staffs"));









$db->closeConnection();








//End Code Here


include('footerbase.php');


$smarty->display('ordersedit.tpl');


?>

