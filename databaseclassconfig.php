
<?php
require 'libs/Smarty.class.php';

$smarty = new Smarty;
$smarty->force_compile = true;
$smarty->debugging = false;
$smarty->caching = false;

$smarty->cache_lifetime = 0;

$smarty->assign("title", "BikeProject.com");
session_start();

//Database Connection
$global_serverName = "10.114.24.23";    
$global_uid = "Eli828981";      
$global_pwd = "donoevil!";     
$global_databaseName = "Eli828981";  
    
$global_connectionInfo = array( "UID"=>$global_uid,                               
                         "PWD"=>$global_pwd,                               
                         "Database"=>$global_databaseName);   




?> 



    
