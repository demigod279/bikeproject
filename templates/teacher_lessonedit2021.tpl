{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>


                    <li class="breadcrumb-item"><a href="teacher_classview2021.php?classno={$classno}">Class
                            View</a></li>
                    <li class="breadcrumb-item"><a href="teacher_lessonsearch2021.php?classno={$classno}">Lesson
                            Search</a></li>
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
                        <h5 class="modal-title">Lesson Concepts</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <ul class="list-group list-group-flush">
                            {$myconcepts}
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
                        <h5 class="modal-title">Lesson Grades</h5>
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

                            <img src="{$uploadpath}{$lessonimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h3><b>{$lesson}</b></h3>
                            <h3>Lesson</h3>
                            <a class="btn btn-secondary"
                                href="teacher_lessonview2021.php?classno={$classno}&lessonno={$lessonno}"
                                role="button">View
                            </a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#removestudent">
                            Remove Lesson
                        </button>&nbsp;&nbsp;
                        <div class="modal fade" id="removestudent" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Remove Class</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure you want to completely Delete this Lesson Record? I recommend
                                        making the Lesson inactive, remove will completely remove this record from the
                                        system.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_Lessonedit2021.php?remove=true&classno={$classno}&lessonno={$lessonno}"
                                            role="button">Remove Lesson</a>



                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->



                        <a class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#popupgrades"
                            role="button">Grades</a>&nbsp;&nbsp;
                        <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                            data-bs-target="#verticalycenteredbook">Book</button>
                        &nbsp;&nbsp;
                        <a class="btn btn-secondary"
                            href="teacher_lessonadd2021.php?classno={$classno}&lessonno={$lessonno}" role="button">Add
                        </a>
                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Lesson Concepts &nbsp;&nbsp;<a class="btn btn-primary"
                                    href="teacher_conceptadd2021.php?search=add&classno={$classno}&lessonno={$lessonno}"
                                    role="button">Add
                                    Concept
                                </a></h5>

                            <div style="width: 100%; height: 490px; overflow-y: scroll; overflow-x: hidden">
                                <div class="container testimonial-group">


                                    {$lessonconcepts}


                                </div>
                            </div>

                        </div>


                    </div><!-- End Sales Card -->


                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Copy Lesson into Term</h5>


                            {$message}

                            <form action="teacher_lessonedit2021.php" method="post" id="importunit">

                                <select class="form-select" aria-label="Select Year" id="importyear" name="importyear">
                                    <option selected>{$year_selected}</option>
                                    {$Yearslookup}

                                </select>


                                <select class="form-select" aria-label="Select Term" id="importterm" name="importterm">
                                    <option selected>{$term_selected}</option>
                                    {$Termslookup}

                                </select>
                                <br><br>

                                <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />
                                <input type="hidden" value="{$lessonno}" id="exportlessonno" name="exportlessonno" />
                                <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                <input type="hidden" value="{$grade}" id="grade" name="grade" />
                                <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                <input type="hidden" value="{$subject}" id="subject" name="subject" />

                                <button type="submit" value="exportlesson" id="export" name="export"
                                    class="btn btn-primary">Copy
                                    Lesson</button>
                                <p><small>
                                        If the Unit does not exist the System will Create the Unit in the new
                                        Term</small></p>


                            </form>
                            <h5 class="card-title">Auto Create Questions</h5>

                            <p><small>
                                    These Functions will Automatically Create Exams/Quizzes from the Lessons in the
                                    Unit. These buttons will remove all the concepts from the selected lesson and
                                    replace those concepts with only the Questions from the Unit Lessons depending on
                                    the Button you press. Each button will select Random Questions from each Unit to
                                    Import.</small></p>

                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=concept&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import All Concepts from Unit
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=concepthalf&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import Half Concepts from Unit
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=conceptquarter&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import 1/4th Concepts from Unit
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=conceptreviewsmall&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import Small Percent
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=conceptreviewverysmall&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import Small Percent
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=conceptreviewsmall&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import Very Small Percent
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=conceptreviewlarge&classno={$classno}&lessonno={$lessonno}"
                                role="button">Import Very Large Percent
                            </a>
                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=vocabulary&classno={$classno}&lessonno={$lessonno}"
                                role="button">Create Vocabulary Questions
                            </a>

                            <br> <br>
                            <a class="btn btn-primary"
                                href="teacher_conceptedit2021.php?import=spelling&classno={$classno}&lessonno={$lessonno}"
                                role="button">Create Spelling Questions
                            </a>


                        </div>


                    </div><!-- End Sales Card -->



                </div>

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
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div><!-- End Extra Large Modal-->

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

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-advanced">Advanced
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-result">Lesson Results
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-homework">Homework
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-homeworkresult">Homework Results
                                    </button>
                                </li>

                            </ul>
                            <div class="tab-content pt-2" id="myTabjustifiedContent">
                                <div class="tab-pane fade show active profile-general" id="profile-general">

                                    <br><br>
                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Update Image
                                        </label>

                                        <div class="col-md-8 col-lg-9">
                                            {$general_imagepath}

                                        </div>

                                    </div>

                                    <form action="teacher_lessonedit2021.php" autocomplete="off" method="post"
                                        id="tab_general">
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Active Lesson
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_active}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="istest"
                                                class="col-md-4 col-lg-3 col-form-label">Test/Exam</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_istest}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Lesson
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_lesson}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Due
                                                Date</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_duedate}

                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Chapter #
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_chapterno}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Image File
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$general_imagefilename}</div>
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="objective" class="col-md-4 col-lg-3 col-form-label">Objective
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_objective}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Subject

                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_subject}

                                            </div>
                                        </div>



                                        <div class="row mb-3">

                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Unit
                                            </label>

                                            <div class="col-md-8 col-lg-9">
                                                {$general_subjectcategory}

                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Category
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_category}&nbsp;&nbsp;<a class="btn btn-secondary"
                                                    href="teacher_Categorysearch2021.php?grade={$grade}&subject={$subject}&classno={$classno}"
                                                    role="button">Manage</a>

                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="company" class="col-md-4 col-lg-3 col-form-label">Standard
                                            </label>

                                            <div class="col-md-8 col-lg-9">
                                                {$general_standard}&nbsp;&nbsp;<a class="btn btn-secondary"
                                                    href="teacher_Standardsearch2021.php?grade={$grade}&subject={$subject}"
                                                    role="button">Manage</a>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company" class="col-md-4 col-lg-3 col-form-label">Attempts
                                                Allowed
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_nooftimes}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Grade
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_grade}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="dollars" class="col-md-4 col-lg-3 col-form-label">Reward
                                                Dollars</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_rewarddollars}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Reward Coins
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_coins}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="begintime" class="col-md-4 col-lg-3 col-form-label">Video
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_virtualfieldtripurl}
                                            </div>
                                        </div>




                                        <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                        <input type="hidden" value="general" id="tab" name="tab" />

                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>



                                <div class="tab-pane fade profile-advanced pt-3" id="profile-advanced">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_lessonedit2021.php" method="post" id="tab_advanced">
                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Lesson Link 1
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_googledriveid}
                                            </div>
                                        </div>




                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Lesson Link 2
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_notebooklink}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Lesson Link 3
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_powerpoint}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Override
                                                Exam Locks</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_overridelocks}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Do Not
                                                Grade</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_nograde}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Passing
                                                Percentage (Number only)</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_passpercent}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Extra
                                                Credit Lesson</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_extracredit}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Show Before
                                                Due Date</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_showpriortodue}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Do not show
                                                if Done</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_donotshowifdone}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Count all
                                                Wrong</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_countallwrong}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="donotgrade"
                                                class="col-md-4 col-lg-3 col-form-label">Activity</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_notes}
                                            </div>
                                        </div>



                                        <input type="hidden" value="advanced" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                        <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />

                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>

                                <div class="tab-pane fade profile-result pt-3" id="profile-result">
                                    <div class="row mb-3">
                                        {$lessonresults}
                                    </div>
                                </div>


                                <div class="tab-pane fade profile-homework pt-3" id="profile-homework">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_lessonedit2021.php" method="post" id="tab_homework">
                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Homework Active
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_activehomework}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Homework
                                                Description
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_homework}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Homework
                                                Link</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_homeworklink}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Homework
                                                Image</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_homeworkimage}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Reqular Textbook
                                                Work
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_textbookwork}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Modified
                                                Textbook Work</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_textbookmodified}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Advanced
                                                Textbook Work
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$homework_textbookadvanced}
                                            </div>
                                        </div>


                                        <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                        <input type="hidden" value="homework" id="tab" name="tab" />

                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>

                                <div class="tab-pane fade profile-homeworkresult pt-3" id="profile-homeworkresult">
                                    <div class="row mb-3">
                                        <h4 class="card-title">Lesson Homework</h4>
                                        <hr>
                                        Assignment: {$homework}
                                        <hr>
                                        <h6>{$HomeworkList}</h6>
                                        <hr>
                                        <h6>{$HomeworkMissing}</h6>


                                    </div>
                                </div>


                            </div>
                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>


            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }