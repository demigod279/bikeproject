{include file="headerteacher.tpl" }

<body>

    <!-- ======= Header ======= -->
    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_studentprofile2021.php?studentno={$studentno}">Student
                            Profile</a>
                    </li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <div class="modal fade" id="popupboard" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">

                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <iframe width='100%' height='450px' id='mapcanvas'
                            src='https://browserboard.com/whiteboard/TixjACojgjaGG54wigREno?key=BDkSycSHfq3SnMDoqmVizM'
                            frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>
                        </iframe>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Vertically centered Modal-->



        <div class="modal fade" id="popupcalendar" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Calendar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <iframe frameborder="0" height="500px" width="100%"
                            src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
                        </iframe>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Extra Large Modal-->


        <div class="modal fade" id="popupgrades" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Student Grades</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <div id="barChart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                new ApexCharts(document.querySelector("#barChart"), {
                                    series: [{
                                        data: [{$lessongrades}]
                                    }],
                                    chart: {
                                        type: 'bar',
                                        height: 600
                                    },
                                    plotOptions: {
                                        bar: {
                                            borderRadius: 4,
                                            horizontal: true,
                                        }
                                    },
                                    dataLabels: {
                                        enabled: false
                                    },
                                    xaxis: {
                                        categories: [{$lessonnames} ],
                                    }
                                }).render();
                            });
                        </script>
                        <!-- End Bar Chart -->




                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Extra Large Modal-->



        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-8">
                    <div class="row">

                        {$YouHaveMail}





                        <!-- Sales Card -->
                        <div class="col-xxl-4 col-md-6">
                            <div class="card info-card sales-card">


                                <div class="card-body">
                                    <h5 class="card-title">My Total Coins</h5>

                                    <div class="d-flex align-items-center">
                                        <div
                                            class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-currency-dollar"></i>
                                        </div>
                                        <div class="ps-3">
                                            <span class="text-muted small pt-2 ps-1">{$totalcoins}</span>
                                            <span class="text-muted small pt-2 ps-1">Coin Worth $1000</span>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div><!-- End Sales Card -->

                        <!-- Revenue Card -->
                        <div class="col-xxl-4 col-md-6">
                            <div class="card info-card revenue-card">



                                <div class="card-body">
                                    <h5 class="card-title">Bank Balance</span></h5>

                                    <div class="d-flex align-items-center">
                                        <div
                                            class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-currency-dollar"></i>
                                        </div>
                                        <div class="ps-3">
                                            <span class="text-muted small pt-2 ps-1">{$CurrentBalance}</span>
                                            <span class="text-muted small pt-2 ps-1">Statement for Detail</span>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div><!-- End Revenue Card -->

                        <!-- Customers Card -->
                        <div class="col-xxl-4 col-xl-12">

                            <div class="card info-card customers-card">


                                <div class="card-body">
                                    <h5 class="card-title">Stock Portfolio</span></h5>

                                    <div class="d-flex align-items-center">
                                        <div
                                            class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-currency-dollar"></i>
                                        </div>
                                        <div class="ps-3">
                                            <span class="text-muted small pt-2 ps-1">{$CurrentStock}</span>
                                            <span class="text-muted small pt-2 ps-1">Stocks you own</span>

                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div><!-- End Customers Card -->

                        <div class="col-12">

                            <div class="card">
                                <div class="card-body">

                                    <h5 class="card-title"> <a class="btn btn-primary"
                                            href="teacher_studentgrade2021.php?studentno={$studentno}&email=send"
                                            role="button">Email</a>&nbsp;&nbsp;Report Card for
                                        {$StudentName}&nbsp;&nbsp;&nbsp;&nbsp;
                                        {$ModifiedAdvanced}<br>Date:&nbsp;<b> {$CurrentDate}</b></h5>




                                    <div class="panel-body">
                                        <table class="table">
                                            <tbody>

                                                {$ClassGrades}

                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>

                        </div>

                        <div class="col-12">

                            <div class="card">
                                <div class="card-body">


                                    <div class="iconslist">


                                        <div class="icon">
                                            <a data-bs-toggle="modal" data-bs-target="#popupcalendar"> <i
                                                    class="bi bi-calendar3"></i></a>
                                            <div class="label">Calender</div>
                                        </div>



                                        <div class="icon">
                                            <a data-bs-toggle="modal" data-bs-target="#popupgrades"><i
                                                    class="bi bi-bar-chart-line"></i></a>
                                            <div class="label">Grades</div>
                                        </div>
                                    </div>


                                </div>
                            </div>

                        </div>


                        <!-- Recent Sales -->
                        <div class="col-12">
                            <div class="card recent-sales">



                                <div class="card-body">
                                    <h5 class="card-title">Recent Lessons <span>| Today - {$todaydate}</span></h5>

                                    <table class="table table-borderless datatable">
                                        <thead>
                                            <tr>
                                                <th scope="col">Date/Time</th>
                                                <th scope="col">Subject</th>
                                                <th scope="col">Lesson</th>
                                                <th scope="col">Grade</th>
                                                <th scope="col">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            {$recentlessons}

                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div><!-- End Recent Sales -->



                    </div>
                </div><!-- End Left side columns -->

                <!-- Right side columns -->
                <div class="col-lg-4">

                    <!-- Recent Activity -->
                    <div class="card">


                        <div class="card-body">
                            <h5 class="card-title"> <a class="btn btn-primary"
                                    href="teacher_studentgrade2021.php?studentno={$studentno}&email=sendmissing"
                                    role="button">Email</a>&nbsp;&nbsp;Missing Assignments <span>| Today -
                                    {$todaydate}</span></h5>

                            <div class="activity">

                                {$missingassignments}




                            </div>

                        </div>
                    </div><!-- End Recent Activity -->

                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title">Today's Summary <span>| Today - {$todaydate}</span></h5>

                            <div class="news">

                                {$todaysummary}


                            </div><!-- End sidebar recent posts-->

                        </div>
                    </div><!-- End News & Updates -->


                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title">School News &amp; Updates <span></span></h5>

                            <div class="news">

                                <div class="post-item clearfix">



                                    {$SchoolEventFeeds}

                                </div><!-- End sidebar recent posts-->

                            </div>
                        </div><!-- End News & Updates -->

                    </div><!-- End Right side columns -->

                </div>
        </section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }