<!DOCTYPE html>
<html>

{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->

        <div class="container">


            
        <form action="brandsedit.php?brand_id={$brand_id}" method="POST">
        <div class="row gy-3">
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="firstName">brand_name
                </label>
                {$brand_name}
            </div>
<input type="hidden" value="{$brand_id}" id="brand_id" name="brand_id" />



<div class="text-center">
<button type="submit" value="Save" id="save" name="save"
class="btn btn-primary">Save Changes</button>
<a class="btn btn-secondary"
href="brandsedit.php?remove=true&brand_id={$brand_id}"
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

    
