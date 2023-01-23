{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Lunch Report <span>| Today - {$todaydate}</span>
                </h5>


                <div class="card">
                    <div class="card-body">


                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Student</th>
                                    <th scope="col">Grade</th>
                                    <th scope="col">Lunch</th>
                                    <th scope="col">Special</th>
                                    <th scope="col">Salad</th>
                                    <th scope="col">Milk</th>
                                    <th scope="col">Chocolate</th>
                                    <th scope="col">Date</th>
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