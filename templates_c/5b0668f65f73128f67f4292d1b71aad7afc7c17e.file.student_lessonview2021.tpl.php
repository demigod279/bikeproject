<?php /* Smarty version Smarty-3.1.21-dev, created on 2022-01-24 14:01:49
         compiled from ".\templates\student_lessonview2021.tpl" */ ?>
<?php /*%%SmartyHeaderCode:280761e36f72b73eb7-95937932%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5b0668f65f73128f67f4292d1b71aad7afc7c17e' => 
    array (
      0 => '.\\templates\\student_lessonview2021.tpl',
      1 => 1643061686,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '280761e36f72b73eb7-95937932',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_61e36f72c26361_15183390',
  'variables' => 
  array (
    'sitename' => 1,
    'schoolname' => 0,
    'NotificationCount' => 0,
    'Notifications' => 0,
    'MessagesCount' => 0,
    'Messages' => 0,
    'uploadpath' => 1,
    'profileimage' => 0,
    'username' => 0,
    'usertype' => 0,
    'userid' => 0,
    'year' => 0,
    'term' => 0,
    'grade' => 0,
    'studenttype' => 0,
    'mybelt' => 0,
    'textbookone' => 0,
    'title' => 0,
    'classno' => 0,
    'myclasses' => 0,
    'CurrentUnit' => 0,
    'CurrentLessons' => 0,
    'lessonobjective' => 0,
    'lessonactivity' => 0,
    'lessonresults' => 0,
    'LessonStandard' => 0,
    'LinkToConceptVirtualLink' => 0,
    'lessonno' => 0,
    'todaydate' => 0,
    'recentlessons' => 0,
    'MyHomework' => 0,
    'studentno' => 0,
    'islessondone' => 0,
    'submitdisabled' => 0,
    'Submissions' => 0,
    'MyClassList' => 0,
    'LessonVocabulary' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61e36f72c26361_15183390')) {function content_61e36f72c26361_15183390($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>
</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
  * Template Name: <?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>
 - v2.1.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<?php echo '<script'; ?>
 language="JavaScript" type="text/javascript" src="jquery.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" lang="javascript" src="dblclick.js"><?php echo '</script'; ?>
>

<body  onkeydown="return (event.keyCode != 116)" onload="setupDoubleClick('https://dictionary.cambridge.org/', 'british', false, null, 5, 'popup' )" >

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="indexstudent2021.php" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block"><?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>
</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->


    <div class="d-flex align-items-center justify-content-between">
      <a href="indexstudent2021.php" class="logo d-flex align-items-center">
      
        <span class="d-none d-lg-block">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['schoolname']->value;?>
</span>
      </a>
    
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
            <span class="badge bg-primary badge-number"><?php echo $_smarty_tpl->tpl_vars['NotificationCount']->value;?>
</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have <?php echo $_smarty_tpl->tpl_vars['NotificationCount']->value;?>
 new notifications
           
            </li>
            <?php echo $_smarty_tpl->tpl_vars['Notifications']->value;?>


           


            <li>
              <hr class="dropdown-divider">
            </li>
           

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number"><?php echo $_smarty_tpl->tpl_vars['MessagesCount']->value;?>
</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have <?php echo $_smarty_tpl->tpl_vars['MessagesCount']->value;?>
 new messages
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

         <?php echo $_smarty_tpl->tpl_vars['Messages']->value;?>



          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="<?php echo $_smarty_tpl->tpl_vars['uploadpath']->value;
echo $_smarty_tpl->tpl_vars['profileimage']->value;?>
" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo $_smarty_tpl->tpl_vars['username']->value;?>
</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><?php echo $_smarty_tpl->tpl_vars['username']->value;?>
</h6>
              <span><?php echo $_smarty_tpl->tpl_vars['usertype']->value;?>
</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
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
      
      <h5><i class="bi bi-person"></i><b> <?php echo $_smarty_tpl->tpl_vars['username']->value;?>
</b></h5>
      <h6># <?php echo $_smarty_tpl->tpl_vars['userid']->value;?>
</h6>
      <h6><?php echo $_smarty_tpl->tpl_vars['year']->value;?>
</h6>
      <h6><?php echo $_smarty_tpl->tpl_vars['term']->value;?>
</h6>
      <h6>Grade <?php echo $_smarty_tpl->tpl_vars['grade']->value;?>
</h6>
      <h6><?php echo $_smarty_tpl->tpl_vars['studenttype']->value;?>
</h6>
       <h6><b><?php echo $_smarty_tpl->tpl_vars['mybelt']->value;?>
</b></h6>
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

<?php echo $_smarty_tpl->tpl_vars['textbookone']->value;?>


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
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#" >
          <i class="bi bi-menu-button-wide"></i><span>School Information</span><i class="bi bi-chevron-down ms-auto"></i>
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

      <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="indexstudent2021.php">Home</a></li>
          <li class="breadcrumb-item active"><a href="student_classview2021.php?classno=<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
">Classroom</a></li>
          <li class="breadcrumb-item active"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</li>
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
       
        
           <?php echo $_smarty_tpl->tpl_vars['myclasses']->value;?>



          </div><!-- End List group Advanced Content -->
      </div>

      <div class="modal fade" id="popupcalendar" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Calendar</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <iframe frameborder="0" height="500px" width="100%" src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
                     </iframe>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           
                    </div>
                  </div>
               </div>
       </div><!-- End Extra Large Modal-->

    <!-- News & Updates Traffic -->
         <div class="card">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Lesson Overview</h5>

              <!-- Default Tabs -->
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#lesson" type="button" role="tab" aria-controls="lesson" aria-selected="true">Lesson</button>
                </li>

                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Objective</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Activities</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Results</button>
                </li>
                 <li class="nav-item" role="presentation">
                  <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#standard" type="button" role="tab" aria-controls="standard" aria-selected="false">Standards</button>
                </li>
              </ul>
              <div class="tab-content pt-2" id="myTabContent">

              <div class="tab-pane fade show active" id="lesson" role="tabpanel" aria-labelledby="lesson-tab">

                                    <!-- Classes-->
                        <div class="col-12">

                                <div class="card">
                                    <div class="card-body">
                                      <h5 class="card-title">Unit - <?php echo $_smarty_tpl->tpl_vars['CurrentUnit']->value;?>
</h5>

                                      <!-- List group with Advanced Contents -->
                                      <div class="list-group">
                                    
                                        
                                        <?php echo $_smarty_tpl->tpl_vars['CurrentLessons']->value;?>


                                      </div><!-- End List group Advanced Content -->

                                    </div>
                                  </div>

                          </div>

              </div>

                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                  <?php echo $_smarty_tpl->tpl_vars['lessonobjective']->value;?>

                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  <?php echo $_smarty_tpl->tpl_vars['lessonactivity']->value;?>

                </div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                  <?php echo $_smarty_tpl->tpl_vars['lessonresults']->value;?>

                </div>
                 <div class="tab-pane fade" id="standard" role="tabpanel" aria-labelledby="standard-tab">
                  <?php echo $_smarty_tpl->tpl_vars['LessonStandard']->value;?>

                </div>
              </div><!-- End Default Tabs -->

            </div>
          </div>


           
         </div><!-- End News & Updates -->



    <div class="row">
        <div class="col-xs-12 mt-1 mb-3">
     
            
        
            <?php echo $_smarty_tpl->tpl_vars['LinkToConceptVirtualLink']->value;?>

 
        </div>
        </div>
    <hr>
 <div class="modal fade" id="verticalycenteredbook" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Student Book</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <iframe width='100%' height='600px'  src='report_student_lessonbookform.php?classno=<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
&lessonno=<?php echo $_smarty_tpl->tpl_vars['lessonno']->value;?>
' frameborder='0' scrolling='yes' marginheight='10' marginwidth='10'>
                     </iframe>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           
                    </div>
                  </div>
                </div>
              </div><!-- End Extra Large Modal-->
   
       

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales">

                

                <div class="card-body">
                  <h5 class="card-title">Lesson History <span>| Today - <?php echo $_smarty_tpl->tpl_vars['todaydate']->value;?>
</span></h5>

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
                  
                     <?php echo $_smarty_tpl->tpl_vars['recentlessons']->value;?>


                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

           

          </div>
        </div><!-- End Left side columns -->




        
        <!-- Right side columns -->
        <div class="col-lg-4">




<!-- My Classes -->
         <div class="card">
           

           <div class="card-body pb-0">
           <h5 class="card-title">Lesson Homework</h5>   
            
           <div class="news">
                
              <div class="post-item clearfix">  
                <?php echo $_smarty_tpl->tpl_vars['MyHomework']->value;?>
<br>
             </div>



            <div class="share-widget clearfix">
            <form action="student_lessonview2021.php?classno=<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
&lessonno=<?php echo $_smarty_tpl->tpl_vars['lessonno']->value;?>
" method="get">

             <input type="hidden" name="lessonno" value=<?php echo $_smarty_tpl->tpl_vars['lessonno']->value;?>
 />
             <input type="hidden" name="classno" value=<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
 />
             <input type="hidden" name="studentno" value=<?php echo $_smarty_tpl->tpl_vars['studentno']->value;?>
 />
              <textarea name="classdiscussion_text" class="form-control share-widget-textarea" rows="3" placeholder="Enter Homework here after you complete the Lesson" tabindex="1"></textarea>

              <div class="share-widget-actions">


              <div class="pull-left">
                <b><?php echo $_smarty_tpl->tpl_vars['islessondone']->value;?>
</b><br> 
           
                <input type="submit"  <?php echo $_smarty_tpl->tpl_vars['submitdisabled']->value;?>
 value="Save Homework">
              </div>

 
              </div> <!-- /.share-widget-actions -->
            </form>
            </div> <!-- /.share-widget -->

            <br>

Previous Homework Submissions: <br>
               <?php echo $_smarty_tpl->tpl_vars['Submissions']->value;?>




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
     <?php echo $_smarty_tpl->tpl_vars['MyClassList']->value;?>

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
                 
                <?php echo $_smarty_tpl->tpl_vars['LessonVocabulary']->value;?>



   
              </div><!-- End sidebar recent posts-->

            </div>
          </div><!-- End News & Updates -->

        </div><!-- End Right side columns -->








      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Vivaldi Systems 2021 v1.5</span></strong>. All Rights Reserved
    </div>
    <div class="credits">

    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <?php echo '<script'; ?>
 src="assets/vendor/bootstrap/js/bootstrap.bundle.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/php-email-form/validate.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/quill/quill.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/tinymce/tinymce.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/simple-datatables/simple-datatables.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/chart.js/chart.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/apexcharts/apexcharts.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="assets/vendor/echarts/echarts.min.js"><?php echo '</script'; ?>
>

  <!-- Template Main JS File -->
  <?php echo '<script'; ?>
 src="assets/js/main.js"><?php echo '</script'; ?>
>

</body>

</html><?php }} ?>
