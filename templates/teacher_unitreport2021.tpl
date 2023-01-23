{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Class Unit Report <span>| Today - {$todaydate}</span>
                </h5>
                <h5 class="card-title">{$classname}</h5>

                <div class="card">
                    <div class="card-body">


                        <!-- Small tables -->
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Category #</th>
                                    <th scope="col">Unit #</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Grade</th>
                                    <th scope="col">Subject</th>
                                    <th scope="col">Start Date</th>
                                    <th scope="col">End Date</th>
                                    <th scope="col">Active</th>
                                </tr>
                            </thead>
                            <tbody>
                                {$unitlist}

                            </tbody>
                        </table>
                        <!-- End small tables -->

                    </div>
                </div>
            </div>

        </div>
    </div><!-- End Recent Sales -->


    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }