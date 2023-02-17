<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-02-17 05:46:50
         compiled from ".\templates\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:155554282563ef854a94da63-39581058%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb93922a3327546f6c1b40a96d2881f9f921a3ff' => 
    array (
      0 => '.\\templates\\footer.tpl',
      1 => 1675694615,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '155554282563ef854a94da63-39581058',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_63ef854a9509a9_23791952',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_63ef854a9509a9_23791952')) {function content_63ef854a9509a9_23791952($_smarty_tpl) {?>

        <footer class="bg-dark text-white">
        <div class="container py-4">
            <div class="row py-5">
                <div class="col-md-4 mb-3 mb-md-0">
                    <h6 class="text-uppercase mb-3">Customer services</h6>
                    <ul class="list-unstyled mb-0">
                        <li><a class="footer-link" href="#!">Help & Contact Us</a></li>
                        <li><a class="footer-link" href="#!">Returns & Refunds</a></li>
                        <li><a class="footer-link" href="#!">Online Stores</a></li>
                        <li><a class="footer-link" href="#!">Terms & Conditions</a></li>
                    </ul>
                </div>
                <div class="col-md-4 mb-3 mb-md-0">
                    <h6 class="text-uppercase mb-3">Company</h6>
                    <ul class="list-unstyled mb-0">
                        <li><a class="footer-link" href="#!">What We Do</a></li>
                        <li><a class="footer-link" href="#!">Available Services</a></li>
                        <li><a class="footer-link" href="#!">Latest Posts</a></li>
                        <li><a class="footer-link" href="#!">FAQs</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h6 class="text-uppercase mb-3">Social media</h6>
                    <ul class="list-unstyled mb-0">
                        <li><a class="footer-link" href="#!">Twitter</a></li>
                        <li><a class="footer-link" href="#!">Instagram</a></li>
                        <li><a class="footer-link" href="#!">Tumblr</a></li>
                        <li><a class="footer-link" href="#!">Pinterest</a></li>
                    </ul>
                </div>
            </div>
            <div class="border-top pt-4" style="border-color: #1d1d1d !important">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start">
                        <p class="small text-muted mb-0">© 2021 All rights reserved.</p>
                    </div>
                    <div class="col-md-6 text-center text-md-end">

                    </div>
                </div>
            </div>
        </div>
    </footer>
    <button class="btn btn-primary btn-sm d-none d-lg-inline-block" type="button" data-bs-toggle="collapse" data-bs-target="#style-switch" id="style-switch-button"><i class="fa fa-cog fa-2x"></i></button>
      <div class="collapse" id="style-switch">
        <h5>Select theme colour</h5>
        <form class="mb-3">
          <select class="form-select" name="colour" id="colour">
            <option value="">select colour variant</option>
            <option value="css/style.default.3fcf2f25.css">gold</option>
            <option value="css/style.red.6487edc8.css">red</option>
            <option value="css/style.pink.2763b2c6.css">pink</option>
            <option value="css/style.green.5389dff1.css">green</option>
            <option value="css/style.violet.6018f10d.css">violet</option>
            <option value="css/style.sea.9789c848.css">sea</option>
            <option value="css/style.blue.fe857ec8.css">blue</option>
          </select>
        </form>
        <p><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/img/template-mac.e1286699.png" alt=""></p>
        <p class="text-muted text-sm">Stylesheet switching is done via JavaScript and can cause a blink while page loads. This will not happen in your production code.</p>
      </div>

    <!-- JavaScript files-->
    <?php echo '<script'; ?>
 src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/bootstrap/js/bootstrap.bundle.min.js">
    <?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/glightbox/js/glightbox.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/nouislider/nouislider.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/swiper/swiper-bundle.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>

        src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/choices.js/public/assets/scripts/choices.min.js">
    <?php echo '</script'; ?>
>
    
    <?php echo '<script'; ?>
>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {

            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
                var div = document.createElement("div");
                div.className = 'd-none';
                div.innerHTML = ajax.responseText;
                document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // this is set to BootstrapTemple website as you cannot 
        // inject local SVG sprite (using only 'icons/orion-svg-sprite.c2a8f15b.svg' path)
        // while using file:// protocol
        // pls don't forget to change to your domain :)
        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg');
    <?php echo '</script'; ?>
>
    <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


<!--Add this to the script section at the bottom in the footer-->


<?php echo '<script'; ?>
>
function cancellogin() {

    $('#mylogin').modal('hide');
    $('#mylogin').hide();
    $('.modal-backdrop').hide();

}


function registerpopup() {

$('#myregistration').modal('show');

}

  function cancelregistration() {

                $('#myregistration').modal('hide');
                $('#myregistration').hide();
                //$('.modal-backdrop').hide();

            }



function updatelogin() {
        
       
    userName = document.getElementById("emaillogin").value;
    password = document.getElementById("password").value;


    if (checkLogin(userName, password) == false) {

        document.getElementById("loginstatus").innerText = "User ID / Password Not Correct";
        userName = "";
        password = "";
        document.getElementById("password").value = "";
        return false;

    }

    //This will set the Account menu item to show after a login
    var apagesDropdown = document.getElementById("pagesDropdown");
                apagesDropdown.style.visibility = "visible";


    document.getElementById("login").innerText = "Logout";
    sessionStorage.setItem("username", userName);



    $('#mylogin').modal('hide');
    $('#mylogin').hide();
    $('.modal-backdrop').hide();

    return true;

}

function updateregister() {



        //clearInterval(setintervalstart);

       var passwordr = document.getElementById("passwordr").value;


        var password2r = document.getElementById("password2r").value;


        userName = "";

        document.getElementById("password").value = "";
        document.getElementById("emaillogin").value = "";



        if (passwordr != "" && password2r == passwordr) {
            
            var displayname = document.getElementById("emailr").value;
           


            if (checkRegistration(displayname, passwordr, document.getElementById("emailr").value ) == "error") {

                userName = "";
                document.getElementById("registrationmessage").innerText = "Email is already Present. Try Logging in.";
                return false;

            }
            else
            {
                userName = "";

                $('#myregistration').modal('hide');

                $('#myregistration').hide();
                //$('.modal-backdrop').hide();

                $('#mylogin').modal('show');



            }



        }
        else{
            userName = "";
             document.getElementById("registrationmessage").innerText = "Passwords do not Match.";
             return;
        }


    }
    





<?php echo '</script'; ?>
>

<?php echo '<script'; ?>
>

function checkLogin(arguserName, argpassword) {

        
        
          if( arguserName == "")
          {
              return false;
          }
  
     
          var strreturnlogin = false;
          
  
          $.ajax({
              type: "GET",
              url: "checklogin.php",
              dataType: "text",
              async: false,
              data: {
                  type: "login",
                  user: arguserName,
                  password: argpassword,
              },
              success: function (data) {
                data=data.trim();
              
              console.log("checkLogin data: "+data);
                  if (data == "0") {
                      strreturnlogin = false;
                 
                  } else if (data == "error") {
                      strreturnlogin = false;
                  
                  }
                  else 
                  {
                      strreturnlogin = true;
                      userName = arguserName;
                   
                  }
  
  
                  return strreturnlogin;
  
                 
              },
          });
  
  
          return strreturnlogin;
  
      }
      
     function checkRegistration(arguserName, argpassword, argemail) {



var strreturn = false;
alert('1');
$.ajax({
    type: "GET",
    url: "checkregistration.php",
    dataType: "text",
    async: false,
    data: {
        type: "register",
        email: argemail,
        password: argpassword,
        username: arguserName,
    },
    success: function(data) {
    data=data.trim();    
    alert(data);
        if (data == "0") {
            strreturn = false;
        } else if (data == "error") {
            strreturn = false;
        } else {
            strreturn = true;
                                      
        }
       
    },
});


return strreturn;

}






      
<?php echo '</script'; ?>
><?php }} ?>
