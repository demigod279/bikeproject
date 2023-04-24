
<?php



include('databaseclassconfig.php');
include('DatabaseClass.php');
//Place Code here


$db = new DatabaseClass("production.products",false,$global_serverName,$global_connectionInfo);

$db->mode = "edit";

$product_id = $_GET["product_id"];

$tsql = "select p.product_id, p.product_name, p.list_price, p.image, p.description, p.tags, p.sku, c.category_name from production.products p inner join production.categories c on c.category_id = p.category_id where p.product_id = '".$product_id."'";


if ($db->Select($tsql, "product_id") === false) {

    $db->closeConnection();
    header("Location: index.php");
}


$smarty->assign('product_id',  $db->getFieldByColumnName("product_id"));

$smarty->assign('product_name',  $db->getFieldByColumnName("product_name"));

$smarty->assign('list_price',  $db->getFieldByColumnName("list_price"));

$smarty->assign('image',  $db->getFieldByColumnName("image"));

$smarty->assign('description',  $db->getFieldByColumnName("description"));

$smarty->assign('sku',  $db->getFieldByColumnName("sku"));

$smarty->assign('tags',  $db->getFieldByColumnName("tags"));

$smarty->assign('category_name',  $db->getFieldByColumnName("category_name"));

$db->closeConnection();



//End Code Here


include('footerbase.php');
$smarty->display('detail.tpl');


?>

