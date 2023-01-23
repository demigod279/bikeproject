{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Device Report <span>| Today - {$todaydate}</span>
                </h5>


                <div class="card">
                    <div class="card-body">


                        <!-- Small tables -->
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Action</th>
                                    <th scope="col">System #</th>
                                    <th scope="col">Device #</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Serial #</th>
                                    <th scope="col">Date Purchased</th>
                                    <th scope="col">Type</th>
                                    <th scope="col">Active</th>
                                </tr>
                            </thead>
                            <tbody>
                                {$devicelist}

                            </tbody>
                        </table>
                        <!-- End small tables -->

                    </div>
                </div>
            </div>

        </div>
    </div><!-- End Recent Sales -->


{include file="teacherfooter.tpl" }