<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->

        <div class="container">


            
        <form action="ordersedit.php?order_id={$order_id}" method="POST">
        <div class="row gy-3">
            
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="email">Customer name
                </label>
                {$customer_id}
            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="lastName">Status
                </label>
                {$order_status}
            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="lastName">Order date
                </label>
                {$order_date}
            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="country">Required date</label>
                {$required_date}
            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="address">Shipped date
                </label>
                {$shipped_date}
            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="addressalt">Store name
                </label>
                {$store_id}
            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="city">Staff name </label>
                {$staff_id}
            </div>

            <input type="hidden" value="{$order_id}" id="order_id" name="order_id" />



            <div class="text-center">
                <button type="submit" value="Save" id="save" name="save" class="btn btn-primary">Save
                    Changes</button>    

                <a class="btn btn-secondary" href="ordersedit.php?remove=true&order_id={$order_id}"
                    role="button">Remove
                </a>
            </div>



        </div>

    </form>




        </div>


        {include file="footer.tpl"}
    </div>
</body>


</html>

    
