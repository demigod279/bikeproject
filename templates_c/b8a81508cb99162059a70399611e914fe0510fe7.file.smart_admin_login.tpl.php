<?php /* Smarty version Smarty-3.1.21-dev, created on 2018-06-05 08:39:24
         compiled from ".\templates\smart_admin_login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16304566f0971b2ad50-30002428%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b8a81508cb99162059a70399611e914fe0510fe7' => 
    array (
      0 => '.\\templates\\smart_admin_login.tpl',
      1 => 1487720160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16304566f0971b2ad50-30002428',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_566f0971d11b93_00266442',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_566f0971d11b93_00266442')) {function content_566f0971d11b93_00266442($_smarty_tpl) {?><?php  $_config = new Smarty_Internal_Config("test.conf", $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("setup", 'local'); ?>


<?php echo $_smarty_tpl->getSubTemplate ("headerlogin.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('title'=>'Innovakids'), 0);?>



<div id="wrapper">
   
  <div class="content">

 
    <div class="container">
        
        <div class="row">
                   
            
         <?php echo '<script'; ?>
 type="text/javascript">

  // Original JavaScript code by Chirp Internet: www.chirp.com.au
  // Please acknowledge use of this code by including this header.

         var Type;
         var Url;
         var Data;
         var ContentType;
         var DataType;
         var ProcessData;
    
             
   
        function GetLogin() 
        {
                 
                document.getElementById('invalid').innerHTML =  'Logging In...';
                        
                
            var strpw = document.getElementById('Password').value;
             
                strpw = encode(strpw);
            
              //alert(strpw);
            
                
        window.location="index.php?username="+document.getElementById('EmailLogin').value+"&zipzot="+strpw;
                 
         }
            

function encode(str) {
    var encoded = "";
    for (i=0; i<str.length;i++) {
        var a = str.charCodeAt(i);
        var b = a ^ 123;    // bitwise XOR with any number, e.g. 123
        encoded = encoded+String.fromCharCode(b);
    }
    return encoded;
}



    <?php echo '</script'; ?>
>
    
    
    
                    <!-- Right Column -->
 <div class="account-wrapper">

    <div class="account-body">

      <h3>Welcome to Innovakids.</h3>
        <h3>Administrative Login</h3>

      <h5>Please sign in to get access.</h5>

    

        <div class="form-group">
          <label for="login-username" class="placeholder-hidden">Email Login</label>
          <input type="text" class="form-control" id="EmailLogin" placeholder="Username" tabindex="1">
        </div> <!-- /.form-group -->

        <div class="form-group">
          <label for="login-password" class="placeholder-hidden">Password</label>
          <input type="Password" class="form-control" id="Password" placeholder="Password" tabindex="2">
        </div> <!-- /.form-group -->

        <div class="form-group clearfix">
          <div class="pull-left">                                       
           
               <label  class="placeholder-hidden">You must set www.innovakids.com as a Trusted site.</label>
               <label  class="placeholder-hidden">Discussion Chats and Video Chat Require Google Chrome as your Browser.</label>
             
            
          </div>


 <label for="invalid" id="invalid" class="placeholder-hidden" style="color:Red"></label>

          
        </div> <!-- /.form-group -->

        <div class="form-group">
          <button type="button" class="btn btn-primary btn-block btn-lg" tabindex="4"
               onclick="GetLogin();" >
            Signin &nbsp; <i class="fa fa-play-circle"></i>
          </button>
        </div> <!-- /.form-group -->

    <!--   onclick="window.location.href='mainmenu.html'" -->


    </div> <!-- /.account-body -->

    <div class="account-footer">
      <p>
      Ver 1.2    Don't have an account? &nbsp;
      <a href="./account-signup.php" class="">Create an Account!</a>
           <label class="checkbox-inline">
          <a href="account-terms.php" target="_blank">Terms of Service</a> &amp; <a href="account-privacy.php" target="_blank">Privacy Policy</a>
          </label>
      </p>
    </div> <!-- /.account-footer -->

  </div> <!-- /.account-wrapper -->
                <!-- End Right Column -->
    
    
    
    
    
  </div>
</div>
</div>                


<!-- Plugin JS -->


<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
