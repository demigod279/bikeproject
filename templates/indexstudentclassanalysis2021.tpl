<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>{$sitename}</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: {$sitename} - v2.1.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

        <div class="d-flex align-items-center justify-content-between">
            <a href="indexstudent2021.php" class="logo d-flex align-items-center">
                <img src="assets/img/logo.png" alt="">
                <span class="d-none d-lg-block">{$sitename}</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div><!-- End Logo -->


        <div class="align-items-center justify-content-between">


            <h3> &nbsp;&nbsp;&nbsp;{$schoolname}</h3>


        </div><!-- End Logo -->

        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">

                <li class="nav-item d-block d-lg-none">
                    <a class="nav-link nav-icon search-bar-toggle " href="#">
                        <i class="bi bi-search"></i>
                    </a>
                </li><!-- End Search Icon-->

                <li class="nav-item dropdown">

                    <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                        <i class="bi bi-bell"></i>
                        <span class="badge bg-primary badge-number">{$NotificationCount}</span>
                    </a><!-- End Notification Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                        <li class="dropdown-header">
                            You have {$NotificationCount} new notifications

                        </li>
                        {$Notifications}




                        <li>
                            <hr class="dropdown-divider">
                        </li>


                    </ul><!-- End Notification Dropdown Items -->

                </li><!-- End Notification Nav -->

                <li class="nav-item dropdown">

                    <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                        <i class="bi bi-chat-left-text"></i>
                        <span class="badge bg-success badge-number">{$MessagesCount}</span>
                    </a><!-- End Messages Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                        <li class="dropdown-header">
                            You have {$MessagesCount} new messages
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        {$Messages}


                    </ul><!-- End Messages Dropdown Items -->

                </li><!-- End Messages Nav -->

                <li class="nav-item dropdown pe-3">

                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                        <img src="{$uploadpath}{$profileimage}" alt="Profile" class="rounded-circle">
                        <span class="d-none d-md-block dropdown-toggle ps-2">{$username}</span>
                    </a><!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li class="dropdown-header">
                            <h6>{$username}</h6>
                            <span>{$usertype}</span>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center"
                                href="indexstudentprofile2021.php?studentno={$studentno}">
                                <i class="bi bi-person"></i>
                                <span>My Profile</span>
                            </a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>



                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <i class="bi bi-box-arrow-right"></i>
                                <span>Sign Out</span>
                            </a>
                        </li>

                    </ul><!-- End Profile Dropdown Items -->
                </li><!-- End Profile Nav -->

            </ul>
        </nav><!-- End Icons Navigation -->

    </header><!-- End Header -->

    <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">

        <ul class="sidebar-nav" id="sidebar-nav">



            <li class="nav-item">

                <h5><i class="bi bi-person"></i><b> {$username}</b></h5>
                <h6># {$userid}</h6>
                <h6>{$year}</h6>
                <h6>{$term}</h6>
                <h6>Grade {$grade}</h6>

            </li>
            <hr>

            <li class="nav-item">
                <a class="nav-link " href="indexstudent2021.php">
                    <i class="bi bi-grid"></i>
                    <span>Home</span>
                </a>
            </li><!-- End Dashboard Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="student_login2021.php">
                    <i class="bi bi-person"></i>
                    <span>Log Off</span>
                </a>
            </li><!-- End Profile Page Nav -->


            <li class="nav-item">
                <a class="nav-link collapsed" href="indexstudentgrade2021.php">
                    <i class="bi bi-person"></i>
                    <span>Current Grades</span>
                </a>
            </li><!-- End Profile Page Nav -->


            <li class="nav-item">
                <a class="nav-link collapsed" href="indexstudentbank2021.php">
                    <i class="bi bi-person"></i>
                    <span>Bank Statement</span>
                </a>
            </li><!-- End Profile Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="indexstudentstock2021.php">
                    <i class="bi bi-person"></i>
                    <span>My Stocks</span>
                </a>
            </li><!-- End Profile Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="indexstudentgame2021.php">
                    <i class="bi bi-person"></i>
                    <span>My Games</span>
                </a>
            </li><!-- End Profile Page Nav -->



            <li class="nav-item">
                <a class="nav-link collapsed" href="indexstudentjob2021.php">
                    <i class="bi bi-person"></i>
                    <span>Jobs</span>
                </a>
            </li><!-- End Profile Page Nav -->



            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>School Information</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a data-bs-toggle="modal" data-bs-target="#popupcalendar">
                            <i class="bi bi-circle"></i><span>Calendar</span>
                        </a>
                    </li>
                    <li>
                        <a href="components-accordion.html">
                            <i class="bi bi-circle"></i><span>Yearly Schedule</span>
                        </a>
                    </li>

                </ul>
            </li><!-- End Components Nav -->




            <li class="nav-heading">Resources</li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="https://www.wyzant.com/" target="_blank">
                    <i class="bi bi-person"></i>
                    <span>Tutors</span>
                </a>
            </li><!-- End Profile Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="https://www.google.com/drive/" target="_blank">
                    <i class="bi bi-question-circle"></i>
                    <span>Google Drive</span>
                </a>
            </li><!-- End F.A.Q Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="https://docs.google.com/document" target="_blank">
                    <i class="bi bi-envelope"></i>
                    <span>Google Docs</span>
                </a>
            </li><!-- End Contact Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="https://docs.google.com/spreadsheets" target="_blank">
                    <i class="bi bi-envelope"></i>
                    <span>Google Sheets</span>
                </a>
            </li><!-- End Contact Page Nav -->




            <li class="nav-item">
                <a class="nav-link collapsed" href="https://classroom.google.com/" target="_blank">
                    <i class="bi bi-envelope"></i>
                    <span>Google Classroom</span>
                </a>
            </li><!-- End Contact Page Nav -->


            <li class="nav-item">
                <a class="nav-link collapsed" href="https://www.grammarly.com/" target="_blank">
                    <i class="bi bi-envelope"></i>
                    <span>Grammarly</span>
                </a>
            </li>




        </ul>

    </aside><!-- End Sidebar-->

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexstudent2021.php">Home</a></li>
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
    <footer id="footer" class="footer">
        <div class="copyright">
            &copy; Copyright <strong><span>Vivaldi Systems 2021</span></strong>. All Rights Reserved
        </div>
        <div class="credits">

        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/quill/quill.min.js"></script>
    <script src="assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/vendor/chart.js/chart.min.js"></script>
    <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/vendor/echarts/echarts.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

</body>

</html>