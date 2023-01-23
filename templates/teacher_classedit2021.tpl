{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_classsearch2021.php?teacherno={$teacherno}">Class
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






        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$classimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h3>Class</h3>
                            <a class="btn btn-secondary" href="teacher_classview2021.php?classno={$classno}"
                                role="button">View Class
                            </a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#removestudent">
                            Remove Class
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
                                        Are you sure you want to completely Delete this Class Record? I recommend
                                        making the Class inactive, remove will completely remove this record from the
                                        system.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_classedit2021.php?remove=true&classno={$classno}"
                                            role="button">Remove Class</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->
                        <a class="btn btn-secondary" href="teacher_classadd2021.php?search=add" role="button">Add
                        </a>&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_lessonsearch2021.php?classno={$classno}"
                            role="button">Lessons
                        </a>&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_unitsearch2021.php?classno={$classno}"
                            role="button">Units
                        </a>&nbsp;&nbsp;<a class="btn btn-secondary"
                            href="teacher_classedit2021.php?copy=true&classno={$classno}" role="button">Copy</a>

                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Enrolled Students &nbsp;&nbsp;<a class="btn btn-primary"
                                    href="teacher_classenrolladd2021.php?search=add&classno={$classno}"
                                    role="button">Add Student</a> &nbsp;&nbsp;<a class="btn btn-primary"
                                    href="teacher_classenrolladd2021.php?enroll=auto&classno={$classno}"
                                    role="button">Auto

                                </a></h5>

                            <div style="width: 100%; height: 490px; overflow-y: scroll; overflow-x: hidden">
                                <div class="container testimonial-group">


                                    {$enrolledstudents}


                                </div>
                            </div>


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

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-advanced">Advanced
                                    </button>
                                </li>


                            </ul>

                            <div class="tab-pane fade show active profile-general" id="profile-general">

                                <br><br>
                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Update Image
                                    </label>

                                    <div class="col-md-8 col-lg-9">
                                        {$general_image}

                                    </div>

                                </div>

                                <form action="teacher_classedit2021.php" method="post" id="tab_general">
                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Active Class
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_active}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Class
                                            Name</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_class}
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
                                        <label for="about" class="col-md-4 col-lg-3 col-form-label">Description</label>
                                        <div class="col-md-8 col-lg-9">{$general_description}</div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Class Code

                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_code}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Subject
                                        </label>
                                        <div class="col-md-8 col-lg-9">

                                            {$general_subject}



                                        </div>
                                    </div>


                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Teacher
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_teacherno}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Department</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_department}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Class
                                            Type</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_classtype}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Job" class="col-md-4 col-lg-3 col-form-label">Class
                                            Level</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_classlevel}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Country" class="col-md-4 col-lg-3 col-form-label">Room</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_room}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Address" class="col-md-4 col-lg-3 col-form-label">Period</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_period}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="begintime" class="col-md-4 col-lg-3 col-form-label">Start
                                            Time</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_begtime}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Year</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_classyears}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Term</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_semester}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Textbook
                                            Link</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_librarylink}
                                        </div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Computer Control
                                            Type</label>

                                        <div class="col-md-8 col-lg-9">

                                            {$general_controltype}
                                        </div>


                                    </div>

                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Computer Control Lab
                                            Code
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_controllab}
                                        </div>
                                    </div>



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
                                <form action="teacher_classedit2021.php" method="post" id="tab_advanced">


                                    <input type="hidden" value="parent" id="tab" name="tab" />
                                    <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                    <input type="hidden" value="{$classno}" id="classno" name="classno" />


                                    <div class="text-center">
                                        <button type="submit" value="Save" id="save" name="save"
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

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }