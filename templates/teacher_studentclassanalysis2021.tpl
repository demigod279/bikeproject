{include file="headerteacher.tpl" }

<body>

    <!-- ======= Header ======= -->
    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_studentprofile2021.php?studentno={$studentno}">Student
                            Profile</a>
                    </li>
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



        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-12">
                    <div class="row">

                        {$YouHaveMail}


                        <div class="row">

                            <div class="row">


                                <!-- Advanced Search -->
                                <div class="panel">

                                    <h2 class="text-secondary">

                                        <b> Analysis of {$subject}</b>

                                    </h2>
                                    Date:&nbsp;<b> {$CurrentDate}</b> &nbsp;&nbsp;<b></b></br></br>



                                    <h2 class="content-title"> Class Analysis by Focus Areas for {$StudentName}</h2>

                                    Overall Focus Area Category percentages are based on the Exam questions only that
                                    are taken from the lessons listed below each Category. (Click on the bar chart to
                                    expand)
                                    Lesson Grades are shown next to the lessons and reflect the overall grade on the
                                    lesson that might have been taken several times and not the exam grade.
                                    If a student received a 100% on all the lessons and the category percent above shows
                                    60% then the student did not carry over what they learned on the lessons to the
                                    exams.
                                    All Exam questions are exact questions used on the lessons so students taking notes
                                    will do better on the exams then students who take no notes. (If the teacher allows
                                    notes
                                    on the Exam)
                                    </br> </br>
                                    Lessons from previous Quarters can be redone but will not affect the current quarter
                                    grades. Past Report cards can not be changed. But
                                    you can have your child retake a lesson from a previous quarter if there are
                                    attempts remaining or request a reset by the teacher. But the overall Category
                                    percent will not change since
                                    that percentage is based on the exam that was taken on the end of the unit not the
                                    lessons. There is also a video link and book link if you wish your student to review
                                    the
                                    information with you to help them understand the areas they are struggling with.




                                    </br></br>

                                    <div class="panel panel-default">


                                        <div class="panel-body">


                                            {$ClassAnalysis}


                                        </div>


                                    </div>



                                </div>

                            </div>

                        </div>





                    </div>
                </div>

        </section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }