<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->

        <div class="container">
        <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
            <div class="container">
                <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                    <div class="col-lg-6">
                        <h1 class="h2 text-uppercase mb-0">Customer Profile</h1>
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
            <h2 class="h5 text-uppercase mb-4">Billing details</h2>
            <div class="row">
                <div class="col-lg-8">
                    <form action="profile.php" method="POST">
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
                                    data-bs-toggle="collapse" data-bs-target="#alternateAddress">
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
                            <div class="col-lg-12 form-group">
                                <button class="btn btn-dark" type="submit">Place order</button>
                            </div>
                            
    <input type="hidden" value="{$customer_id}" id="customer_id" name="customer_id" />



    <div class="text-center">
        <button type="submit" value="Save" id="save" name="save"
            class="btn btn-primary">Save Changes</button>    

        <a class="btn btn-secondary"
            href="profile.php?remove=true&customer_id={$customer_id}"
            role="button">Remove
        </a>
    </div>



                        </div>
                        
                    </form>
                </div>



        </div>


        {include file="footer.tpl"}
    </div>
</body>


</html>

    
