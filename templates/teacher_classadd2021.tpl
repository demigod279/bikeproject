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

                            <img src="{$uploadpath}{$profileimage}" alt="Profile" class="rounded-circle">

                            <h3>Class Add</h3>
                            <h2>{$message}</h2>
                        </div>
                    </div>


                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">


                                <li class="nav-item">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                        data-bs-target="#profile-general">General Class Information</button>
                                </li>




                            </ul>


                            <br>

                            <div class="row mb-3">
                                <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Update Profile
                                    Image
                                </label>

                                <div class="col-md-8 col-lg-9">
                                    {$general_image}

                                </div>

                            </div>

                            <form action="teacher_classadd2021.php" method="post" id="tab_general">
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
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Class Type</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_classtype}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Job" class="col-md-4 col-lg-3 col-form-label">Class Level</label>
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
                                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Start Time</label>
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



                                <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                    name="general_schoolno" />

                                <input type="hidden" value="general" id="tab" name="tab" />

                                <div class="text-center">
                                    <button type="submit" value="Add" id="add" name="add" class="btn btn-primary">Save
                                        Class</button>
                                </div>
                            </form><!-- End Profile Edit Form -->




                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
            </div>
            </div>
        </section>

    </main><!-- End #main -->

{include file="teacherfooter.tpl" }