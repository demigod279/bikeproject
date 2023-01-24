<footer class="bg-dark text-white">
        <div class="container py-4">
          <div class="row py-5">
            <div class="col-md-4 mb-3 mb-md-0">
              <h6 class="text-uppercase mb-3">Customer services</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#!">Help &amp; Contact Us</a></li>
                <li><a class="footer-link" href="#!">Returns &amp; Refunds</a></li>
                <li><a class="footer-link" href="#!">Online Stores</a></li>
                <li><a class="footer-link" href="#!">Terms &amp; Conditions</a></li>
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
                <p class="small text-muted mb-0">&copy; 2021 All rights reserved.</p>
              </div>
              <div class="col-md-6 text-center text-md-end">
                <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor" href="https://bootstrapious.com/p/boutique-bootstrap-e-commerce-template">Bootstrapious</a></p>
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
      <script src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/glightbox/js/glightbox.min.js"></script>
      <script src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/nouislider/nouislider.min.js"></script>
      <script src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/swiper/swiper-bundle.min.js"></script>
      <script src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/vendor/choices.js/public/assets/scripts/choices.min.js"></script>
      <script src="js/front.e0700006.js"></script>
      <script src="js/js-cookie.55cdbe0d.js"> </script>
      <script src="js/demo.aa085612.js"> </script>
      <script>
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
        
      </script>
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">