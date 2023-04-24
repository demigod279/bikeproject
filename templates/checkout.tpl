<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body><div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->
<div class="modal fade" id="productView" tabindex="-1">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content overflow-hidden border-0">
                    <button class="btn-close p-4 position-absolute top-0 end-0 z-index-20 shadow-0" type="button"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="modal-body p-0">
                        <div class="row align-items-stretch">
                            <div class="col-lg-6 p-lg-0"><a
                                    class="glightbox product-view d-block h-100 bg-cover bg-center"
                                    style="background: url(https://d19m59y37dris4.cloudfront.net/boutique/2-0/img/product-5.aff049a7.jpg)"
                                    href="img/product-5.aff049a7.jpg" data-gallery="gallery1"
                                    data-glightbox="Red digital smartwatch"></a><a class="glightbox d-none"
                                    href="img/product-5-alt-1.590676e9.jpg" data-gallery="gallery1"
                                    data-glightbox="Red digital smartwatch"></a><a class="glightbox d-none"
                                    href="img/product-5-alt-2.bfa04461.jpg" data-gallery="gallery1"
                                    data-glightbox="Red digital smartwatch"></a></div>
                            <div class="col-lg-6">
                                <div class="p-4 my-md-4">
                                    <ul class="list-inline mb-2">
                                        <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i>
                                        </li>
                                        <li class="list-inline-item m-0 1"><i
                                                class="fas fa-star small text-warning"></i></li>
                                        <li class="list-inline-item m-0 2"><i
                                                class="fas fa-star small text-warning"></i></li>
                                        <li class="list-inline-item m-0 3"><i
                                                class="fas fa-star small text-warning"></i></li>
                                        <li class="list-inline-item m-0 4"><i
                                                class="fas fa-star small text-warning"></i></li>
                                    </ul>
                                    <h2 class="h4">Red digital smartwatch</h2>
                                    <p class="text-muted">$250</p>
                                    <p class="text-sm mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In
                                        ut ullamcorper leo, eget euismod orci. Cum sociis natoque penatibus et magnis
                                        dis parturient montes nascetur ridiculus mus. Vestibulum ultricies aliquam
                                        convallis.</p>
                                    <div class="row align-items-stretch mb-4 gx-0">
                                        <div class="col-sm-7">
                                            <div
                                                class="border d-flex align-items-center justify-content-between py-1 px-3">
                                                <span
                                                    class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
                                                <div class="quantity">
                                                    <button class="dec-btn p-0"><i
                                                            class="fas fa-caret-left"></i></button>
                                                    <input class="form-control border-0 shadow-0 p-0" type="text"
                                                        value="1">
                                                    <button class="inc-btn p-0"><i
                                                            class="fas fa-caret-right"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-5"><a
                                                class="btn btn-dark btn-sm w-100 h-100 d-flex align-items-center justify-content-center px-0"
                                                href="cart.php">Add to cart</a></div>
                                    </div><a class="btn btn-link text-dark text-decoration-none p-0" href="#!"><i
                                            class="far fa-heart me-2"></i>Add to wish list</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- HERO SECTION-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">Checkout</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.php">Home</a></li>
                                    <li class="breadcrumb-item"><a class="text-dark" href="cart.php">Cart</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <!-- Shipping ADDRESS-->
            <h2 class="h5 text-uppercase mb-4">Shipping details</h2>
            <div class="row">
                <div class="col-lg-8">
                <form action="index.php?confetti=1" method="POST">   
                <!--<form method="POST">-->
                        <div class="row gy-3">
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="firstName">First name
                                </label>
                                {$first_name}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="lastName">Last name
                                </label>
                                {$last_name}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="email">Email address
                                </label>
                                {$email}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="phone">Phone number
                                </label>
                                {$phone}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="company">Company name
                                    (optional) </label>
                                {$company_name}
                            </div>
                            <div class="col-lg-6 form-group">
                                <label class="form-label text-sm text-uppercase" for="country">Country</label>
                                {$country}
                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="address">Address line 1
                                </label>
                                {$street}
                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="addressalt">Address line 2
                                </label>
                                {$street2}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="city">Town/City </label>
                                {$city}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="state">State/County
                                </label>
                                {$state}
                            </div>
                            <div class="col-lg-6">
                                <button class="btn btn-link text-dark p-0 shadow-0" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#alternateAddress" >
                                    <div class="form-check">
                                    <input class="form-check-input" id="alternateAddressCheckbox"
                                    type="checkbox">
                                        <label class="form-check-label" for="alternateAddressCheckbox">Alternate
                                            Shipping address</label>
                                    </div>
                                </button>
                            </div>
                            <div class="collapse" id="alternateAddress">
                                <div class="row gy-3">
                                    <div class="col-12 mt-4">
                                        <h2 class="h4 text-uppercase mb-4">Alternative Shipping details</h2>
                                    </div>
                                    <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="firstName">First name
                                </label>
                                {$alt_first_name}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="lastName">Last name
                                </label>
                                {$alt_last_name}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="email">Email address
                                </label>
                                {$email}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="phone">Phone number
                                </label>
                                {$alt_phone}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="company">Company name
                                    (optional) </label>
                                {$alt_company_name}
                            </div>
                            <div class="col-lg-6 form-group">
                                <label class="form-label text-sm text-uppercase" for="country">Country</label>
                                {$shipping_country}
                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="address">Address line 1
                                </label>
                                {$alt_street}
                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="addressalt">Address line 2
                                </label>
                                {$alt_street2}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="city">Town/City </label>
                                {$alt_city}
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="state">State/County
                                </label>
                                {$alt_state}
                            </div>
                                </div>
                            </div>
                            
                            </div>
                            <div class="text-center">
                            <button type="submit" value="Save" id="save" name="save"
                                class="btn btn-primary" onclick="spray()">Place order</button>    
                    
                            
                        </div>
                        </form>
                    </div>
                    
                    
       <!-- ORDER SUMMARY
       <div class="col-lg-4">
       <div class="card border-0 rounded-0 p-lg-4 bg-light">
           <div class="card-body">
               <h5 class="text-uppercase mb-4">Your order</h5>
               {$carttable}
               <hr>
               Total: {$subtotal}
           </div>
       </div>
   </div>
-->





                    <!-- ORDER SUMMARY-->
                    <div class="col-lg-4">
                    
                        <div class="card border-0 rounded-0 p-lg-4 bg-light">
                            <div class="card-body">
                                <h5 class="text-uppercase mb-4">Cart total</h5>
                                <ul class="list-unstyled mb-0">
                                    <li class="d-flex align-items-center justify-content-between"><strong
                                            class="text-uppercase small font-weight-bold">Subtotal</strong><span
                                            class="text-muted small">${$subtotal}</span></li>
                                            <li class="d-flex align-items-center justify-content-between"><strong
                                        class="text-uppercase small font-weight-bold">Shipping</strong><span
                                        class="text-muted small">${$shipping}</span></li>
                                    <li class="d-flex align-items-center justify-content-between"><strong
                                        class="text-uppercase small font-weight-bold">Tax</strong><span
                                        class="text-muted small">${$tax}</span></li>     
                                    <li class="border-bottom my-2"></li>
                                    <li class="d-flex align-items-center justify-content-between mb-4"><strong
                                            class="text-uppercase small font-weight-bold">Total</strong><span>${$grandtotal}</span>
                                    </li>
                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        


        {include file="footer.tpl"}
    </div>
</body>


</html>

    
