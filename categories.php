
<?php



 include('DatabaseClassConfig.php');

//Place Code here

include('DatabaseClass.php');
$customers = "";
//change table name
$db = new DatabaseClass("production.categories",false,$global_serverName,$global_connectionInfo);
//change selection statements, ORDER MATTERS
$tsql = "Select category_id, category_name from production.categories order by category_id";


//echo "<Br><Br><br>.................." . $tsql;

//change to prime key
$db->Select($tsql, "category_id");

//change this to match needed data
$categories = $db->getGrid(['category_id', 'category_name'], "categoriesedit.php");

$db->closeConnection();
//change var name
$smarty->assign('categories', $categories);





//End Code Here



 include('footerbase.php');

$smarty->display('categories.tpl');


?>


  

    