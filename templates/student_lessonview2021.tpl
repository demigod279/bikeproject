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
<script language="JavaScript" type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" lang="javascript" src="dblclick.js"></script>

<body onkeydown="return (event.keyCode != 116)"
    onload="setupDoubleClick('https://dictionary.cambridge.org/', 'british', false, null, 5, 'popup' )">

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
                <h6>{$studenttype}</h6>
                <h6><b>{$mybelt}</b></h6>
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

            {$textbookone}

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
                        <a href="#">
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
                    <li class="breadcrumb-item active"><a
                            href="student_classview2021.php?classno={$classno}">Classroom</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-8">
                    <div class="row">



                        <div class="col-12">
                            <!-- List group with Advanced Contents -->
                            <div class="list-group">


                                {$myclasses}


                            </div><!-- End List group Advanced Content -->
                        </div>

                        <div class="modal fade" id="popupcalendar" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Calendar</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <iframe frameborder="0" height="500px" width="100%"
                                            src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
                                        </iframe>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Extra Large Modal-->


                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"><img src="images\classimage.png" alt="">Unit - {$CurrentUnit}
                                </h5>

                                <!-- List group with Advanced Contents -->
                                <div class="list-group">


                                    {$CurrentLessons}

                                </div><!-- End List group Advanced Content -->

                            </div>
                        </div>

                        <!-- News & Updates Traffic -->
                        <div class="card">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"><img src="images\classimage.png" alt="">Lesson Overview</h5>


                                    <!-- Default Tabs -->
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">

                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="objective-tab" data-bs-toggle="tab"
                                                data-bs-target="#objective" type="button" role="tab"
                                                aria-controls="objective" aria-selected="true">Objective</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="activity-tab" data-bs-toggle="tab"
                                                data-bs-target="#activity" type="button" role="tab"
                                                aria-controls="activity" aria-selected="false">Activities</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="results-tab" data-bs-toggle="tab"
                                                data-bs-target="#results" type="button" role="tab"
                                                aria-controls="results" aria-selected="false">Results</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="standard-tab" data-bs-toggle="tab"
                                                data-bs-target="#standard" type="button" role="tab"
                                                aria-controls="standard" aria-selected="false">Standards</button>
                                        </li>
                                    </ul>
                                    <div class="tab-content pt-2" id="myTabContent">


                                        <div class="tab-pane fade  show active" id="objective" role="tabpanel"
                                            aria-labelledby="objective-tab">
                                            {$lessonobjective}
                                        </div>
                                        <div class="tab-pane fade" id="activity" role="tabpanel"
                                            aria-labelledby="activity-tab">
                                            {$lessonactivity}
                                        </div>
                                        <div class="tab-pane fade" id="results" role="tabpanel"
                                            aria-labelledby="results-tab">
                                            {$lessonresults}
                                        </div>
                                        <div class="tab-pane fade" id="standard" role="tabpanel"
                                            aria-labelledby="standard-tab">
                                            {$LessonStandard}
                                        </div>
                                    </div><!-- End Default Tabs -->

                                </div>
                            </div>



                        </div><!-- End News & Updates -->



                        <div class="row">
                            <div class="col-xs-12 mt-1 mb-3">



                                {$LinkToConceptVirtualLink}

                            </div>
                        </div>
                        <hr>
                        <div class="modal fade" id="verticalycenteredbook" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Student Book</h5>
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
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Extra Large Modal-->



                        <!-- Recent Sales -->
                        <div class="col-12">
                            <div class="card recent-sales">



                                <div class="card-body">
                                    <h5 class="card-title"><img src="images\classimage.png" alt="">Lesson History
                                        <span>| Today - {$todaydate}</span>
                                    </h5>

                                    <table class="table table-borderless datatable">
                                        <thead>
                                            <tr>
                                                <th scope="col">Date/Time</th>
                                                <th scope="col">Assignment</th>
                                                <th scope="col">Result</th>
                                                <th scope="col">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            {$recentlessons}

                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div><!-- End Recent Sales -->



                    </div>
                </div><!-- End Left side columns -->





                <!-- Right side columns -->
                <div class="col-lg-4">

                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Online Teacher</h5>
                            {$onlineteacher}

                        </div>
                    </div><!-- My classes -->


                    <!-- My Classes -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\flagimage.png" alt="">Lesson Homework</h5>

                            <div class="news">

                                <div class="post-item clearfix">
                                    {$MyHomework} <br>
                                    <b>Grade: </b>{$homeworkgrade}
                                </div>



                                <div class="share-widget clearfix">
                                    <form action="student_lessonview2021.php?classno={$classno}&lessonno={$lessonno}"
                                        method="get">

                                        <input type="hidden" name="lessonno" value={$lessonno} />
                                        <input type="hidden" name="classno" value={$classno} />
                                        <input type="hidden" name="studentno" value={$studentno} />
                                        <textarea name="classdiscussion_text" class="form-control share-widget-textarea"
                                            rows="3" placeholder="Enter Homework here after you complete the Lesson"
                                            tabindex="1"></textarea>

                                        <div class="share-widget-actions">


                                            <div class="pull-left">
                                                <b>{$islessondone}</b><br>

                                                <input type="submit" {$submitdisabled} value="Save Homework">
                                            </div>


                                        </div> <!-- /.share-widget-actions -->
                                    </form>
                                </div> <!-- /.share-widget -->

                                <br>

                                <b>Previous Homework Submissions:</b> <br>
                                {$Submissions}



                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->

                    <!-- My Classes -->
                    <div class="card">





                        <div class="card-body pb-0">
                            <h5 class="card-title"><img src="images\toolsimage.png" alt="">Lesson Resources </h5>
                            <div class="news">

                                <div class="post-item clearfix">
                                    {$lessonresources1}<br><br>
                                    {$lessonresources2}<br><br>
                                    {$lessonresources3}<br><br>
                                </div>
                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->


                    <!-- My Classes -->
                    <div class="card">





                        <div class="card-body pb-0">
                            <h5 class="card-title">My Classes </h5>
                            <div class="news">

                                <div class="post-item clearfix">
                                    {$MyClassList}
                                </div>
                            </div>
                            <br>
                            <br>

                        </div>
                    </div><!-- My classes -->




                    <!-- News & Updates Traffic -->
                    <div class="card">


                        <div class="card-body pb-0">
                            <h5 class="card-title">Lesson Vocabulary<span></span></h5>

                            <div class="news">

                                <div class="post-item clearfix">

                                    {$LessonVocabulary}



                                </div><!-- End sidebar recent posts-->

                            </div>
                        </div><!-- End News & Updates -->

                    </div><!-- End Right side columns -->


                </div>
        </section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }