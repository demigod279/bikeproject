<?php /* Smarty version Smarty-3.1.21-dev, created on 2022-01-24 08:10:13
         compiled from ".\templates\student_classview2021.tpl" */ ?>
<?php /*%%SmartyHeaderCode:822461e36f64283ae8-05252816%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ae904d31da24c7fb5c45ab6ccee37e83e79ca2c4' => 
    array (
      0 => '.\\templates\\student_classview2021.tpl',
      1 => 1643040581,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '822461e36f64283ae8-05252816',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_61e36f643c56f9_94080218',
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
    'ClassImage' => 0,
    'ClassNameInformation' => 0,
    'studenttype' => 0,
    'mybelt' => 0,
    'EnrollmentCoins' => 0,
    'EnrollmentPoints' => 0,
    'TodayBirthday' => 0,
    'textbookone' => 0,
    'title' => 0,
    'YouHaveMail' => 0,
    'myclasses' => 0,
    'classboard' => 0,
    'FlashCards' => 0,
    'classteacherno' => 0,
    'classno' => 0,
    'lessongrades' => 0,
    'lessonnames' => 0,
    'unitgrades' => 0,
    'unitnames' => 0,
    'CurrentUnit' => 0,
    'CurrentLessons' => 0,
    'Vocabulary' => 0,
    'todaydate' => 0,
    'recentlessons' => 0,
    'MyUnitList' => 0,
    'MyClassList' => 0,
    'Dragons' => 0,
    'CurrentBalance' => 0,
    'buystatus' => 0,
    'totalmissingassignments' => 0,
    'missingassignments' => 0,
    'todaysummary' => 0,
    'SchoolEventFeeds' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61e36f643c56f9_94080218')) {function content_61e36f643c56f9_94080218($_smarty_tpl) {?><!DOCTYPE html>
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
  
      <h6>User # <b><?php echo $_smarty_tpl->tpl_vars['userid']->value;?>
</b></h6>
      <h6>Year <b><?php echo $_smarty_tpl->tpl_vars['year']->value;?>
</b></h6>
      <h6>Term <b><?php echo $_smarty_tpl->tpl_vars['term']->value;?>
</b></h6>
      <h6>Grade <b><?php echo $_smarty_tpl->tpl_vars['grade']->value;?>
</b></h6>
  
      <div style="text-align:center" class="main-menu-header">
        <img src='<?php echo $_smarty_tpl->tpl_vars['ClassImage']->value;?>
' class='profile-avatar-img thumbnail' width='150' Height='150' alt='ClassImage' onclick="capture()"></br>
             <span style="font-size:14px"><b><?php echo $_smarty_tpl->tpl_vars['ClassNameInformation']->value;?>
</b></span> </br>
      </div> 
 <div style="text-align:center" class="main-menu-header">
      <h6><?php echo $_smarty_tpl->tpl_vars['studenttype']->value;?>
</h6>
      <h6><b><?php echo $_smarty_tpl->tpl_vars['mybelt']->value;?>
</b></h6>
      <h6><b>Coins: <?php echo $_smarty_tpl->tpl_vars['EnrollmentCoins']->value;?>
</b></h6>
 <h6><b>Points: <?php echo $_smarty_tpl->tpl_vars['EnrollmentPoints']->value;?>
</b></h6>
 <?php echo $_smarty_tpl->tpl_vars['TodayBirthday']->value;?>

 </div>

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
      <a class="nav-link collapsed" data-bs-toggle="modal" data-bs-target="#popupmessage">
        <i class="bi bi-person"></i>
        <span>Message Teacher</span>
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

            <?php echo $_smarty_tpl->tpl_vars['YouHaveMail']->value;?>

         

       <div class="col-12">



      <!-- List group with Advanced Contents -->
      <div class="list-group">
       
        
        <?php echo $_smarty_tpl->tpl_vars['myclasses']->value;?>



      </div><!-- End List group Advanced Content -->

       <div class="modal fade" id="popupboard" tabindex="-1">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">
                    <div class="modal-header">
                     
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                     <iframe width='100%' height='450px' id='mapcanvas' src='<?php echo $_smarty_tpl->tpl_vars['classboard']->value;?>
' frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>
                     </iframe>
                   
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                
                    </div>
                  </div>
                </div>
      </div><!-- End Vertically centered Modal-->



       <div class="modal fade" id="popupunitflash" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Vocabulary Flash Cards</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                  

                          <?php echo $_smarty_tpl->tpl_vars['FlashCards']->value;?>


               
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
                      <iframe frameborder="0" height="500px" width="100%" src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
                     </iframe>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           
                    </div>
                  </div>
               </div>
       </div><!-- End Extra Large Modal-->


       <div class="modal fade" id="popupmessage" tabindex="-1">
                <div class="modal-dialog modal-xl">
                                  <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h5 class="modal-title">Lesson Grades</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                      </div>
                                                      <div class="modal-body">
                                                      
                                                                    <h4 class="modal-title">Message your Teacher</h4>
                                                                    <div class="share-widget clearfix">
                                                                                  <form action="indexstudent2021.php" method="post">

                                                                                    <textarea name="teacherdiscussion_text" class="form-control share-widget-textarea" rows="3" placeholder="Send a note to the Teacher from Here" tabindex="1"></textarea>

                                                                                
                                                                                    <input name="classteacherno" type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['classteacherno']->value;?>
">
                                                                                    
                                                                                    <input name="classno" type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
">
                                                                                    
                                                                                    
                                                                                  <div class="share-widget-actions">
                                                                                      </br>
                                                                                      
                                                                                    <div class="pull-left">
                                                                                      <input type="submit" value="Send Message to Teacher Now">
                                                                                    </div>

                                                                                  </div> <!-- /.share-widget-actions -->
                                                                                </form> 
                                                                  </div> <!-- /.share-widget -->
                                        


                                                                  <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        
                                                                  </div>
                                                    </div>
                              </div>
                  </div><!-- End Extra Large Modal-->
       </div>


       <div class="modal fade" id="popupgrades" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Lesson Grades</h5>
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


 

       <div class="modal fade" id="popupunitgrades" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Unit Grades</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                     
                            <div id="barChartunit"></div>

                              <?php echo '<script'; ?>
>
                                document.addEventListener("DOMContentLoaded", () => {
                                  new ApexCharts(document.querySelector("#barChartunit"), {
                                    series: [{
                                      data: [<?php echo $_smarty_tpl->tpl_vars['unitgrades']->value;?>
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
                                      categories: [<?php echo $_smarty_tpl->tpl_vars['unitnames']->value;?>
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



      </div>

 

<!-- Trigger the modal with a button -->





 <div class="col-12">

 <div class="card">
            <div class="card-body">
             
              <!-- List group with Advanced Contents -->
              <div class="list-group">
               
                <div class="iconslist"> 
             

               

                 <div class="icon">
                  <a data-bs-toggle="modal" data-bs-target="#popupboard"><i class="bi bi-pencil-square"></i></a>
                  <div class="label">White Board</div>
                </div>

                 <div class="icon">
                 <a data-bs-toggle="modal" data-bs-target="#popupgrades"> <i class="bi bi-bar-chart-line"></i></a>
                  <div class="label">Grades</div>
                </div>
 </div>

              </div><!-- End List group Advanced Content -->

            </div>
          </div>

          </div>


            <!-- Classes-->
 <div class="col-12">

        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Unit Lessons - <?php echo $_smarty_tpl->tpl_vars['CurrentUnit']->value;?>
</h5>

              <!-- List group with Advanced Contents -->
              <div class="list-group">
               
                
                <?php echo $_smarty_tpl->tpl_vars['CurrentLessons']->value;?>


              </div><!-- End List group Advanced Content -->

            </div>
          </div>

   </div>

    <!-- Classes-->
 <div class="col-12">

        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Unit Vocabulary - <?php echo $_smarty_tpl->tpl_vars['CurrentUnit']->value;?>
  <a data-bs-toggle="modal" data-bs-target="#popupunitflash"> <u>Flash Cards</u></a></h5> </h5>

              <!-- List group with Advanced Contents -->
              <div class="list-group">
               
                
                  <h3 word-wrap: break-word;><?php echo $_smarty_tpl->tpl_vars['Vocabulary']->value;?>
</h3>

              </div><!-- End List group Advanced Content -->

            </div>
          </div>

   </div>

   
       

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
                        <th scope="col">Unit #</th>
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



    <!-- Class Units -->
    <div class="card">
           

    <div class="card-body pb-0">
    <h5 class="card-title">Class Units  <a data-bs-toggle="modal" data-bs-target="#popupunitgrades"><u>Unit Grades</u></a></h5>       
    <div class="news">
         
       <div class="post-item clearfix"> 
       <ul> 
         <?php echo $_smarty_tpl->tpl_vars['MyUnitList']->value;?>

        </ul>
      </div>
    </div>
      <br>
      <br>

    </div>
  </div><!-- Class Units -->



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


 


         <div class="col-12">

         <div class="card">
                    <div class="card-body">
        
                     
        
                        <div class="card-body">
                          <h3 class="card-title">Rewards</span></h3> 
                              <?php echo $_smarty_tpl->tpl_vars['Dragons']->value;?>

                              <br><br>
                           <?php echo $_smarty_tpl->tpl_vars['CurrentBalance']->value;?>
  
        <?php echo $_smarty_tpl->tpl_vars['buystatus']->value;?>

                        </div>
        
                      </div>
                    </div><!-- End Revenue Card -->
           </div>
             

          <!-- Recent Activity -->
          <div class="card">
           

            <div class="card-body">
              <h5 class="card-title"><?php echo $_smarty_tpl->tpl_vars['totalmissingassignments']->value;?>
 Missing Assignments <span>| Today - <?php echo $_smarty_tpl->tpl_vars['todaydate']->value;?>
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
