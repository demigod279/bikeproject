<?php

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



?>