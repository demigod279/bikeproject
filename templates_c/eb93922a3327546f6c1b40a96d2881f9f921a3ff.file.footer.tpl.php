<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-04-21 05:55:33
         compiled from ".\templates\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:873861881644287c5907107-78337316%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb93922a3327546f6c1b40a96d2881f9f921a3ff' => 
    array (
      0 => '.\\templates\\footer.tpl',
      1 => 1678972422,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '873861881644287c5907107-78337316',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_644287c590dda0_40014881',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_644287c590dda0_40014881')) {function content_644287c590dda0_40014881($_smarty_tpl) {?>

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
>
    $(document).ready(function() {
        $('#example').DataTable();
    });
<?php echo '</script'; ?>
>



    <?php echo '<script'; ?>
 src="https://code.jquery.com/jquery-3.5.1.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://cdn.datatables.net/1.13.3/js/dataTables.bootstrap4.min.js"><?php echo '</script'; ?>
>

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



var isadmin = false;
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

    console.log("isadmin: " + isadmin);


    if (isadmin == true) {
                    var adminDropdown = document.getElementById("adminDropdown");
                    adminDropdown.style.visibility = "visible";
                } else {
                    var adminDropdown = document.getElementById("adminDropdown");
                    adminDropdown.style.visibility = "hidden";
                }

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
              
success: function(data) {

data = data.replace(/^\s+|\s+$/g, '');
console.log("checkLogin data:[" + data + "]");


if (data.trim() == "0") {
    strreturnlogin = false;

} else if (data.trim() == "error") {
    strreturnlogin = false;

} else {
    strreturnlogin = true;
    userName = arguserName;
    if (data.trim() == "admin")
        isadmin = true;
    else
        isadmin = false;

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
>

<?php echo '<script'; ?>
>
'use strict';

function spray() {
  // Globals
  var random = Math.random
    , cos = Math.cos
    , sin = Math.sin
    , PI = Math.PI
    , PI2 = PI * 2
    , timer = undefined
    , frame = undefined
    , confetti = [];

  var particles = 10
    , spread = 40
    , sizeMin = 3
    , sizeMax = 12 - sizeMin
    , eccentricity = 10
    , deviation = 100
    , dxThetaMin = -.1
    , dxThetaMax = -dxThetaMin - dxThetaMin
    , dyMin = .13
    , dyMax = .18
    , dThetaMin = .4
    , dThetaMax = .7 - dThetaMin;

  var colorThemes = [
    function() {
      return color(200 * random()|0, 200 * random()|0, 200 * random()|0);
    }, function() {
      var black = 200 * random()|0; return color(200, black, black);
    }, function() {
      var black = 200 * random()|0; return color(black, 200, black);
    }, function() {
      var black = 200 * random()|0; return color(black, black, 200);
    }, function() {
      return color(200, 100, 200 * random()|0);
    }, function() {
      return color(200 * random()|0, 200, 200);
    }, function() {
      var black = 256 * random()|0; return color(black, black, black);
    }, function() {
      return colorThemes[random() < .5 ? 1 : 2]();
    }, function() {
      return colorThemes[random() < .5 ? 3 : 5]();
    }, function() {
      return colorThemes[random() < .5 ? 2 : 4]();
    }
  ];
  function color(r, g, b) {
    return 'rgb(' + r + ',' + g + ',' + b + ')';
  }

  // Cosine interpolation
  function interpolation(a, b, t) {
    return (1-cos(PI*t))/2 * (b-a) + a;
  }

  // Create a 1D Maximal Poisson Disc over [0, 1]
  var radius = 1/eccentricity, radius2 = radius+radius;
  function createPoisson() {
    // domain is the set of points which are still available to pick from
    // D = union{ [d_i, d_i+1] | i is even }
    var domain = [radius, 1-radius], measure = 1-radius2, spline = [0, 1];
    while (measure) {
      var dart = measure * random(), i, l, interval, a, b, c, d;

      // Find where dart lies
      for (i = 0, l = domain.length, measure = 0; i < l; i += 2) {
        a = domain[i], b = domain[i+1], interval = b-a;
        if (dart < measure+interval) {
          spline.push(dart += a-measure);
          break;
        }
        measure += interval;
      }
      c = dart-radius, d = dart+radius;

      // Update the domain
      for (i = domain.length-1; i > 0; i -= 2) {
        l = i-1, a = domain[l], b = domain[i];
        // c---d          c---d  Do nothing
        //   c-----d  c-----d    Move interior
        //   c--------------d    Delete interval
        //         c--d          Split interval
        //       a------b
        if (a >= c && a < d)
          if (b > d) domain[l] = d; // Move interior (Left case)
          else domain.splice(l, 2); // Delete interval
        else if (a < c && b > c)
          if (b <= d) domain[i] = c; // Move interior (Right case)
          else domain.splice(i, 0, c, d); // Split interval
      }

      // Re-measure the domain
      for (i = 0, l = domain.length, measure = 0; i < l; i += 2)
        measure += domain[i+1]-domain[i];
    }

    return spline.sort();
  }

  // Create the overarching container
  var container = document.createElement('div');
  container.style.position = 'fixed';
  container.style.top      = '0';
  container.style.left     = '0';
  container.style.width    = '100%';
  container.style.height   = '0';
  container.style.overflow = 'visible';
  container.style.zIndex   = '9999';

  // Confetto constructor
  function Confetto(theme) {
    this.frame = 0;
    this.outer = document.createElement('div');
    this.inner = document.createElement('div');
    this.outer.appendChild(this.inner);

    var outerStyle = this.outer.style, innerStyle = this.inner.style;
    outerStyle.position = 'absolute';
    outerStyle.width  = (sizeMin + sizeMax * random()) + 'px';
    outerStyle.height = (sizeMin + sizeMax * random()) + 'px';
    innerStyle.width  = '100%';
    innerStyle.height = '100%';
    innerStyle.backgroundColor = theme();

    outerStyle.perspective = '50px';
    outerStyle.transform = 'rotate(' + (360 * random()) + 'deg)';
    this.axis = 'rotate3D(' +
      cos(360 * random()) + ',' +
      cos(360 * random()) + ',0,';
    this.theta = 360 * random();
    this.dTheta = dThetaMin + dThetaMax * random();
    innerStyle.transform = this.axis + this.theta + 'deg)';

    this.x = window.innerWidth * random();
    this.y = -deviation;
    this.dx = sin(dxThetaMin + dxThetaMax * random());
    this.dy = dyMin + dyMax * random();
    outerStyle.left = this.x + 'px';
    outerStyle.top  = this.y + 'px';

    // Create the periodic spline
    this.splineX = createPoisson();
    this.splineY = [];
    for (var i = 1, l = this.splineX.length-1; i < l; ++i)
      this.splineY[i] = deviation * random();
    this.splineY[0] = this.splineY[l] = deviation * random();

    this.update = function(height, delta) {
      this.frame += delta;
      this.x += this.dx * delta;
      this.y += this.dy * delta;
      this.theta += this.dTheta * delta;

      // Compute spline and convert to polar
      var phi = this.frame % 7777 / 7777, i = 0, j = 1;
      while (phi >= this.splineX[j]) i = j++;
      var rho = interpolation(
        this.splineY[i],
        this.splineY[j],
        (phi-this.splineX[i]) / (this.splineX[j]-this.splineX[i])
      );
      phi *= PI2;

      outerStyle.left = this.x + rho * cos(phi) + 'px';
      outerStyle.top  = this.y + rho * sin(phi) + 'px';
      innerStyle.transform = this.axis + this.theta + 'deg)';
      return this.y > height+deviation;
    };
  }

  function poof() {
    if (!frame) {
      // Append the container
      document.body.appendChild(container);

      // Add confetti
      var theme = colorThemes[0]
        , count = 0;
      (function addConfetto() {
        var confetto = new Confetto(theme);
        confetti.push(confetto);
        container.appendChild(confetto.outer);
        timer = setTimeout(addConfetto, spread * random());
      })(0);

      // Start the loop
      var prev = undefined;
      requestAnimationFrame(function loop(timestamp) {
        var delta = prev ? timestamp - prev : 0;
        prev = timestamp;
        var height = window.innerHeight;

        for (var i = confetti.length-1; i >= 0; --i) {
          if (confetti[i].update(height, delta)) {
            container.removeChild(confetti[i].outer);
            confetti.splice(i, 1);
          }
        }

        if (timer || confetti.length)
          return frame = requestAnimationFrame(loop);

        // Cleanup
        document.body.removeChild(container);
        frame = undefined;
      });
    }
  }

  poof();
};
<?php echo '</script'; ?>
>
<?php }} ?>
