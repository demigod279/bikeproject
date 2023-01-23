{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Student Attendance Report <span>| Today - {$todaydate}</span>
                </h5>


                <div class="card">
                    <div class="card-body">


                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Student</th>
                                    <th scope="col">Grade</th>
                                    <th scope="col">Absent</th>
                                    <th scope="col">Tardy</th>
                                    <th scope="col">Present</th>
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