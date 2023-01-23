{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Student Report <span>| Today - {$todaydate}</span>
                </h5>


                <div class="card">
                    <div class="card-body">


                        <!-- Small tables -->
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Action</th>
                                    <th scope="col">Parent 1</th>
                                    <th scope="col">Parent 2</th>
                                    <th scope="col">Student</th>
                                    <th scope="col">Grade</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Cell</th>
                                </tr>
                            </thead>
                            <tbody>
                                {$studentlist}

                            </tbody>

                        </table>
                        <!-- End small tables -->

                    </div>
                </div>
            </div>

        </div>
    </div><!-- End Recent Sales -->


{include file="teacherfooter.tpl" }