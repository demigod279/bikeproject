
<?php


include('databaseclassconfig.php');

//Place Code here

include('DatabaseClass.php');


$db = new DatabaseClass("SALES.CUSTOMERS",false,$global_serverName,$global_connectionInfo);

$db->mode = "edit";

$username = $_SESSION["username"];

$tsql = "select customer_id,first_name,last_name, email,street,street2,company_name,city,state,phone,alt_first_name,alt_last_name, alt_email,alt_street,alt_street2,alt_company_name,alt_city,alt_state,alt_phone,country,shipping_country from sales.customers where email = '" . $username . "'";

if ($db->Select($tsql, "customer_id") === false) {
    $db->closeConnection();
    //header("Location: index.php");
}


  


//This will delete
if ( isset($_GET['remove']) && $_GET['remove'] == "true"  ) {

    //echo "Type: Delete";
    $db->deleteRow($_GET['customer_id']);
    $_SESSION["username"] = "";
    header("Location: index.php");

}

//    #Save Code
if ( $_POST['save'] == "Save" ) {

    //echo "Type: Save";
    
    $db->updateRow(['first_name','last_name','street','street2','city','state','phone',"company_name",'alt_first_name','alt_last_name','alt_street','alt_street2','alt_city','alt_state','alt_phone',"alt_company_name",'country','shipping_country']);
    $strmessage = "Changes Saved";
    $smarty->assign("message", $strmessage);
    
}

$smarty->assign('customer_id',  $db->getFieldByColumnName("customer_id"));

$smarty->assign('first_name',  $db->getFormFieldByColumnName("first_name",true));
$smarty->assign('phone',  $db->getFormFieldByColumnName("phone",true));
$smarty->assign('last_name',  $db->getFormFieldByColumnName("last_name",true));
$smarty->assign('email',  $db->getFormFieldByColumnName("email",true,"",false));
$smarty->assign('street',  $db->getFormFieldByColumnName("street",true));
$smarty->assign('street2',  $db->getFormFieldByColumnName("street2",true));
$smarty->assign('city',  $db->getFormFieldByColumnName("city",true));
$smarty->assign('state',  $db->getFormFieldByColumnName("state",true));
$smarty->assign('company_name',  $db->getFormFieldByColumnName("company_name",false));
$smarty->assign('country',  $db->getFormOptionFieldByColumnName("country", $db->getFieldByColumnName("country"), "SELECT id, countryname FROM countries ORDER BY countryname"));



$smarty->assign('alt_first_name',  $db->getFormFieldByColumnName("alt_first_name",false));
$smarty->assign('alt_phone',  $db->getFormFieldByColumnName("alt_phone",false));
$smarty->assign('alt_last_name',  $db->getFormFieldByColumnName("alt_last_name",false));

$smarty->assign('alt_street',  $db->getFormFieldByColumnName("alt_street",false));
$smarty->assign('alt_street2',  $db->getFormFieldByColumnName("alt_street2",false));
$smarty->assign('alt_city',  $db->getFormFieldByColumnName("alt_city",false));
$smarty->assign('alt_state',  $db->getFormFieldByColumnName("alt_state",false));
$smarty->assign('alt_company_name',  $db->getFormFieldByColumnName("alt_company_name",false));

$smarty->assign('shipping_country',  $db->getFormOptionFieldByColumnName("shipping_country", $db->getFieldByColumnName("shipping_country"), "SELECT id, countryname FROM countries ORDER BY countryname"));




$db->closeConnection();

  

    


    

   




//End Code Here


include('footerbase.php');

$smarty->display('profile.tpl');


?>

