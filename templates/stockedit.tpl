<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->

        <div class="container">



            <form action="stockedit.php?stock_id={$stock_id}" method="POST">

                <div class="col-lg-6">
                    <label class="form-label text-sm text-uppercase" for="firstName">store_name
                    </label>
                    {$store_name}
                </div>
                <div class="col-lg-6">
                    <label class="form-label text-sm text-uppercase" for="firstName">Product name
                    </label>
                    {$product_name}
                </div>
                <div class="row gy-3">
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="firstName">quantity
                        </label>
                        {$quantity}
                    </div>
                </div>
                <input type="hidden" value="{$stock_id}" id="stock_id" name="stock_id" />



                <div class="text-center">
                    <button type="submit" value="Save" id="save" name="save" class="btn btn-primary">Save
                        Changes</button>

                </div>





            </form>
        </div>







        {include file="footer.tpl"}

    </div>
</body>


</html>