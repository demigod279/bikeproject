<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>{$sitename}</title>
    <meta content="" name="description">
    <meta content="" name="keywords">


    <script type="text/javascript" lang="javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" lang="javascript" src="dblclick.js?version=5.0.94"></script>





    <!-- Favicons 3.5.0-->
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
    <script src="index.js"></script>



    <script type="text/javascript">
        var state = {};
        var title = "";
        var url = "index.html";

        history.pushState(state, title, url);
    </script>


    <script type="text/javascript">
        document.addEventListener('contextmenu', function(e) {
            alert("Right Click is Disabled for Security!");
            e.preventDefault();
        });


        document.onkeydown = function(e) {
            if (event.keyCode == 123) {
                return false;
            }
            if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)) {
                return false;
            }
        }
    </script>

    <script type="module">
        if (window.devtools.isOpen) {
            //alert("Developer Tools is Disabled for Security!");
            // window.location.replace("pagebaddev.html");

        }

        // Check it's orientation, `undefined` if not open
        //console.log('DevTools orientation:', window.devtools.orientation);

        // Get notified when it's opened/closed or orientation changes
        window.addEventListener('devtoolschange', event => {


            //   window.location.replace("pagebaddev.html");

        });
    </script>


    <script type="text/javascript">
        (function(global) {

            if (typeof(global) === "undefined") {
                throw new Error("window is undefined");
            }

            var _hash = "!";
            var noBackPlease = function() {
                global.location.href += "#";

                // Making sure we have the fruit available for juice (^__^)
                global.setTimeout(function() {
                    global.location.href += "!";
                }, 50);
            };

            global.onhashchange = function() {
                if (global.location.hash !== _hash) {
                    global.location.hash = _hash;
                }
            };

            global.onload = function() {
                noBackPlease();

                // Disables backspace on page except on input fields and textarea..
                document.body.onkeydown = function(e) {
                    var elm = e.target.nodeName.toLowerCase();
                    if (e.which === 8 && (elm !== 'input' && elm !== 'textarea')) {
                        e.preventDefault();
                    }
                    // Stopping the event bubbling up the DOM tree...
                    e.stopPropagation();
                };
            }
        })(window);



        document.addEventListener('contextmenu', function(e) {
            alert("Right Click is Disabled for Security!");
            e.preventDefault();
        });


        document.onkeydown = function(e) {
            if (event.keyCode == 123) {
                return false;
            }
            if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
                return false;
            }
            if (e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)) {
                return false;
            }
        }






        var ua = navigator.userAgent.toLowerCase();
        var isSafari = false;
        try {
            isSafari = /constructor/i.test(window.HTMLElement) || (function(p) {
                return p.toString() ===
                    "[object SafariRemoteNotification]";
            })(!window['safari'] || safari.pushNotification);
        } catch (err) {}
        isSafari = (isSafari || ((ua.indexOf('safari') != -1) && (!(ua.indexOf('chrome') != -1) && (ua.indexOf(
            'version/') != -1))));

        //test
        if (isSafari == false) {
            //  window.addEventListener('storage', () => {

            //    window.location.replace("pagebads.html");

            // }, false)

            // localStorage.setItem('Sentinel',Math.random());
        }
    </script>



    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
    <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax/es5/tex-mml-chtml.js"></script>


    <style>
        .MathJax {
            font-size: 24pt;
        }


        .fraction,
        .top,
        .bottom {
            padding: 0 5px;
        }

        .fraction {
            display: inline-block;
            text-align: center;
        }

        .bottom {
            border-top: 1px solid #000;
            display: block;
        }
    </style>




</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns"
    class="vertical-layout vertical-menu 2-columns  fixed-navbar" onkeydown="return (event.keyCode != 116)"
    onload="setupDoubleClick( 'https://dictionary.cambridge.org/', 'british', false, null, 5, 'popup' ) ">


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
                <a class="nav-link collapsed" href="student_login2021.php">
                    <i class="bi bi-person"></i>
                    <span>Current Grades</span>
                </a>
            </li><!-- End Profile Page Nav -->


            <li class="nav-item">
                <a class="nav-link collapsed" href="student_login2021.php">
                    <i class="bi bi-person"></i>
                    <span>Bank Statement</span>
                </a>
            </li><!-- End Profile Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="student_login2021.php">
                    <i class="bi bi-person"></i>
                    <span>My Stocks</span>
                </a>
            </li><!-- End Profile Page Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="student_login2021.php">
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
                        <a href="components-alerts.html">
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
                    <li class="breadcrumb-item active"><a
                            href="student_classview2021.php?classno={$classno}">Classroom</a></li>
                    <li class="breadcrumb-item active"><a
                            href="student_lessonview2021.php?classno={$classno}&lessonno={$lessonno}">Lesson</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-12">
                    <div class="row">

                        <!-- List group with Advanced Contents -->
                        <div class="list-group">


                            <h5><b>Lesson: </b>{$LessonNameInformation}</h5>
                            <br><br>
                            <h5>{$grademessage}</h5>
                            <h1>{$result}</h1>

                        </div>




                        <div class="row">
                            <ul>

                                {$lessonresults}

                            </ul>






                        </div>
                    </div>


                </div>
            </div><!-- End Left side columns -->


        </section>

    </main><!-- End #main -->




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




    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script src='https://code.responsivevoice.org/responsivevoice.js'></script>

    <script type="text/javascript">
        function checkconfirm() {

            var strreturn = false;

            var radios = document.getElementsByName("Questions");

            for (var i = 0, len = radios.length; i < len; i++) {
                if (radios[i].checked) {
                    strreturn = true;
                }
            }


            if (strreturn == false) {
                alert("Please select an Answer before continuing.");
                return false;
            }


            var a = 0;
            var strresponse = confirm("Are you sure you want to select this Answer?");

            if (strresponse == true) {

                return true;

            } else {

                return false;
            }


        }
    </script>



    <script type="text/javascript">
        function timercheck() {

            if (document.getElementById("message").value == "") {
                myFunc();
            }
        }


        function move() {

            //div.scrollByLines(2);
            var divframe = document.getElementById('popup-messagearea');
            divframe.scrollTop = divframe.scrollHeight;

        }

        //function to open and close chat

        $(function() {
            $("#addClass").click(
                function() {
                    $('#qnimate').addClass('popup-box-on');


                    keepgoing = true;

                    document.getElementById("message").focus();

                    document.getElementById("message").value = "";

                    myFunc();

                    move();






                });

            $("#removeClass").click(
                function() {
                    $('#qnimate').removeClass('popup-box-on');

                    keepgoing = false;

                });



        })

        //enter key function 
        $(document).on("keyup", function(e) {
            var key = e.which;

            if (key == 13) // the enter key ascii code
            {
                myFunc();
            }
        });


        //function to get data






        function myFunc() {

            var today = new Date();
            var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

            document.getElementById("headerdiv").innerHTML = " Class Chat (" + time + ")";

            //alert(time);    

            var strmessage = document.getElementById("message").value;

            document.getElementById("message").value = "";


            var div = document.getElementById('messagearea');

            //div.innerHTML += '<div class="direct-chat-msg doted-border"> <div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-left">Student</span>    </div>   <div class="direct-chat-text">'+strmessage+'</div></div>';    


            strstudentname = "{$UserName}";    


            //privatechat  

            var remember = document.getElementById('privatechat');
            if (remember.checked && strmessage != "") {

                strmessage = "PRIVATE: " + strmessage;
                remember.checked = false;
            }



            $.ajax({
                type: "GET",
                url: 'servertopic.php',
                dataType: "text",
                async: false,
                {$ajaxdatastring},
                success: function(data) {

                    if (data != "NOMESSAGE") {

                        div.innerHTML = "";


                        var myarray = data.split('~');

                        for (var i = 0; i < myarray.length; i++) {


                            var myarraylast = myarray[i].split('*');

                            if (myarraylast[0] != "NOMESSAGE") {

                                div.innerHTML +=
                                    '<div class="direct-chat-msg doted-border"> <div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-left">' +
                                    myarraylast[0] + '</span>    </div>   <div class="direct-chat-text">' +
                                    myarraylast[2] +
                                    '</div><div class="direct-chat-info clearfix"><span class="direct-chat-timestamp pull-right">' +
                                    myarraylast[1] + '</span> </div></div>';
                            }

                        }

                        move();


                        // alert(data);
                    }


                    setTimeout(timercheck, 15000);

                }
            });


        }



        //scroll
        move();
    </script>

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }