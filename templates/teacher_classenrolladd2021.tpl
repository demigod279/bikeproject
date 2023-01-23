{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_classsearch2021.php?classno={$classno}">Class
                            Search</a></li>
                    <li class="breadcrumb-item"><a href="teacher_classedit2021.php?classno={$classno}">Class
                            Edit</a></li>
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

        <div class="modal fade" id="popupclasses" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Student Classes</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <ul class="list-group list-group-flush">
                            {$myclasses}
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Extra Large Modal-->


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



        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$classimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h3>Class</h3>

                        </div>
                    </div>


                    <div class="btn-group">


                        <a class="btn btn-secondary" href="teacher_classview2021.php?classno={$classno}"
                            role="button">View
                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_lessonsearch2021.php?classno={$classno}"
                            role="button">Lessons
                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#popupgrades"
                            role="button">Grades</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_classedit2021.php?classno={$classno}&autoadd=true"
                            role="button">Auto Add</a>

                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Enrolled Students &nbsp;&nbsp;</h5>

                            {$enrolledstudents}

                        </div>


                    </div><!-- End Sales Card -->




                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">

                                <li class="nav-item">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                        data-bs-target="#profile-general">General
                                    </button>
                                </li>




                            </ul>

                            <div class="tab-pane fade show active profile-general" id="profile-general">

                                <br><br>

                                <form action="teacher_classenrolladd2021.php" method="post" id="tab_general">
                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Active Student
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_active}
                                        </div>
                                    </div>




                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Class
                                            Name</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_classno}
                                        </div>
                                    </div>




                                    <div class="row mb-3">
                                        <label for="about" class="col-md-4 col-lg-3 col-form-label">Student</label>
                                        <div class="col-md-8 col-lg-9">{$general_studentno}</div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Grade (Auto)

                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_grade}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">GPA (Auto)
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_percentage}

                                        </div>
                                    </div>


                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Team
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_team}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Dollar
                                            Points</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_dollarpoints}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Reward Belt
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_rewardbelt}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Job" class="col-md-4 col-lg-3 col-form-label">Advanced
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_advanced}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Job" class="col-md-4 col-lg-3 col-form-label">Proficient
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_proficient}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Job" class="col-md-4 col-lg-3 col-form-label">Modification
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_modification}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Automatic 100%
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_nograde}
                                        </div>
                                    </div>


                                    <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                        name="general_schoolno" />

                                    <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                    <input type="hidden" value="general" id="tab" name="tab" />

                                    <div class="text-center">
                                        <button type="submit" value="Add" id="add" name="add"
                                            class="btn btn-primary">Add Student
                                        </button>
                                    </div>
                                </form><!-- End Profile Edit Form -->

                            </div>


                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
            </div>
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }