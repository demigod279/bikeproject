
<?php



 include('DatabaseClassConfig.php');

//Place Code here

include('DatabaseClass.php');
$customers = "";
//change table name
$db = new DatabaseClass("sales.customers",false,$global_serverName,$global_connectionInfo);
//change selection statements, ORDER MATTERS
$tsql = "Select customer_id,first_name,last_name,phone,email,street,city,state,zip_code from sales.customers order by last_name,first_name";


//echo "<Br><Br><br>.................." . $tsql;

//change to prime key
$db->Select($tsql, "customer_id");

//change this to match needed data
$customers = $db->getGrid(['customer_id', 'first_name', 'last_name', 'phone', 'email','street','city','state','zip_code'], "customeredit.php");

$db->closeConnection();
//change var name
$smarty->assign('customers', $customers);





//End Code Here



 include('footerbase.php');

$smarty->display('customers.tpl');


?>


  

    