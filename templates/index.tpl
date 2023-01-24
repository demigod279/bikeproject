
<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->

        <!-- HERO SECTION-->
        <div class="container">
            <section class="hero pb-3 bg-cover bg-center d-flex align-items-center"
                style="background: url('images/specialbikeimage.jpg')">
                <div class="container py-5">
                    <div class="row px-4 px-lg-5">
                        <div class="col-lg-6">
                            <p class="text-muted small text-uppercase mb-2">2023 New Bikes</p>
                            <h1 class="h2 text-uppercase mb-3">20% off specials</h1><a class="btn btn-dark"
                                href="shop.php">Browse Bike Store</a>
                        </div>
                    </div>
                </div>
            </section>


            <!-- CATEGORIES SECTION-->
            <section class="pt-5">
                <header class="text-center">
                    <p class="small text-muted small text-uppercase mb-1">Quality Bikes and Accessories</p>
                    <h2 class="h5 text-uppercase mb-4">Browse our categories</h2>
                </header>
                <div class="row">

                    <!-- CATEGORIES SECTION this div section gets replaced by the database categories dd the image varchar(255) to the-->
                    <div class="col-md-4"><a class="category-item" href="shop.php?category_id"><img class="img-fluid"
                                src="images\bike1.jpg" alt="" /><strong class="category-item-title">[categories
                                name]</strong></a>
                    </div>

                </div>
            </section>

            
            <!-- TRENDING PRODUCTS-->
            <section class="py-5">
                <header>
                    <p class="small text-muted small text-uppercase mb-1">Top Sellers</p>
                    <h2 class="h5 text-uppercase mb-4">Top trending products</h2>
                </header>


                <div class="row">
                    <!-- PRODUCT   This whole section gets insert by the database  add the image varchar(255) to the products-->
                    <div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="product text-center">
                            <div class="position-relative mb-3">
                                <div class="badge text-white bg-"></div><a class="d-block"
                                    href="detail.php?id=[productid]"><img class="img-fluid w-100" src="images\bike2.jpg"
                                        alt="..."></a>
                                <div class="product-overlay">
                                    <ul class="mb-0 list-inline">
                                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark"
                                                href="#!"><i class="far fa-heart"></i></a></li>
                                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark"
                                                href="cart.php">Add to cart</a></li>
                                        <li class="list-inline-item me-0"><a class="btn btn-sm btn-outline-dark"
                                                href="#productView" data-bs-toggle="modal"><i
                                                    class="fas fa-expand"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <h6> <a class="reset-anchor" href="detail.php?id=[productid]">[productname]</a></h6>
                            <p class="small text-muted">[productprice]</p>
                        </div>
                    </div>


                </div>
            </section>
            <!-- SERVICES-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row text-center gy-3">
                        <div class="col-lg-4">
                            <div class="d-inline-block">
                                <div class="d-flex align-items-end">
                                    <svg class="svg-icon svg-icon-big svg-icon-light">
                                        <use xlink:href="#delivery-time-1"> </use>
                                    </svg>
                                    <div class="text-start ms-3">
                                        <h6 class="text-uppercase mb-1">Free shipping</h6>
                                        <p class="text-sm mb-0 text-muted">Free shipping worldwide</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="d-inline-block">
                                <div class="d-flex align-items-end">
                                    <svg class="svg-icon svg-icon-big svg-icon-light">
                                        <use xlink:href="#helpline-24h-1"> </use>
                                    </svg>
                                    <div class="text-start ms-3">
                                        <h6 class="text-uppercase mb-1">24 x 7 service</h6>
                                        <p class="text-sm mb-0 text-muted">Free shipping worldwide</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="d-inline-block">
                                <div class="d-flex align-items-end">
                                    <svg class="svg-icon svg-icon-big svg-icon-light">
                                        <use xlink:href="#label-tag-1"> </use>
                                    </svg>
                                    <div class="text-start ms-3">
                                        <h6 class="text-uppercase mb-1">Festivaloffers</h6>
                                        <p class="text-sm mb-0 text-muted">Free shipping worldwide</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- NEWSLETTER-->

        </div>
        {include file="footer.tpl"}
    </div>
</body>

</html>


