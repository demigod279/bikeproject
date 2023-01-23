{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_unitsearch2021.php?classno={$classno}">Unit
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
                            Remove Unit
                        </button>&nbsp;&nbsp;
                        <div class="modal fade" id="removestudent" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Remove Unit</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure you want to completely Delete this Unit Record? I recommend
                                        making the Unit inactive, remove will completely remove this record from the
                                        system.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_unitedit2021.php?remove=true&classno={$classno}&categoryno={$categoryno}"
                                            role="button">Remove Unit</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->
                        <a class="btn btn-secondary" href="teacher_unitadd2021.php?search=add&classno={$classno}"
                            role="button">Add
                        </a>&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_lessonsearch2021.php?classno={$classno}"
                            role="button">Lessons
                        </a>&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_unitsearch2021.php?classno={$classno}"
                            role="button">Unit Search
                        </a>&nbsp;&nbsp;

                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Lessons &nbsp;&nbsp;<a class="btn btn-primary"
                                    href="teacher_lessonadd2021.php?classno={$classno}" role="button">Add Lesson
                                </a></h5>



                            {$unitlesson}




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

                                <form action="teacher_unitedit2021.php" method="post" id="tab_general">

                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Active</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_active}
                                        </div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Unit #
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_unitno}
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Unit
                                            Name</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_category}
                                        </div>
                                    </div>




                                    <div class="row mb-3">
                                        <label for="about" class="col-md-4 col-lg-3 col-form-label">Grade</label>
                                        <div class="col-md-8 col-lg-9">{$general_grade}</div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Subject

                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_subject}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Start Date
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_unitstartdate}

                                        </div>

                                    </div>


                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">End Date
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_unitduedate}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Unit Description
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_description}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Unit Link
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_unitlink}

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Google Drive
                                            Link
                                        </label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_googleslide}

                                        </div>
                                    </div>





                                    <input type="hidden" value="{$categoryno}" id="categoryno" name="categoryno" />
                                    <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                    <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                    <input type="hidden" value="general" id="tab" name="tab" />

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

{include file="teacherfooter.tpl" }