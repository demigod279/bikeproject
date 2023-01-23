{include file="headerteacher.tpl" }

<body>


    <div class="row">

        <!-- Recent Sales -->

        <div class="card recent-sales">



            <div class="card-body">
                <h5 class="card-title">Class Lesson Report <span>| Today - {$todaydate}</span>
                </h5>
                <h5 class="card-title">{$classname}</h5>

                <div class="card">
                    <div class="card-body">


                        <!-- Small tables -->
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th scope="col">Lesson #</th>
                                    <th scope="col">Lesson</th>
                                    <th scope="col">Chapter</th>
                                    <th scope="col">Unit</th>
                                    <th scope="col">Due Date</th>
                                    <th scope="col">Concepts</th>
                                    <th scope="col">Active</th>
                                    <th scope="col">Test</th>
                                </tr>
                            </thead>
                            <tbody>
                                {$lessonlist}

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