{include file="headerteacher.tpl" }


<script language="JavaScript" type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" lang="javascript" src="dblclick.js"></script>

<body onkeydown="return (event.keyCode != 116)">

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">

            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item active"><a
                            href="teacher_classview2021.php?classno={$classno}">Classroom</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-8">
                    <div class="row">



                        <div class="col-12">
                            <!-- List group with Advanced Contents -->
                            <div class="list-group">


                                {$myclasses}


                            </div><!-- End List group Advanced Content -->
                        </div>

                        <div class="modal fade" id="popupcalendar" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Calendar</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <iframe frameborder="0" height="500px" width="100%"
                                            src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
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
                                        <iframe width='100%' height='100%' src='https://excalidraw.com/' frameborder='0'
                                            scrolling='yes' marginheight='10' marginwidth='10'>
                                        </iframe>
                                    </div>
                                    <div class="modal-footer">

                                        <a class="btn btn-secondary" href="https://excalidraw.com/" target="_blank">Open
                                            in New
                                            Tab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- News & Updates Traffic -->
                        <div class="card">
                            <div class="card">
                                <div class="card-body">


                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title"><img src="images\classimage.png" alt="">Unit -
                                                {$CurrentUnit}</h5>

                                            <!-- List group with Advanced Contents -->
                                            <div class="list-group">


                                                {$CurrentLessons}

                                            </div><!-- End List group Advanced Content -->

                                        </div>
                                    </div>




                                    <h5 class="card-title">Lesson Overview</h5>

                                    <!-- Default Tabs -->
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">

                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="Objective-tab" data-bs-toggle="tab"
                                                data-bs-target="#Objective" type="button" role="tab"
                                                aria-controls="Objective" aria-selected="true">Objective</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="Activities-tab" data-bs-toggle="tab"
                                                data-bs-target="#Activities" type="button" role="tab"
                                                aria-controls="Activities" aria-selected="false">Activities</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="Results-tab" data-bs-toggle="tab"
                                                data-bs-target="#Results" type="button" role="tab"
                                                aria-controls="Results" aria-selected="false">Results</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="Standards-tab" data-bs-toggle="tab"
                                                data-bs-target="#Standards" type="button" role="tab"
                                                aria-controls="Standards" aria-selected="false">Standards</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab"
                                                data-bs-target="#grades" type="button" role="tab" aria-controls="grades"
                                                aria-selected="false">Grades</button>
                                        </li>
                                    </ul>
                                    <div class="tab-content pt-2" id="myTabContent">


                                        <div class="tab-pane fade show active" id="Objective" role="tabpanel"
                                            aria-labelledby="Objective-tab">
                                            {$lessonobjective}
                                        </div>
                                        <div class="tab-pane fade" id="Activities" role="tabpanel"
                                            aria-labelledby="Activities-tab">
                                            {$lessonactivity}
                                        </div>
                                        <div class="tab-pane fade" id="Results" role="tabpanel"
                                            aria-labelledby="Results-tab">
                                            {$lessonresults}
                                        </div>
                                        <div class="tab-pane fade" id="Standards" role="tabpanel"
                                            aria-labelledby="Standards-tab">
                                            {$LessonStandard}
                                        </div>



                                        <div class="tab-pane fade" id="grades" role="tabpanel"
                                            aria-labelledby="grades-tab">
                                            <div class="card-body">
                                                <h5 class="card-title">Lesson Grades</h5>
                                                <a class="btn btn-primary"
                                                    href="teacher_lessongradeedit2021.php?add=true&classno={$classno}&lessonno={$lessonno}&studentno="
                                                    role="button">Add Grade
                                                </a>

                                                <table class="table table-borderless datatable">
                                                    <thead>
                                                        <tr>

                                                            <th scope="col">Student</th>

                                                            <th scope="col">Letter Grade</th>
                                                            <th scope="col">% Grade</th>
                                                            <th scope="col">Points</th>
                                                            <th scope="col">Homework %</th>
                                                            <th scope="col">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        {$lessongrades}

                                                    </tbody>
                                                </table>

                                            </div>


                                        </div>


                                    </div><!-- End Default Tabs -->

                                </div>
                            </div>



                        </div><!-- End News & Updates -->



                        <div class="row">
                            <div class="col-xs-12 mt-1 mb-3">



                                {$LinkToConceptVirtualLink}

                            </div>
                        </div>
                        <hr>
                        <div class="modal fade" id="verticalycenteredbook" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Teacher Book</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <iframe width='100%' height='600px'
                                            src='report_student_lessonbookform.php?classno={$classno}&lessonno={$lessonno}'
                                            frameborder='0' scrolling='yes' marginheight='10' marginwidth='10'>
                                        </iframe>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Extra Large Modal-->



                        <!-- Recent Sales -->
                        <div class="col-12">
                            <div class="card recent-sales">



                                <div class="card-body">
                                    <h5 class="card-title"><img src="images\classimage.png" alt="">Lesson History
                                        <span>| Today - {$todaydate}</span>
                                    </h5>

                                    <table class="table table-borderless datatable">
                                        <thead>
                                            <tr>
                                                <th scope="col">Date/Time</th>
                                                <th scope="col">Student</th>
                                                <th scope="col">Result</th>
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

                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Online Teacher</h5>
                            {$onlineteacher}

                        </div>
                    </div><!-- My classes -->

                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Lesson Resources </h5>
                            <div class="news">

                                <div class="post-item clearfix">
                                    {$lessonresources1}
                                    {$lessonresources2}
                                    {$lessonresources3}
                                </div>
                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->

                    <!-- My Classes -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\flagimage.png" alt="">Lesson Homework</h5>

                            <p class="small fst-italic">Click to <a
                                    href="teacher_lessonedit2021.php?classno={$classno}&lessonno={$lessonno}">Edit
                                    Homework</a></p>





                            <div class="news">

                                <div class="post-item clearfix">
                                    {$MyHomework} <br>

                                </div>

                                <br>

                                <b>Homework Turned in</b> <br>
                                {$Submissions}



                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->

                    <div class=" card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Tools</h5>
                            <div class="news">



                                <!-- List group with Links and buttons -->
                                <div class="list-group">


                                    <a data-bs-toggle="modal" data-bs-target="#popupboard"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Whiteboard</h5>
                                        </div>
                                        <small>Whiteboard to Draw online.</small>

                                    </a>

                                    <a href="teacher_lessonview2021.php?lessonno={$lessonno}&classno={$classno}&unlockpresent=true"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Unlock Lesson and Release</h5>
                                        </div>
                                        <small>Students can work at their own pace.</small>

                                    </a>
                                    <a href="teacher_lessonview2021.php?lessonno={$lessonno}&classno={$classno}&unlockpresent=lock"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Lock Lesson</h5>
                                        </div>
                                        <small>Students must work as the teacher presents.</small>

                                    </a>
                                    <a href="teacher_lessonview2021.php?lessonno={$lessonno}&classno={$classno}&unlockpresent=removetries"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Remove all Attempts</h5>
                                        </div>
                                        <small>Remove all Grades,Attempts and History for Students.</small>

                                    </a>
                                    <a href="teacher_lessonedit2021.php?lessonno={$lessonno}&classno={$classno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Edit Lesson</h5>
                                        </div>
                                        <small>Change or Modify the Lesson and Concepts.</small>

                                    </a>
                                    <a href="teacher_unitedit2021.php?lessonno={$lessonno}&classno={$classno}&categoryno={$categoryno}"
                                        class="list-group-item list-group-item-action" aria-current="true">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-1">Edit Unit</h5>
                                        </div>
                                        <small>Change or Modify the Unit.</small>

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
                    <!-- My Classes -->



                    <!-- My Classes -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title">My Classes </h5>
                            <div class="news">

                                <div class="post-item clearfix">
                                    {$MyClassList}
                                </div>
                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->




                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title">Lesson Vocabulary<span></span></h5>

                            <div class="news">

                                <div class="post-item clearfix">

                                    {$LessonVocabulary}



                                </div><!-- End sidebar recent posts-->

                            </div>
                        </div><!-- End News & Updates -->

                    </div><!-- End Right side columns -->


                </div>
        </section>

    </main><!-- End #main -->

{include file="teacherfooter.tpl" }