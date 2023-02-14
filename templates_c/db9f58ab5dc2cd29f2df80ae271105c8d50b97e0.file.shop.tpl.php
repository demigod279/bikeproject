<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-02-14 06:58:53
         compiled from ".\templates\shop.tpl" */ ?>
<?php /*%%SmartyHeaderCode:104032316763eba1ad9909a7-79921319%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'db9f58ab5dc2cd29f2df80ae271105c8d50b97e0' => 
    array (
      0 => '.\\templates\\shop.tpl',
      1 => 1676298661,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '104032316763eba1ad9909a7-79921319',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'brandslist' => 0,
    'categorieslist' => 0,
    'storeslist' => 0,
    'productslist' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_63eba1ad9a9163_89896337',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_63eba1ad9a9163_89896337')) {function content_63eba1ad9a9163_89896337($_smarty_tpl) {?><!DOCTYPE html>
<html>

<?php echo $_smarty_tpl->getSubTemplate ("head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<body>
    <div class="page-holder">
        <!-- navbar-->
        <?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!--  Modal -->

        <div class="container">
            <!-- HERO SECTION-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">Shop</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Shop</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <div class="container p-0">
                    <div class="row">
                        <!-- SHOP SIDEBAR-->
                        <div class="col-lg-3 order-2 order-lg-1">
                            <h5 class="text-uppercase mb-4">Categories</h5>
                            <div class="py-2 px-4 bg-dark text-white mb-3"><strong
                                    class="small text-uppercase fw-bold">Brands</strong></div>
                            <ul class="list-unstyled small text-muted ps-lg-4 font-weight-normal">
                                <!-- Use this to load the brands , categories, and stores from the database -  <li class="mb-2"><a class="reset-anchor" href="#!">Women's T-Shirts</a></li>-->
                                <?php echo $_smarty_tpl->tpl_vars['brandslist']->value;?>

                            </ul>
                            <div class="py-2 px-4 bg-light mb-3"><strong
                                    class="small text-uppercase fw-bold">Categories</strong></div>
                            <ul class="list-unstyled small text-muted ps-lg-4 font-weight-normal">
                                <?php echo $_smarty_tpl->tpl_vars['categorieslist']->value;?>

                            </ul>
                            <div class="py-2 px-4 bg-light mb-3"><strong
                                    class="small text-uppercase fw-bold">Stores</strong></div>
                            <ul class="list-unstyled small text-muted ps-lg-4 font-weight-normal mb-5">
                                <?php echo $_smarty_tpl->tpl_vars['storeslist']->value;?>

                            </ul>
                            <h6 class="text-uppercase mb-4">Price range</h6>
                            <div class="price-range pt-4 mb-5">
                                <div id="range"></div>
                                <div class="row pt-2">
                                    <div class="col-6"><strong class="small fw-bold text-uppercase">From</strong></div>
                                    <div class="col-6 text-end"><strong class="small fw-bold text-uppercase">To</strong>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <!-- SHOP LISTING-->
                        <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                            <div class="row mb-3 align-items-center">
                                <div class="col-lg-6 mb-2 mb-lg-0">
                                    <p class="text-sm text-muted mb-0">Showing 1–12 of 53 results</p>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                                        <li class="list-inline-item text-muted me-3"><a class="reset-anchor p-0"
                                                href="#!"><i class="fas fa-th-large"></i></a></li>
                                        <li class="list-inline-item text-muted me-3"><a class="reset-anchor p-0"
                                                href="#!"><i class="fas fa-th"></i></a></li>
                                        <li class="list-inline-item">
                                            <select class="selectpicker"
                                                data-customclass="form-control form-control-sm">
                                                <option value>Sort By </option>
                                                <option value="default">Default sorting </option>
                                                <option value="popularity">Popularity </option>
                                                <option value="low-high">Price: Low to High </option>
                                                <option value="high-low">Price: High to Low </option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <!-- PRODUCT use this to load the products from the database like we did in the index. 
                                <div class="col-lg-4 col-sm-6">
                                    <div class="product text-center">
                                        <div class="mb-3 position-relative">
                                            <div class="badge text-white bg-"></div><a class="d-block"
                                                href="detail.html"><img class="img-fluid w-100"
                                                    src="https://d19m59y37dris4.cloudfront.net/boutique/2-0/img/product-1.37a0a89c.jpg"
                                                    alt="..."></a>
                                            <div class="product-overlay">
                                                <ul class="mb-0 list-inline">
                                                    <li class="list-inline-item m-0 p-0"><a
                                                            class="btn btn-sm btn-outline-dark" href="#!"><i
                                                                class="far fa-heart"></i></a></li>
                                                    <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark"
                                                            href="cart.html">Add to cart</a></li>
                                                    <li class="list-inline-item mr-0"><a
                                                            class="btn btn-sm btn-outline-dark" href="#productView"
                                                            data-bs-toggle="modal"><i class="fas fa-expand"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h6> <a class="reset-anchor" href="detail.html">Kui Ye Chen’s AirPods</a></h6>
                                        <p class="small text-muted">$250</p>
                                    </div>
                                </div>-->
                                <!-- PRODUCT-->

                                <?php echo $_smarty_tpl->tpl_vars['productslist']->value;?>






                                <!-- PAGINATION-->
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center justify-content-lg-end">
                                        <li class="page-item mx-1"><a class="page-link" href="#!"
                                                aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                        <li class="page-item mx-1 active"><a class="page-link" href="#!">1</a></li>
                                        <li class="page-item mx-1"><a class="page-link" href="#!">2</a></li>
                                        <li class="page-item mx-1"><a class="page-link" href="#!">3</a></li>
                                        <li class="page-item ms-1"><a class="page-link" href="#!"
                                                aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
            </section>
        </div>


        <?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</body>


</html>

    
<?php }} ?>
