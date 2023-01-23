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

        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-8">
                    <div class="row">

                        {$YouHaveMail}


                        <div class="col-12">



                            <!-- List group with Advanced Contents -->
                            <div class="list-group">


                                {$myclasses}


                            </div><!-- End List group Advanced Content -->

                            <div class="modal fade" id="popupcalendar" tabindex="-1">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Calendar </h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe frameborder="0" height="500px" width="100%"
                                                src="classcalendar.php?teacherno={$teacherno}&classno={$classno}"></iframe>
                                            </iframe>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div><!-- End Extra Large Modal-->



                            <div class="modal fade" id="popupboard" tabindex="-1">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div style="height:600px; width: 100%;">
                                            <iframe width='100%' height='100%' src='https://excalidraw.com/'
                                                frameborder='0' scrolling='yes' marginheight='10' marginwidth='10'>
                                            </iframe>
                                        </div>
                                        <div class="modal-footer">

                                            <a class="btn btn-secondary" href="https://excalidraw.com/"
                                                target="_blank">Open
                                                in New
                                                Tab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="modal fade" id="popupunitflash" tabindex="-1">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Vocabulary Flash Cards</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">


                                            {$FlashCards}


                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div><!-- End Extra Large Modal-->



                            <div class="modal fade" id="popupmessage" tabindex="-1">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Lesson Grades</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">

                                            <h4 class="modal-title">Message your Teacher</h4>
                                            <div class="share-widget clearfix">
                                                <form action="indexstudent2021.php" method="post">

                                                    <textarea name="teacherdiscussion_text"
                                                        class="form-control share-widget-textarea" rows="3"
                                                        placeholder="Send a note to the Teacher from Here"
                                                        tabindex="1"></textarea>


                                                    <input name="classteacherno" type="hidden"
                                                        value="{$classteacherno}">

                                                    <input name="classno" type="hidden" value="{$classno}">


                                                    <div class="share-widget-actions">
                                                        <br>

                                                        <div class="pull-left">
                                                            <input type="submit" value="Send Message to Teacher Now">
                                                        </div>

                                                    </div> <!-- /.share-widget-actions -->
                                                </form>
                                            </div> <!-- /.share-widget -->



                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">Close</button>

                                            </div>
                                        </div>
                                    </div>
                                </div><!-- End Extra Large Modal-->
                            </div>


                            <div class="modal fade" id="popupgrades" tabindex="-1">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Lesson Grades</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
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
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div><!-- End Extra Large Modal-->




                            <div class="modal fade" id="popupunitgrades" tabindex="-1">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Unit Grades</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">

                                            <div id="barChartunit"></div>

                                            <script>
                                                document.addEventListener("DOMContentLoaded", () => {
                                                    new ApexCharts(document.querySelector("#barChartunit"), {
                                                        series: [{
                                                            data: [{$unitgrades}]
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
                                                            categories: [{$unitnames} ],
                                                        }
                                                    }).render();
                                                });
                                            </script>
                                            <!-- End Bar Chart -->




                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div><!-- End Extra Large Modal-->



                        </div>



                        <!-- Trigger the modal with a button -->







                        <!-- Classes-->
                        <div class="col-12">

                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"><img src="images\classimage.png" alt="">Class -
                                        {$class}<br>Unit -
                                        {$CurrentUnit}</h5>
                                    <hr>
                                    {$UnitAttachment1}{$UnitAttachment2}
                                    <hr>

                                    <p class="small fst-italic">Click to <a
                                            href="teacher_lessonreport2021.php?classno={$classno}&search=unit&categoryno={$categoryno}"
                                            target="_blank">Print</a> results in a Report &nbsp;&nbsp;&nbsp;&nbsp;

                                        Click to <a
                                            href="teacher_lessonadd2021.php?classno={$classno}&categoryno={$categoryno}">Add
                                            Lesson
                                        </a>&nbsp;&nbsp;&nbsp;&nbsp;

                                        Click to <a href="teacher_classedit2021.php?classno={$classno}">Edit
                                            Class
                                        </a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;

                                        Click for <a
                                            href="teacher_lessonimport2021.php?classno={$classno}&categoryno={$categoryno}&filtercategoryno={$categoryno}">Suggested
                                            Lessons

                                        </a>
                                        <hr>
                                        {$UnitDescription}
                                    </p>

                                    <!-- List group with Advanced Contents -->
                                    <div class="list-group">


                                        {$CurrentLessons}

                                    </div><!-- End List group Advanced Content -->

                                </div>
                            </div>

                        </div>

                        <!-- Classes-->
                        <div class="col-12">

                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Unit Vocabulary - {$CurrentUnit} <a data-bs-toggle="modal"
                                            data-bs-target="#popupunitflash"> <u>Flash Cards</u></a></h5>
                                    </h5>

                                    <!-- List group with Advanced Contents -->
                                    <div class="list-group">


                                        <h3 word-wrap: break-word;>{$Vocabulary}</h3>

                                    </div><!-- End List group Advanced Content -->

                                </div>
                            </div>

                        </div>




                        <!-- Recent Sales -->
                        <div class="col-12">
                            <div class="card recent-sales">



                                <div class="card-body">
                                    <h5 class="card-title">Lesson History <span>| Today - {$todaydate}</span></h5>

                                    <table class="table table-borderless datatable">
                                        <thead>
                                            <tr>
                                            <tr>
                                                <th scope="col">Date/Time</th>
                                                <th scope="col">Student</th>
                                                <th scope="col">Result</th>
                                                <th scope="col">Status</th>
                                            </tr>
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

                    <!-- Class Units -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\classimage.png" alt="">Class Units
                            </h5>
                            <p class="small fst-italic">Click to <a
                                    href="teacher_unitadd2021.php?classno={$classno}">Add
                                    Units
                                </a>
                            <p>
                            <div class="news">

                                <div class="post-item clearfix">
                                    <ul>
                                        {$MyUnitList}
                                    </ul>
                                </div>
                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- Class Units -->



                    <!-- My Classes -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\homeimage.png" alt="">My Classes </h5>
                            <p class="small fst-italic">Click to <a
                                    href="teacher_classadd2021.php?classno={$classno}">Add
                                    Classes
                                </a>
                            <p>
                            <div class="news">

                                <div class="post-item clearfix">
                                    {$MyClassList}
                                </div>
                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->

                    <div class="card">

                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Tools</h5>
                            <div class="news">


                                <!-- List group with Links and buttons -->
                                <div class="list-group">


                                    {$onlineteacher}




                                    <a data-bs-toggle="modal" data-bs-target="#popupcalendar"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1"> <i class="bi bi-calendar3"></i>&nbsp;&nbsp;Calendar</h5>
                                        </div>

                                        <small>Monthly Class Calendar
                                        </small>
                                    </a>

                                    <a data-bs-toggle="modal" data-bs-target="#popupgrades"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Grades</h5>
                                        </div>
                                        <small>View Class Grade Summary.</small>

                                    </a>


                                    <a href="teacher_classreportcard2021.php?classno={$classno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Class Report Card Summary</h5>
                                        </div>
                                        <small>View All Students and Grade Breakdowns.</small>

                                    </a>

                                    <a data-bs-toggle="modal" data-bs-target="#popupboard"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Whiteboard</h5>
                                        </div>
                                        <small>Whiteboard to Draw online.</small>

                                    </a>


                                    <a href="{$textbook}" target="_blank" class="list-group-item list-group-item-action"
                                        aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Class Textbook</h5>
                                        </div>
                                        <small>Click to View on the Online Textbook.</small>

                                    </a>


                                    <a href="teacher_classedit2021.php?classno={$classno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Class Edit</h5>
                                        </div>
                                        <small>Edit the Class Information.</small>

                                    </a>
                                    <a href="teacher_lessonsearch2021.php?classno={$classno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Class Lesson Search</h5>
                                        </div>
                                        <small>Search for Lessons in the Class.</small>

                                    </a>



                                    <a href="teacher_lessonimport2021.php?search=add&classno={$classno}&categoryno={$categoryno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Import Lessons</h5>
                                        </div>
                                        <small>Import Lessons to the Class.</small>

                                    </a>


                                    <a href="teacher_unitsearch2021.php?classno={$classno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Class Unit Managment</h5>
                                        </div>
                                        <small>Manage Units in the Class.</small>

                                    </a>

                                    <a href="teacher_categorysearch2021.php?classno={$classno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Category Managment</h5>
                                        </div>
                                        <small>Manage Categories in the Class.</small>

                                    </a>

                                </div><!-- End List group with Links and buttons -->



                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->




                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\eventsimage.png" alt="">School News &amp; Updates
                                <span></span>
                            </h5>

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


{include file="teacherfooter.tpl" }