

<!DOCTYPE html>
<html>
{include file="head.tpl"}

<body>
    <div class="page-holder">
        <!-- navbar-->
        {include file="header.tpl"}
        <!--  Modal -->
        <div class="container">
            <!-- HERO SECTION-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">Orders</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.php">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Orders</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>



            <br>
            <table id="example" class="table table-striped table-bordered datatable">
                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Customer name</th>
                        <th scope="col">Order status</th>
                        <th scope="col">Order Date</th>
                        <th scope="col">Required date</th>
                        <th scope="col">Shipped date</th>
                        <th scope="col">Store name</th>

                    </tr>
                </thead>
                <tbody>

                    {$orders}

                </tbody>
            </table>
            <br><br>


        </div>
        {include file="footer.tpl"}
    </div>
</body>

</html>

  