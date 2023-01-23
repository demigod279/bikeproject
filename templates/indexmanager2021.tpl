{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
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
                    <div style="height:600px; width: 780px;">
                        <iframe width='100%' height='100%' src='https://excalidraw.com/' frameborder='0' scrolling='yes'
                            marginheight='10' marginwidth='10'>
                        </iframe>
                    </div>
                    <div class="modal-footer">

                        <a class="btn btn-secondary" href="https://excalidraw.com/" target="_blank">Open in New
                            Tab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Vertically centered Modal-->



        <div class="modal fade" id="popupcalendar" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Calendar </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <iframe frameborder="0" height="500px" width="100%"
                            src="calendar.php?teacherno={$teacherno}"></iframe>
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
                        <h5 class="modal-title">Class Grades</h5>
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





                        <div class="col-12">

                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Student Computer
                                        Management</h5>

                                    <div class="card">


                                        <div class="card-body pb-0">

                                            <div class="news">


                                                <!-- List group with Links and buttons -->
                                                <div class="list-group">




                                                    <a class="nav-link collapsed"
                                                        href="teacher_Computersearch2021.php?teacherno={$teacherno}">

                                                        <h3><img src="images\summaryimage.png" alt="">Computer
                                                            Management
                                                        </h3>

                                                    </a><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Control Student and Lab
                                                        Computers</span>

                                                    <hr>

                                                    <a class="nav-link collapsed"
                                                        href="teacher_Urlsearch2021.php?teacherno={$teacherno}">

                                                        <h3><img src="images\toolsimage.png" alt="">Website Library
                                                            Management</h3>

                                                    </a> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add/Edit You Library of
                                                        Websites</span>

                                                    <hr>

                                                    <a class="nav-link collapsed"
                                                        href="teacher_Urlwebsitesearch2021.php?teacherno={$teacherno}">

                                                        <h3><img src="images\toolsimage.png" alt="">Website Library
                                                            Search</h3>

                                                    </a> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Website Library
                                                        Search</span>







                                                </div><!-- End List group with Links and buttons -->



                                            </div>
                                            <br>
                                            <br>

                                        </div>
                                    </div><!-- My classes -->

                                </div>
                            </div>

                        </div>




                        <!-- Recent Sales -->




                    </div>
                </div><!-- End Left side columns -->

                <!-- Right side columns -->
                <div class="col-lg-4">

                    <!-- Recent Activity -->
                    <div class="card">


                        <div class="card-body">
                            <h5 class="card-title"><img src="images\summaryimage.png" alt="">Today's Assignments <span>|
                                    Today - {$todaydate}</span></h5>

                            <div class="activity">

                                {$missingassignments}




                            </div>

                        </div>
                    </div><!-- End Recent Activity -->

                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\flagimage.png" alt="">Today's Summary <span>| Today
                                    - {$todaydate}</span></h5>

                            <div class="news">

                                {$todaysummary}


                            </div><!-- End sidebar recent posts-->

                        </div>
                    </div><!-- End News & Updates -->


                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\eventsimage.png" alt="">School News &amp; Updates

                            </h5>
                            <p class="small fst-italic">Click to <a href="teacher_newssearch2021.php">Add
                                    School Event
                                </a>
                            <p>




                                {$SchoolEventFeeds}


                        </div><!-- End News & Updates -->

                    </div><!-- End Right side columns -->

                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Tools</h5>
                            <div class="news">


                                <!-- List group with Links and buttons -->
                                <div class="list-group">

                                    <a href="indexmanager2021.php" class="list-group-item list-group-item-action"
                                        aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Student Computer Management</h5>
                                        </div>
                                        <small>Manage Lab/Student Computers.</small>

                                    </a>



                                    <a data-bs-toggle="modal" data-bs-target="#popupboard"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1"> <i class="bi bi-clipboard-data"></i>&nbsp;&nbsp;Whiteboard
                                            </h5>
                                        </div>
                                        <small>Whiteboard to Draw online.</small>

                                    </a>


                                    <a data-bs-toggle="modal" data-bs-target="#popupcalendar"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1"> <i class="bi bi-calendar3"></i>&nbsp;&nbsp;Calendar</h5>
                                        </div>

                                        <small>Monthly School Calender of all Events
                                    </a>
                                    </small>
                                    </a>


                                    <a data-bs-toggle="modal" data-bs-target="#popupgrades"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1"> <i class="bi bi-bar-chart-fill"></i>&nbsp;&nbsp;Grades
                                            </h5>
                                        </div>
                                        <small>Overall Class Grade Summary.</small>
                                    </a>





                                </div><!-- End List group with Links and buttons -->



                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->



                </div>
        </section>

    </main><!-- End #main -->

{include file="teacherfooter.tpl" }