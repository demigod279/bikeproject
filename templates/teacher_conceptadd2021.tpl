{include file="headerteacher.tpl" }

<body>


    {include file="headerteachersidemenu.tpl" }


    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>


                    <li class="breadcrumb-item"><a href="teacher_classedit2021.php?classno={$classno}">Class
                            Edit</a></li>
                    <li class="breadcrumb-item"><a
                            href="teacher_lessonedit2021.php?classno={$classno}&lessonno={$lessonno}">Lesson
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



        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$lessonimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h2>{$lesson}</h2>
                            <h3>Lesson</h3>
                            <a class="btn btn-secondary"
                                href="teacher_lessonview2021.php?classno={$classno}&lessonno={$lessonno}"
                                role="button">View
                            </a>
                        </div>
                    </div>


                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Lesson Concepts</h5>



                            {$lessonconcepts}




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
                            <div class="tab-content pt-2" id="myTabjustifiedContent">
                                <div class="tab-pane fade show active profile-general" id="profile-general">

                                    <br><br>
                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Update Image
                                        </label>

                                        <div class="col-md-8 col-lg-9">
                                            {$general_filename}

                                        </div>

                                    </div>

                                    <form action="teacher_conceptadd2021.php" autocomplete="off" method="post"
                                        id="tab_general">
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Active Concept
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_active}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Practice (Not Graded)
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_practice}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="istest" class="col-md-4 col-lg-3 col-form-label">Concept
                                                #</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_conceptno}
                                            </div>
                                        </div>




                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Concept
                                                Title
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_concept}
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
                                            <label for="editor" id="editor" name="editor"
                                                class="col-md-4 col-lg-3 col-form-label">Objective</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_text}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Teaching
                                                Concept

                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_description}

                                            </div>
                                        </div>



                                        <div class="row mb-3">

                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Standard
                                            </label>

                                            <div class="col-md-8 col-lg-9">
                                                {$general_standardno}

                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Link
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_narrmovie}

                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="company" class="col-md-4 col-lg-3 col-form-label">Dollar
                                                Reward</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_dollarpoints}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company" class="col-md-4 col-lg-3 col-form-label">YouTube Link

                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_virtualfieldtripurl}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Notes
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_notes}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="dollars" class="col-md-4 col-lg-3 col-form-label">Link Popup
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_embedpopup}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Student Link
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_gameurl}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Teacher Link
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_embedteacher}
                                            </div>
                                        </div>



                                        <input type="hidden" value="{$lessonno}" id="general_lessonno"
                                            name="general_lessonno" />
                                        <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />

                                        <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                            name="general_schoolno" />

                                        <input type="hidden" value="{$classno}" id="general_classno"
                                            name="general_classno" />

                                        <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                            name="general_schoolno" />

                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />

                                        <input type="hidden" value="general" id="tab" name="tab" />

                                        <div class="text-center">
                                            <button type="submit" value="Add" id="add" name="add"
                                                class="btn btn-primary">Save
                                                Lesson</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>


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