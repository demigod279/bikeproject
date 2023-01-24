

<?php

require 'libs/Smarty.class.php';

$smarty = new Smarty;
$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = false;

$smarty->cache_lifetime = 0;

$smarty->assign("title", "BIG PENIS");

$smarty->display('index.tpl');


?>


    
