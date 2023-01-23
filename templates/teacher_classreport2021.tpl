{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Class Report <span>| Today - {$todaydate}</span>
                </h5>


                <div class="card">
                    <div class="card-body">


                        <!-- Small tables -->
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Class #</th>
                                    <th scope="col">Class</th>
                                    <th scope="col">Department</th>
                                    <th scope="col">Code</th>
                                    <th scope="col">Period</th>
                                    <th scope="col">Time</th>
                                    <th scope="col">Grade</th>
                                    <th scope="col">Teacher</th>
                                </tr>
                            </thead>
                            <tbody>
                                {$classlist}

                            </tbody>
                        </table>
                        <!-- End small tables -->

                    </div>
                </div>
            </div>

        </div>
    </div><!-- End Recent Sales -->

    <style>
        .table-condensed {
            font-size: 10px;
        }
    </style>


    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }