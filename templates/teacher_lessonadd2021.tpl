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

                            <img src="{$uploadpath}{$classimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>



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
                        <a class="btn btn-secondary"
                            href="teacher_lessonimport2021.php?search=add&classno={$classno}&categoryno={$categoryno}"
                            role="button">Import Lesson
                        </a>&nbsp;&nbsp;




                    </div>
                    <hr>

                    <!-- Sales Card -->




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
                                            {$general_imagepath}

                                        </div>

                                    </div>

                                    <form action="teacher_lessonadd2021.php" autocomplete="off" method="post"
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
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Do Not
                                                Grade</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_nograde}
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
                                            <label for="editor" id="editor" name="editor"
                                                class="col-md-4 col-lg-3 col-form-label">Objective</label>
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
                                            <label for="inputDate"
                                                class="col-md-4 col-lg-3 col-form-label">Category/Topic
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_category}
                                            </div>

                                        </div>


                                        <div class="row mb-3">
                                            <label for="company"
                                                class="col-md-4 col-lg-3 col-form-label">Standard</label>

                                            {$general_standard}

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

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Link
                                                Attachment</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_googledriveid}
                                            </div>
                                        </div>
                                        <input type="hidden" value="{$teacherno}" id="general_teacherno"
                                            name="general_teacherno" />
                                        <input type="hidden" value="Y" id="general_original" name="general_original" />
                                        <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                            name="general_schoolno" />

                                        <input type="hidden" value="{$classno}" id="general_classno"
                                            name="general_classno" />

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



                                <div class="tab-pane fade profile-advanced pt-3" id="profile-advanced">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_lessonedit2021.php" method="post" id="tab_advanced">
                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Link
                                                Attachment</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_googledriveid}
                                            </div>
                                        </div>

                                        <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                            name="general_schoolno" />

                                        <input type="hidden" value="parent" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />


                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>

                                <div class="tab-pane fade profile-homework pt-3" id="profile-homework">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_lessonedit2021.php" method="post" id="tab_homework">
                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Link
                                                Attachment</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_googledriveid}
                                            </div>
                                        </div>



                                        <input type="hidden" value="parent" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />


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