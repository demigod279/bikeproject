
<?php

 include('DatabaseClassConfig.php');

//Place Code here


include('DatabaseClass.php');
$customers = "";
//change table name
$db = new DatabaseClass("production.products",false,$global_serverName,$global_connectionInfo);
//change selection statements, ORDER MATTERS
$tsql = "Select p.product_id, p.product_name, b.brand_name, c.category_name, p.model_year, p.list_price, p.description, p.sku, p.tags from production.products p inner join production.brands b on p.brand_id = b.brand_id inner join production.categories c on p.category_id = c.category_id order by product_id";


//echo "<Br><Br><br>.................." . $tsql;

//change to prime key
$db->Select($tsql, "product_id");

//change this to match needed data
$customers = $db->getGrid(['product_id', 'product_name', 'brand_name', 'category_name', 'model_year','list_price','description','sku','tags'], "productedit.php");

$db->closeConnection();
//change var name
$smarty->assign('customers', $customers);







//End Code Here



 include('footerbase.php');

$smarty->display('products.tpl');


?>


  

    