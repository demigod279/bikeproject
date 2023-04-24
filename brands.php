
<?php



 include('DatabaseClassConfig.php');

//Place Code here

include('DatabaseClass.php');
$customers = "";
//change table name
$db = new DatabaseClass("production.brands",false,$global_serverName,$global_connectionInfo);
//change selection statements, ORDER MATTERS
$tsql = "Select brand_id,brand_name from production.brands order by brand_name";


//echo "<Br><Br><br>.................." . $tsql;

//change to prime key
$db->Select($tsql, "brand_id");

//change this to match needed data
$brands = $db->getGrid(['brand_id', 'brand_name'], "brandsedit.php");

$db->closeConnection();
//change var name
$smarty->assign('brands', $brands);





//End Code Here



 include('footerbase.php');

$smarty->display('brands.tpl');


?>


  

    