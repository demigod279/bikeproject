
<?php


include('DatabaseClassConfig.php');

//Place Code here


//select from the database the description of the brand -- INSERT THE BRAND NAME BELOW

$tsql = "select brand_id, brand_name from production.brands order by brand_name ";
//echo "sql: ".$tsql;


$conn = sqlsrv_connect($global_serverName, $global_connectionInfo);
$stmt = sqlsrv_query( $conn, $tsql);     
$result = "";

 while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC))     
 {     

  $brand_id = $row[0];
  $brand_name = $row[1];
           
    $result = $result."<li class='mb-2'><a class='reset-anchor' href='shop.php?brand_id=$brand_id'>$brand_name</a></li>";
    
        

 }     

 
 sqlsrv_free_stmt($stmt);    


 $smarty->assign("brandslist",  $result );






//select from the database the description of the categories-- INSERT THE BRAND NAME BELOW
//$smarty->assign("categorieslist", "<li class='mb-2'><a class='reset-anchor' href='#!'>CATEGORYNAME</a></li>");
$tsql = "select category_id, category_name from production.categories order by category_name ";
//echo "sql: ".$tsql;


$conn = sqlsrv_connect($global_serverName, $global_connectionInfo);
$stmt = sqlsrv_query( $conn, $tsql);     
$result = "";

 while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC))     
 {     

  $category_id = $row[0];
  $category_name = $row[1];
           
    $result = $result."<li class='mb-2'><a class='reset-anchor' href='shop.php?category_id=$category_id'>$category_name</a></li>";
    
        

 }     

 
 sqlsrv_free_stmt($stmt);    


 $smarty->assign("categorieslist",  $result );

//select from the database the name of the stores-- INSERT THE BRAND NAME BELOW
//$smarty->assign("storeslist", "<li class='mb-2'><a class='reset-anchor' href='#!'>STORENAME</a></li>");



$tsql = "select store_id, store_name from sales.stores order by store_name ";
//echo "sql: ".$tsql;


$conn = sqlsrv_connect($global_serverName, $global_connectionInfo);
$stmt = sqlsrv_query( $conn, $tsql);     
$result = "";

 while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC))     
 {     

  $store_id = $row[0];
  $store_name = $row[1];
           
    $result = $result."<li class='mb-2'><a class='reset-anchor' href='shop.php?store_id=$store_id'>$store_name</a></li>";
    
        

 }     

 
 sqlsrv_free_stmt($stmt);    


 $smarty->assign("storeslist",  $result );


//select from the database the name of the PRODUCTS-- INSERT THE BRAND NAME BELOW
if( $_GET['brand_id'] != '' ){
    $tsql = "select product_id, product_name, list_price, image from production.products where brand_id = ".$_GET['brand_id'] ." order by product_name";
}
else if ( $_GET['category_id'] != ''){
    $tsql = "select product_id, product_name, list_price, image from production.products where category_id = ".$_GET['category_id'] ." order by product_name";
}
else if ( $_GET['store_id'] != ''){
    $tsql = "select p.product_id, p.product_name, p.list_price, p.image 
    from production.products p 
    where (select count(*) from production.stocks s 
    where s.store_id = ".$_GET['store_id'] . " and s.quantity > 0 and s.product_id = p.product_id ) > 0 
    order by product_name";
}
else{
    $tsql = "select product_id, product_name, list_price, image from production.products  order by product_name";
}



                            
                            
                            
                            $conn = sqlsrv_connect($global_serverName, $global_connectionInfo);
                            $stmt = sqlsrv_query( $conn, $tsql);     
                            $result = "";
                            
                             while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC))     
                             {     
                            
                              $product_id = $row[0];
                              $product_name = $row[1];
                              $list_price = $row[2];
                              $image = $row[3];
                                      
                              $name = 'elijah\'s';
                                $result = $result.'<div class="col-lg-4 col-sm-6">
                                <div class="product text-center">
                                    <div class="mb-3 position-relative">
                                        <div class="badge text-white bg-"></div><a class="d-block"
                                            href="detail.php?product_id"><img class="img-fluid w-100"
                                                src="images/'.$image.'"
                                                alt="..."></a>
                                        <div class="product-overlay">
                                            <ul class="mb-0 list-inline">
                                                <li class="list-inline-item m-0 p-0"><a
                                                        class="btn btn-sm btn-outline-dark" href="#!"><i
                                                            class="far fa-heart"></i></a></li>
                                                <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark"
                                                        href="cart.php">Add to cart</a></li>
                                                <li class="list-inline-item mr-0"><a
                                                        class="btn btn-sm btn-outline-dark" href="#productView"
                                                        data-bs-toggle="modal"><i class="fas fa-expand"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <h6> <a class="reset-anchor" href="detail.php?product_id = '.$product_id.'">'.$product_name.'</a></h6>
                                    <p class="small text-muted">'.$list_price.'</p>
                                </div>
                            </div>';
                                
                                    
                            
                             }     
                            
                             
                             sqlsrv_free_stmt($stmt);    

                            
                             $smarty->assign("productslist",  $result);
                            



//End Code Here

include('footerbase.php');

$smarty->display('shop.tpl');


?>

