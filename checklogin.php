<?php

    include('databaseclassconfig.php');


    $resultmessage = "error";
    session_start();

    $tsql = "select top 1 email from sales.customers where password = '".$_GET['password']."' COLLATE SQL_Latin1_General_CP1_CS_AS and email = '".$_GET['user']."'";
    //This code will check that the password is case sensitive but not the email address.            

        
    $conn = sqlsrv_connect($global_serverName, $global_connectionInfo);
    $stmt = sqlsrv_query( $conn, $tsql);     


    

    while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC))     
            {     
                  $resultmessage = $row[0];
                  $_SESSION["username"] = $_GET['user'];
            }     

    sqlsrv_free_stmt($stmt);  

//This will echo the email address back to the calling program if there is one else return error

echo $resultmessage;


    
