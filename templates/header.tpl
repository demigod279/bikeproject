
 <header class="header bg-white">
 <div class="container px-lg-3">
   <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.php"><span
         class="fw-bold text-uppercase text-dark">Bike Store</span></a>
     <button class="navbar-toggler navbar-toggler-end" type="button" data-bs-toggle="collapse"
       data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
       aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto">
      <li class="nav-item">
        <!-- Link--><a class="nav-link active" href="index.php">Home</a>
      </li>
      <li class="nav-item">
        <!-- Link--><a class="nav-link" href="shop.php">Shop</a>
      </li>
      <li class="nav-item">
        <!-- Link--><a class="nav-link" href="about.php">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" style="visibility: {$accountdropdown}"
          data-bs-toggle="dropdown" aria-haspopup="false" aria-expanded="false">Account</a>
        <div class="dropdown-menu mt-3 shadow-sm" aria-labelledby="pagesDropdown"><a
            class="dropdown-item border-0 transition-link" href="profile.php">Profile</a><a
            class="dropdown-item border-0 transition-link" href="shop.php">Shop</a><a
            class="dropdown-item border-0 transition-link" href="cart.php">Shopping cart</a><a
            class="dropdown-item border-0 transition-link" href="checkout.php">Checkout</a>
          <a class="dropdown-item border-0 transition-link" href="about.php">About</a>
        </div>
      </li>
      </ul>
      <ul class="navbar-nav ms-auto">
      <li class="nav-item"><a class="nav-link" href="cart.php" style="visibility: {$accountdropdown}"> <i
            class="fas fa-dolly-flatbed me-1 text-gray"></i>Cart</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="#mylogin" data-toggle="modal" id="login">{$loginbutton}
        </a>
      </li>
      </ul>
       
     </div>
   </nav>
 </div>
</header>

<div id="mylogin" class="modal" data-backdrop="static">
<div class="modal-dialog modal-dialog-centered">
  <div class="modal-content" style="height: 360px">
    <form action="#" method="post">
      <div class="modal-header">
        <h4 class="modal-title">Login</h4>
        <hr>
        <h3 name="loginmessage" id="loginmessage"></h3>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label>Login Email</label>
          <label style="color:red" id="loginstatus"></label>
          <input type="text" id="emaillogin" name="emaillogin" class="form-control" autocomplete="off"
            required="required">
        </div>
        <div class="form-group">
          <div class="clearfix">
            <label>Password</label>

          </div>

          <input type="password" id="password" name="password" class="form-control" autocomplete="off"
            required="required">
        </div>
      </div>
      <div class="modal-footer justify-content-between">
        <label class="form-check-label"><input type="checkbox"> Remember me</label>

        <button type="button" class="btn btn-success" onclick="updatelogin();"
          aria-hidden="true">Login</button>  


        <button type="button" class="btn btn-info" onclick="registerpopup();"
          aria-hidden="true">Register</button>  
        <button type="button" class="btn btn-danger" onclick="cancellogin();"
          aria-hidden="true">Cancel</button>  



      </div>
    </form>
  </div>
</div>
</div>

<div id="myregistration" class="modal">
<div class="modal-dialog modal-dialog-centered">
  <div class="modal-content" style="height: 550px">
    <form action="#" method="post">
      <div class="modal-header">
        <h4 class="modal-title">Registration</h4>
        <hr><br>
        <h3 name="registrationmessage" id="registrationmessage"></h3>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label>User Email</label>
          <input type="text" name="emailr" id="emailr" value="" class="form-control" required="required"
            autocomplete="off">
        </div>

        <div class="form-group">
          <div class="clearfix">
            <label>Password</label>

          </div>

          <input type="password" name="passwordr" id="passwordr" value="" class="form-control" required="required"
            autocomplete="off">
        </div>
        <div class="form-group">
          <div class="clearfix">
            <label>Confirm Password</label>

          </div>

          <input type="password" name="password2r" id="password2r" value="" class="form-control" required="required"
            autocomplete="off">
        </div>
      </div>
      <div class="modal-footer justify-content-between">
        <label class="form-check-label"><input type="checkbox"> Remember me</label>

        <input type="button" class="btn btn-success" value="Sign Up" onclick="updateregister();">   
        <button type="button" class="btn btn-info" data-dismiss="modal"
          aria-hidden="true"  onclick="cancelregistration();">Cancel</button>  


      </div>
    </form>
  </div>
</div>

</div>

 




