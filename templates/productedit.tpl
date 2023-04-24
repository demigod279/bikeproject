<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->

        <div class="container">


            <form action="productedit.php?product_id={$product_id}" method="POST">
                <div class="row gy-3">
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="firstName">Product name
                        </label>
                        {$product_name}
                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="phone">Model year
                        </label>
                        {$model_year}
                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="email">Category name
                        </label>
                        {$category_id}
                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="lastName">Brand name
                        </label>
                        {$brand_id}
                    </div>
                    <div class="col-lg-6 form-group">
                        <label class="form-label text-sm text-uppercase" for="country">List price</label>
                        {$list_price}
                    </div>
                    <div class="col-lg-12">
                        <label class="form-label text-sm text-uppercase" for="address">Description
                        </label>
                        {$description}
                    </div>
                    <div class="col-lg-12">
                        <label class="form-label text-sm text-uppercase" for="addressalt">Sku
                        </label>
                        {$sku}
                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="city">Tags </label>
                        {$tags}
                    </div>

                    <input type="hidden" value="{$product_id}" id="product_id" name="product_id" />



                    <div class="text-center">
                        <button type="submit" value="Save" id="save" name="save" class="btn btn-primary">Save
                            Changes</button>    

                        <a class="btn btn-secondary" href="productedit.php?remove=true&product_id={$product_id}"
                            role="button">Remove
                        </a>
                    </div>



                </div>

            </form>

            <br>
            <table id="example" class="table table-striped table-bordered datatable">
                <thead>
                    <tr>
                        <th scope="col">edit</th>
                        <th scope="col">Store Name</th>
                        <th scope="col">Quantity</th>

                    </tr>
                </thead>
                <tbody>

                    {$stock}

                </tbody>
            </table>
            <br><br>



        </div>


        {include file="footer.tpl"}
    </div>
</body>


</html>