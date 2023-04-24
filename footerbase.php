
<?php

$smarty->assign("ListProducts",  $result );



   if(  $_SESSION["admin"] == 1  )
   {

        $smarty->assign("admindropdown",  "visible" );
   }
   else
   {

       $smarty->assign("admindropdown",  "hidden" );
   }

   if(  $_SESSION["username"] == ""  )
   {

       $smarty->assign("loginbutton",  "Login" );
        $smarty->assign("accountdropdown",  "hidden" );
   }
   else
   {
       $smarty->assign("loginbutton",  "Logout" );
       $smarty->assign("accountdropdown",  "visible" );
   }




