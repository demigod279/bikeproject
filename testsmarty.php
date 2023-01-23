<?php

require 'libs/Smarty.class.php';

$smarty = new Smarty;
$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = false;
$smarty->cache_lifetime = 0;

$smarty->assign("title", "PHP and Smarty is Alive");
$smarty->assign("version", "Version 1.1");
$smarty->assign("html", "
<form action='login.php' method='post'>
  <div class='imgcontainer'>
    <img src='img_avatar2.png' alt='Avatar' class='avatar'>
  </div>

  <div class='container'>
    <label for='uname'><b>Username</b></label>
    <input type='text' placeholder='Enter Username' name='uname' id='uname' required>

    <label for='psw'><b>Password</b></label>
    <input type='password' placeholder='Enter Password' name='psw' id='psw' required>
        
    <button type='submit'>Login</button>
    <label>
      <input type='checkbox' checked='checked' name='remember'> Remember me
    </label>
  </div>

  <div class='container' style='background-color:#f1f1f1'>
    <button type='button' class='cancelbtn'>Cancel</button>
    <span class='psw'>Forgot <a href='#'>password?</a></span>
  </div>
</form>");

$smarty->display('testsmarty.tpl');


?>