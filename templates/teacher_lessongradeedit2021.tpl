{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item active"><a
                            href="teacher_classview2021.php?classno={$classno}">Classroom</a></li>
                    <li class="breadcrumb-item active"><a
                            href="teacher_lessonview2021.php?classno={$classno}&lessonno={$lessonno}">Lesson</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->







        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">


                            <h3>{$lesson}</h3>

                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#removestudent">
                            Remove Student Grade
                        </button>&nbsp;&nbsp;
                        <div class="modal fade" id="removestudent" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Remove Subject</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure you want to completely Delete this Record?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_lessongradeedit2021.php?remove=true&classno={$classno}&lessonno={$lessonno}&studentno={$studentno}"
                                            role="button">Remove Grade</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->


                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Lessons &nbsp;&nbsp;<a class="btn btn-primary"
                                    href="teacher_lessongradeedit2021.php?add=true&classno={$classno}&lessonno={$lessonno}&studentno="
                                    role="button">Add Grade
                                </a></h5>



                            {$studentlist}




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

                                <br>

                                <form action="teacher_lessongradeedit2021.php" method="post" id="tab_general">



                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Student</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_studentno}
                                        </div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Lesson Grade
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_grade}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Percentage</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_percentage}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Homework Percentage</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_homeworkpercent}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Reward Coins</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_rewardpoints}
                                        </div>
                                    </div>


                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Reward Points</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_dollarpoints}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Attempt #
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_attempts}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Date Taken</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_datetaken}
                                        </div>
                                    </div>



                                    <input type="hidden" value="{$id}" id="id" name="id" />
                                    <input type="hidden" value="{$classno}" id="general_classno"
                                        name="general_classno" />
                                    <input type="hidden" value="{$classno}" id="classno" name="classno" />

                                    <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />
                                    <input type="hidden" value="{$general_lessonno}" id="general_lessonno"
                                        name="general_lessonno" />

                                    <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                        name="general_schoolno" />
                                    <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                    <input type="hidden" value="general" id="tab" name="tab" />

                                    <div class="text-center">
                                        <button type="submit" value="{$mode}" id="{$mode}" name="{$mode}"
                                            class="btn btn-primary">Save Changes</button>
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

{include file="teacherfooter.tpl" }