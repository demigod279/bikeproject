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

                            <img src="{$uploadpath}{$conceptimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h2>{$lesson}</h2>
                            <h3>Lesson</h3>
                            <a class="btn btn-secondary"
                                href="teacher_conceptview2021.php?classno={$classno}&lessonno={$lessonno}&conceptkey={$conceptkey}&conceptno={$conceptno}"
                                role="button">View Concept
                            </a>
                        </div>
                    </div>




                    <div class="btn-group">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#removestudent">
                            Remove Concept
                        </button>&nbsp;&nbsp;<a class="btn btn-secondary"
                            href="teacher_conceptedit2021.php?copy=true&classno={$classno}&lessonno={$lessonno}&conceptkey={$conceptkey}&copyconceptkey={$conceptkey}"
                            role="button">Copy
                        </a>
                        <div class="modal fade" id="removestudent" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Remove Concept</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure you want to completely Delete this Concept Record?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_conceptedit2021.php?remove=true&classno={$classno}&lessonno={$lessonno}&conceptkey={$conceptkey}&conceptno={$conceptno}"
                                            role="button">Remove Concept</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->



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

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-questions">Questions
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-advanced">Advanced
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-result">Results
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

                                    <form action="teacher_conceptedit2021.php" autocomplete="off" method="post"
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
                                                {$conceptno}
                                            </div>
                                        </div>




                                        <div class="row mb-3">
                                            <label for="donotgrade" class="col-md-4 col-lg-3 col-form-label">Teaching
                                                Concept</label>
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
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Popup Concept
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_popupconcept}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="editor" id="editor" name="editor"
                                                class="col-md-4 col-lg-3 col-form-label">Concept to Teach</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_text}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Description

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

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Vocabulary
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_vocabulary}
                                            </div>
                                        </div>




                                        <input type="hidden" value="{$conceptkey}" id="conceptkey" name="conceptkey" />

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



                                <div class="tab-pane fade profile-questions pt-3" id="profile-questions">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_conceptedit2021.php" method="post" id="questions">
                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Question
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_question}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Question Embed
                                                Html
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_questionhtml}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Answer
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_showanswer}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Hide Question
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_hidequestion}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Question Hint
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_questionhelp}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Freeform Text Answer
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_ifanswertext}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Essay Answer
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_essayanswer}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Option 1 - Correct
                                            </label>{$questions_choice1correct}
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_choice1}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Option 2 -
                                                Correct
                                            </label>{$questions_choice2correct}
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_choice2}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Option 3 -
                                                Correct
                                            </label>{$questions_choice3correct}
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_choice3}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">Option 4 -
                                                Correct
                                            </label>{$questions_choice4correct}
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_choice4}
                                            </div>
                                        </div>

                                        <hr>
                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Timed Question
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_timer}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Timer Seconds
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$questions_timerseconds}
                                            </div>
                                        </div>



                                        <input type="hidden" value="{$conceptkey}" id="conceptkey" name="conceptkey" />

                                        <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                        <input type="hidden" value="questions" id="tab" name="tab" />

                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>

                                <div class="tab-pane fade profile-advanced pt-3" id="profile-advanced">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_conceptedit2021.php" method="post" id="advanced">

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Modified Concept
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_modification}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Advanced Concept
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_advanced}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Review
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_addreview}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Math Board
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_popupmathboard}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Concept Game
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_conceptgameparam}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Number Line
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_popupnumberline}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Money Activity
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_popupmoney}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Shape Activity
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_popupshapes}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Fractions Activity
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_popupfractions}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Multiplication Review
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_embedmultiplication}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Long Division Review
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_embedlongdivision}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Show Chart
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$advanced_embedchart}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="coins" class="col-md-4 col-lg-3 col-form-label">
                                                Map Location Game
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                2=Canada, 3=USA, 4=Europe, 5=Scandanavia, 6=North Africa, 7=South
                                                Africa, 8=Middle East, 9=Asia, Carribean=10, 11=Central America, 12
                                                South America, 13=North America, 14=South Pacific
                                                {$advanced_popupworldmap}
                                            </div>
                                        </div>


                                        <input type="hidden" value="{$conceptkey}" id="conceptkey" name="conceptkey" />

                                        <input type="hidden" value="{$lessonno}" id="lessonno" name="lessonno" />
                                        <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                        <input type="hidden" value="advanced" id="tab" name="tab" />

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