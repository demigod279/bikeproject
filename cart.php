
<?php

//ini_set ('display_errors', 1); ini_set ('display_startup_errors', 1); error_reporting (E_ALL);

include('DatabaseClassConfig.php');
include('DatabaseClass.php');
//Place Code here
$order_id = $_SESSION["order_id"];
$customer_id = $_SESSION["customer_id"];
$smarty->assign('customer_id',  $customer_id);
if( $order_id == "")
{
    //create the class object for the sales.orders
   $db = new DatabaseClass("sales.orders",false,$global_serverName,$global_connectionInfo);



   $insertcolumns = "customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id";

   //THIS IS BASIC ORDER INFORMATION WITH DEFAULT DATES THAT EQUAL TODAY
   $insertvalues = $customer_id.",1,GETDATE(),GETDATE(),NULL,1,2";

   $db->commitInsert($insertcolumns, $insertvalues);

   //THIS WILL GET THE LAST ORDER_ID FOR THE RECORD THAT WAS JUST ADDED.
   $tsql = "SELECT MAX(order_id) as id from sales.orders where customer_id = ".$customer_id;
   $db->Select($tsql, "order_id");    

   $order_id = $db->getFieldByColumnName("id");

   // This will put the order_id into the session to be used on the next items selected
   $_SESSION["order_id"] = $order_id;  
  

   $db->closeConnection(); 
}

//#############################################
$smarty->assign('order_id',  $order_id);
$product_id = $_GET["product_id"];  // we will use this as the primekey




if( $product_id != "")
{
//*Z*****************STandard code to select from database, change the tablename, tsql, other changable variables
$db = new DatabaseClass("production.products",false,$global_serverName,$global_connectionInfo);
    
$tsql = "select list_price from production.products where product_id = '" . $product_id . "'";
$db->Select($tsql, "product_id");   
 $list_price = strval($db->getFieldByColumnName("list_price"));
 $db->closeConnection();


//Code to insert line item to the order_items
$db = new DatabaseClass("sales.order_items",false,$global_serverName,$global_connectionInfo);

    $quantity = $_GET["quantity"];
   
 

    $insertcolumns = "item_id,order_id,product_id,quantity,list_price";
    $insertvalues = "(select count(*)+1 from sales.order_items oi where oi.order_id = ".$order_id."),".$order_id.",".$product_id.",'".$quantity."','".$list_price."'";
    
    $db->commitInsert($insertcolumns, $insertvalues);
$db->closeConnection();
header('Location: cart.php');
}
//))))))))))))))))))))))))))))))))))))))))))))

$db = new DatabaseClass("production.products",false,$global_serverName,$global_connectionInfo);


$tsql = "select '<img src=\"images/'+p.image+'\" width=\"50px\" height=\"50px\">' as image,p.product_name,s.list_price,s.quantity,s.list_price*s.quantity as total from sales.order_items s
inner join production.products p on s.product_id = p.product_id 
where order_id = '" . $order_id . "'";

$db->Select($tsql, "product_name");

$tableheaders = array("BIKE","PRODUCT", "PRICE", "QUANTITY", "TOTAL");

$smarty->assign('carttable',  $db->getTable($tableheaders) );
$db->closeConnection();
//Will Need SQL to total this up later



$db = new DatabaseClass("sales.order_items",false,$global_serverName,$global_connectionInfo);

$tsql = "SELECT sum(list_price * quantity) as total from sales.order_items where order_id = ".$order_id;
$db->Select($tsql, "order_id");    


$subtotal = strval($db->getFieldByColumnName("total"));
$smarty->assign('subtotal',  $subtotal);


$tax = strval($subtotal * .1);
$shipping = strval($subtotal * .15);

$smarty->assign('tax',  $tax);
$smarty->assign('shipping',  $shipping);
$grandtotal = strval($subtotal) + strval($tax) + strval($shipping); 
$smarty->assign('grandtotal',  number_format($grandtotal,2));

$db->closeConnection();

  

$smarty->assign('tax',  number_format($tax,2));
$smarty->assign('taxrate',  "10");
$smarty->assign('shipping',  number_format($shipping,2));

//End Code Here


include('footerbase.php');

$smarty->display('cart.tpl');


?>

