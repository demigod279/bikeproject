<?php /* Smarty version Smarty-3.1.21-dev, created on 2022-01-21 15:32:59
         compiled from ".\templates\indexstudentgrade2021.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2994561e371797e3a65-58971061%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4eb6dad84f7cdcc4c21ce91d1e468de5ccc4709a' => 
    array (
      0 => '.\\templates\\indexstudentgrade2021.tpl',
      1 => 1642806043,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2994561e371797e3a65-58971061',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_61e37179888b80_73465747',
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
    'title' => 0,
    'lessongrades' => 0,
    'lessonnames' => 0,
    'YouHaveMail' => 0,
    'totalcoins' => 0,
    'CurrentBalance' => 0,
    'CurrentStock' => 0,
    'StudentName' => 0,
    'ModifiedAdvanced' => 0,
    'CurrentDate' => 0,
    'ClassGrades' => 0,
    'todaydate' => 0,
    'recentlessons' => 0,
    'missingassignments' => 0,
    'todaysummary' => 0,
    'SchoolEventFeeds' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61e37179888b80_73465747')) {function content_61e37179888b80_73465747($_smarty_tpl) {?><!DOCTYPE html>
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

<body>

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
          <i class="bi bi-menu-button-wide"></i><span>School Information</span><i class="bi bi-chevron-down ms-auto"></i>
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
      <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="indexstudent2021.php">Home</a></li>
          <li class="breadcrumb-item active"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</li>
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
                     <iframe width='100%' height='450px' id='mapcanvas' src='https://browserboard.com/whiteboard/TixjACojgjaGG54wigREno?key=BDkSycSHfq3SnMDoqmVizM' frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>
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
                      <iframe frameborder="0" height="500px" width="100%" src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
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

                              <?php echo '<script'; ?>
>
                                document.addEventListener("DOMContentLoaded", () => {
                                  new ApexCharts(document.querySelector("#barChart"), {
                                    series: [{
                                      data: [<?php echo $_smarty_tpl->tpl_vars['lessongrades']->value;?>
]
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
                                      categories: [<?php echo $_smarty_tpl->tpl_vars['lessonnames']->value;?>
 ],
                                    }
                                  }).render();
                                });
                              <?php echo '</script'; ?>
>
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
        <div class="col-lg-8">
          <div class="row">

            <?php echo $_smarty_tpl->tpl_vars['YouHaveMail']->value;?>

         


         

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

               
                <div class="card-body">
                  <h5 class="card-title">My Total Coins</h5>

                  <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <span class="text-muted small pt-2 ps-1"><?php echo $_smarty_tpl->tpl_vars['totalcoins']->value;?>
</span>
                       <span class="text-muted small pt-2 ps-1">Coin Worth $1000</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

             

                <div class="card-body">
                  <h5 class="card-title">Bank Balance</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <span class="text-muted small pt-2 ps-1"><?php echo $_smarty_tpl->tpl_vars['CurrentBalance']->value;?>
</span>
                       <span class="text-muted small pt-2 ps-1">Statement for Detail</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">
              

                <div class="card-body">
                  <h5 class="card-title">Stock Portfolio</span></h5>

                  <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <span class="text-muted small pt-2 ps-1"><?php echo $_smarty_tpl->tpl_vars['CurrentStock']->value;?>
</span>
                       <span class="text-muted small pt-2 ps-1">Stocks you own</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->



     <div class="col-12">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"> Report Card for  <?php echo $_smarty_tpl->tpl_vars['StudentName']->value;?>
&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $_smarty_tpl->tpl_vars['ModifiedAdvanced']->value;?>
<br>Date:&nbsp;<b> <?php echo $_smarty_tpl->tpl_vars['CurrentDate']->value;?>
</b></h5>

              
                                  
                                    
                                <div class="panel-body">
                                    <table class="table" >
                                        <tbody>

                                            <?php echo $_smarty_tpl->tpl_vars['ClassGrades']->value;?>


                                        </tbody>
                                    </table>
                                </div>
                             

            </div>
        </div>

     </div>

 <div class="col-12">

 <div class="card">
            <div class="card-body">
             
       
                     <div class="iconslist"> 
           
               
                 <div class="icon">
                  <a data-bs-toggle="modal" data-bs-target="#popupcalendar"> <i class="bi bi-calendar3"></i></a>
                  <div class="label">Calender</div>
                </div>

                

                 <div class="icon">
                  <a data-bs-toggle="modal" data-bs-target="#popupgrades"><i class="bi bi-bar-chart-line"></i></a>
                  <div class="label">Grades</div>
                </div>
              </div>


            </div>
          </div>

     </div>


            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales">

                

                <div class="card-body">
                  <h5 class="card-title">Recent Lessons <span>| Today - <?php echo $_smarty_tpl->tpl_vars['todaydate']->value;?>
</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">Date/Time</th>
                        <th scope="col">Subject</th>
                        <th scope="col">Lesson</th>
                        <th scope="col">Grade</th>
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

          <!-- Recent Activity -->
          <div class="card">
           

            <div class="card-body">
              <h5 class="card-title">Missing Assignments <span>| Today - <?php echo $_smarty_tpl->tpl_vars['todaydate']->value;?>
</span></h5>

              <div class="activity">

                  <?php echo $_smarty_tpl->tpl_vars['missingassignments']->value;?>



               

              </div>

            </div>
          </div><!-- End Recent Activity -->

     <!-- News & Updates Traffic -->
     <div class="card">
           

           <div class="card-body pb-0">
             <h5 class="card-title">Today's Summary <span>| Today - <?php echo $_smarty_tpl->tpl_vars['todaydate']->value;?>
</span></h5>

             <div class="news">
                
             <?php echo $_smarty_tpl->tpl_vars['todaysummary']->value;?>

    

             </div><!-- End sidebar recent posts-->

           </div>
         </div><!-- End News & Updates -->


          <!-- News & Updates Traffic -->
          <div class="card">
           

            <div class="card-body pb-0">
              <h5 class="card-title">School News &amp; Updates <span></span></h5>

              <div class="news">
                
              <div class="post-item clearfix">
                 
         

         <?php echo $_smarty_tpl->tpl_vars['SchoolEventFeeds']->value;?>


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
      &copy; Copyright <strong><span>Vivaldi Systems 2021</span></strong>. All Rights Reserved
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
