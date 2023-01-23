<?php /* Smarty version Smarty-3.1.21-dev, created on 2022-01-25 10:26:41
         compiled from ".\templates\student_conceptview2021.tpl" */ ?>
<?php /*%%SmartyHeaderCode:189961e36f830b26b2-66859921%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c06ef3a2751049f7d44f8d12a43b5181bf9914b0' => 
    array (
      0 => '.\\templates\\student_conceptview2021.tpl',
      1 => 1643134701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '189961e36f830b26b2-66859921',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_61e36f832084a4_95515598',
  'variables' => 
  array (
    'sitename' => 1,
    'settimer' => 0,
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
    'classno' => 0,
    'lessonno' => 0,
    'myclasses' => 0,
    'ConceptMap' => 0,
    'classboard' => 0,
    'ConceptImage' => 0,
    'ConceptTitleInformation' => 0,
    'ConceptTextInformation' => 0,
    'EmbedConcept' => 0,
    'ConceptTextInformation2' => 0,
    'AddGameUrl' => 0,
    'AddReview' => 0,
    'AddDivision' => 0,
    'AddChart' => 0,
    'LinkToConceptVirtualLink' => 0,
    'ConceptGame' => 0,
    'ConceptDescriptionInformation' => 0,
    'ConceptEmbedded' => 0,
    'ConceptMultiplication' => 0,
    'ConceptStringGame' => 0,
    'ConceptMoney' => 0,
    'ConceptShapes' => 0,
    'ConceptFraction' => 0,
    'ConceptWorldMap' => 0,
    'ConceptLeapo' => 0,
    'ConceptNumberLine' => 0,
    'phppage' => 0,
    'confirmnext' => 0,
    'ShowAnswer' => 0,
    'sessionid' => 0,
    'goto1' => 0,
    'goto2' => 0,
    'goto3' => 0,
    'goto4' => 0,
    'practice' => 0,
    'answer' => 0,
    'conceptno' => 0,
    'discussiontypeanswer' => 0,
    'nextconceptkey' => 0,
    'conceptkeysave' => 0,
    'backconceptkey' => 0,
    'LastCorrect' => 0,
    'PracticeQuestion' => 0,
    'EmbedQuestion' => 0,
    'totalconceptsnumber' => 0,
    'Questions' => 0,
    'timerseconds' => 0,
    'nextbutton' => 0,
    'HintDisabled' => 0,
    'HintTitle' => 0,
    'QuestionHint' => 0,
    'ajaxdata' => 0,
    'showhidetimer' => 0,
    'UserName' => 0,
    'ajaxdatastring' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61e36f832084a4_95515598')) {function content_61e36f832084a4_95515598($_smarty_tpl) {?><!DOCTYPE html>
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
 <?php echo '<script'; ?>
 src="index.js"><?php echo '</script'; ?>
>



     <?php echo '<script'; ?>
 type="text/javascript">


     
        var state = {};
        var title = "";
        var url   = "index.html";

        history.pushState(state, title, url);
       
 
<?php echo '</script'; ?>
>
    
<?php echo '<script'; ?>
 type ="text/javascript">
   
   var downloadTimer

   function showhidetimer(intseconds) 
        {  
            

         // alert("Timer Set");

                if( <?php echo $_smarty_tpl->tpl_vars['settimer']->value;?>
 )
                    {
                       

                      document.getElementById("progressBarTimer").value = intseconds;

                       //Timer
                       var timeleft = 0;
                       downloadTimer = setInterval(function(){
                         if( intseconds - timeleft < 0)
                         {
                              clearInterval(downloadTimer);
                              alert("Time up on this question!");
                              document.InnovakidsQuestion.submit();
                          }

                          document.getElementById("progressBarTimer").value = intseconds - timeleft;
                          timeleft += 1;
                        }, 1000);
    
                        document.getElementById("Questions").focus();

                    }
             
            
        } 


<?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
 type ="text/javascript">
        

      

        
         //     document.addEventListener('contextmenu', function(e){
        //alert("Right Click is Disabled for Security!");
          //e.preventDefault();
        //});
     
       
       document.onkeydown = function(e) {
  if(event.keyCode == 123) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
     return false;
  }
    if(e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)) {
     return false;
  }
}
        
        

    
<?php echo '</script'; ?>
>  
 
<?php echo '<script'; ?>
 type="module">
	if( window.devtools.isOpen )
       {
           //alert("Developer Tools is Disabled for Security!");
           // window.location.replace("pagebaddev.html");
           
       }

	// Check it's orientation, `undefined` if not open
	//console.log('DevTools orientation:', window.devtools.orientation);

	// Get notified when it's opened/closed or orientation changes
	window.addEventListener('devtoolschange', event => {
		
          
         //   window.location.replace("pagebaddev.html");
 
	});
 
       
<?php echo '</script'; ?>
>     
  
       
   <?php echo '<script'; ?>
 type ="text/javascript">
       
       (function (global) {

    if(typeof (global) === "undefined") {
        throw new Error("window is undefined");
    }

    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";

        // Making sure we have the fruit available for juice (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
    };

    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
        }
    };

    global.onload = function () {
        noBackPlease();

        // Disables backspace on page except on input fields and textarea..
        document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // Stopping the event bubbling up the DOM tree...
            e.stopPropagation();
        };
    }
})(window);


//turn off debug
           document.addEventListener('contextmenu', function(e){
           alert("Right Click is Disabled for Security!");
            e.preventDefault();
           });
     
       
       document.onkeydown = function(e) {
  if(event.keyCode == 123) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
     return false;
  }
    if(e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)) {
     return false;
  }
}
       
       

       
       
      
   var ua = navigator.userAgent.toLowerCase(); 
  var isSafari = false;
  try {
    isSafari = /constructor/i.test(window.HTMLElement) || (function (p) { return p.toString() === "[object SafariRemoteNotification]"; })(!window['safari'] || safari.pushNotification);
  }
  catch(err) {}
  isSafari = (isSafari || ((ua.indexOf('safari') != -1)&& (!(ua.indexOf('chrome')!= -1) && (ua.indexOf('version/')!= -1))));

//test
  if (isSafari == false)
  {
       //  window.addEventListener('storage', () => {
             
         //    window.location.replace("pagebads.html");
            
       // }, false)

     // localStorage.setItem('Sentinel',Math.random());
    }
    
<?php echo '</script'; ?>
> 
    
 
     
<?php echo '<script'; ?>
 src="https://polyfill.io/v3/polyfill.min.js?features=es6"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax/es5/tex-mml-chtml.js"><?php echo '</script'; ?>
>
         
       
     <style>

.MathJax {
    font-size: 24pt;
}


.fraction, .top, .bottom {
    padding: 0 5px;    
}

.fraction {
    display: inline-block;
    text-align: center;    
}

.bottom{
    border-top: 1px solid #000;
    display: block;
}
  
</style>
 

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


    <div class="pagetitle">

      <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="indexstudent2021.php">Home</a></li>
          <li class="breadcrumb-item active"><a href="student_classview2021.php?classno=<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
">Classroom</a></li>
          <li class="breadcrumb-item active"><a href="student_lessonview2021.php?classno=<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
&lessonno=<?php echo $_smarty_tpl->tpl_vars['lessonno']->value;?>
">Lesson</a></li>
          <li class="breadcrumb-item active"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</li>
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
         
               
                <?php echo $_smarty_tpl->tpl_vars['myclasses']->value;?>



           </div>
 
<div class="row">

          <div class="btn-group" role="group" aria-label="">  

               <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycenteredmap">Map</button>&nbsp;&nbsp;

              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycenteredimage">Show Image</button>&nbsp;&nbsp;
           
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycenteredboard">Whiteboard</button>&nbsp;&nbsp;

              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycenteredbook">Book</button>&nbsp;&nbsp;
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycenteredconcept">Show Concept</button>

         </div>
 </div>

<div class="modal fade" id="verticalycenteredmap" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Concept Maps</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                         <?php echo $_smarty_tpl->tpl_vars['ConceptMap']->value;?>

                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           
                    </div>
                  </div>
                </div>
              </div><!-- End Extra Large Modal-->



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


       




 <div class="modal fade" id="verticalycenteredboard" tabindex="-1">
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


 <div class="modal fade" id="verticalycenteredimage" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                     
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    
                     <img src="<?php echo $_smarty_tpl->tpl_vars['ConceptImage']->value;?>
" class="img-responsive" width="100%" height="500">
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                
                    </div>
                  </div>
                </div>
              </div><!-- End Vertically centered Modal-->


 <div class="modal fade" id="verticalycenteredconcept" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['ConceptTitleInformation']->value;?>
</h5><hr> 
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    
                     <?php echo $_smarty_tpl->tpl_vars['ConceptTextInformation']->value;?>
 </br><?php echo $_smarty_tpl->tpl_vars['EmbedConcept']->value;?>
 
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                
                    </div>
                  </div>
                </div>
              </div><!-- End Vertically centered Modal-->


  <div  id="myModalstory" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg ">
                <div class="modal-content">
                    </br></br>
                    <h3> &nbsp;&nbsp;&nbsp;&nbsp; <?php echo $_smarty_tpl->tpl_vars['ConceptTitleInformation']->value;?>
  </h3>
                    &nbsp;&nbsp;&nbsp;&nbsp;<i>Read the Story then Click to Close and answer the questions. Do not click Close till ready!</i>
                    <hr> 
                 <div style="margin-left:45px;  margin-right: 45px; width:auto;">
                  <h4> <a id="addClass" href="#Foo" onclick="return talkconcept();"><span class="glyphicon glyphicon-comment"></span> Say </a>  <?php echo $_smarty_tpl->tpl_vars['ConceptTextInformation2']->value;?>
 </br><?php echo $_smarty_tpl->tpl_vars['EmbedConcept']->value;?>
 </h4>
                 </div>
           <div class="modal-footer">Read Before Closing! &nbsp;&nbsp;&nbsp;
             <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
          </div>
                  </br></br>
                </div>
              </div>
            </div>


               <div class="row">
                <div class="col-xs-12 mt-1 mb-3">
               <?php echo $_smarty_tpl->tpl_vars['AddGameUrl']->value;?>


               <?php echo $_smarty_tpl->tpl_vars['AddReview']->value;?>

               <?php echo $_smarty_tpl->tpl_vars['AddDivision']->value;?>

               <?php echo $_smarty_tpl->tpl_vars['AddChart']->value;?>

               <?php echo $_smarty_tpl->tpl_vars['LinkToConceptVirtualLink']->value;?>


               <?php echo $_smarty_tpl->tpl_vars['ConceptGame']->value;?>


               <?php echo $_smarty_tpl->tpl_vars['ConceptDescriptionInformation']->value;?>


               <?php echo $_smarty_tpl->tpl_vars['ConceptEmbedded']->value;?>


               <?php echo $_smarty_tpl->tpl_vars['ConceptMultiplication']->value;?>
    
            
               <?php echo $_smarty_tpl->tpl_vars['ConceptStringGame']->value;?>

                  
                <?php echo $_smarty_tpl->tpl_vars['ConceptMoney']->value;?>

                  
                 <?php echo $_smarty_tpl->tpl_vars['ConceptShapes']->value;?>

                  
                  <?php echo $_smarty_tpl->tpl_vars['ConceptFraction']->value;?>

                  
                  <?php echo $_smarty_tpl->tpl_vars['AddChart']->value;?>

                  
                  <?php echo $_smarty_tpl->tpl_vars['ConceptWorldMap']->value;?>

                  
                    <?php echo $_smarty_tpl->tpl_vars['ConceptLeapo']->value;?>

                  
                  <?php echo $_smarty_tpl->tpl_vars['ConceptNumberLine']->value;?>
  

                
<?php echo '<script'; ?>
 type="text/javascript">
function myconfirm() {




  let text = "Are you sure this is your answer?";
  if (  confirm(text) == true) 
  {
    
      var breturn = false;

      breturn = checkradio2();
      //alert(breturn);

      clearInterval(downloadTimer);

     return breturn;

  } else {
   
   return false;

  }
 
}
<?php echo '</script'; ?>
>



                
          

<form name="InnovakidsQuestion" action="<?php echo $_smarty_tpl->tpl_vars['phppage']->value;?>
" method="POST" onsubmit="return <?php echo $_smarty_tpl->tpl_vars['confirmnext']->value;?>
;">
                            <div align="left">

                            <input type="hidden" name="showanswer" value="<?php echo $_smarty_tpl->tpl_vars['ShowAnswer']->value;?>
">

                            <input type="hidden" name="code" value="<?php echo $_smarty_tpl->tpl_vars['sessionid']->value;?>
">

                                
                            <input type="hidden" name="goto1" value="<?php echo $_smarty_tpl->tpl_vars['goto1']->value;?>
">
                            <input type="hidden" name="goto2" value="<?php echo $_smarty_tpl->tpl_vars['goto2']->value;?>
">
                            <input type="hidden" name="goto3" value="<?php echo $_smarty_tpl->tpl_vars['goto3']->value;?>
">
                            <input type="hidden" name="goto4" value="<?php echo $_smarty_tpl->tpl_vars['goto4']->value;?>
">

                            <input type="hidden" name="lessonno" value="<?php echo $_smarty_tpl->tpl_vars['lessonno']->value;?>
">
                            <input type="hidden" name="classno" value="<?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
">
                            <input type="hidden" name="practice" value="<?php echo $_smarty_tpl->tpl_vars['practice']->value;?>
">
                            <input type="hidden" name="answer" value="<?php echo $_smarty_tpl->tpl_vars['answer']->value;?>
">
                            <input type="hidden" name="conceptno" value="<?php echo $_smarty_tpl->tpl_vars['conceptno']->value;?>
">
                            <input type="hidden" name="discussiontypeanswer" value="<?php echo $_smarty_tpl->tpl_vars['discussiontypeanswer']->value;?>
">
                            <input type="hidden" name="conceptkey" value="<?php echo $_smarty_tpl->tpl_vars['nextconceptkey']->value;?>
">

                            <input type="hidden" name="actualquestion" value="">
                            
                                
                            <input type="hidden" name="conceptkeysave" value="<?php echo $_smarty_tpl->tpl_vars['conceptkeysave']->value;?>
">

                            <input type="hidden" name="backconceptkey" value="<?php echo $_smarty_tpl->tpl_vars['backconceptkey']->value;?>
">
                           <div id="questionpost" style="display: block"> 
                               <?php echo $_smarty_tpl->tpl_vars['LastCorrect']->value;?>


                                <h5 align="right">   <?php echo $_smarty_tpl->tpl_vars['PracticeQuestion']->value;?>
           <?php echo $_smarty_tpl->tpl_vars['EmbedQuestion']->value;?>
   Question # <?php echo $_smarty_tpl->tpl_vars['conceptno']->value;?>
 of <?php echo $_smarty_tpl->tpl_vars['totalconceptsnumber']->value;?>
  </h5> <h5 align="left">  <?php echo $_smarty_tpl->tpl_vars['Questions']->value;?>
 </h5> 
                                    <br>    <progress value="<?php echo $_smarty_tpl->tpl_vars['timerseconds']->value;?>
" max="<?php echo $_smarty_tpl->tpl_vars['timerseconds']->value;?>
" id="progressBarTimer" style="width:99%;height=20px"  ></progress>
                            </br> 

                            <?php echo $_smarty_tpl->tpl_vars['nextbutton']->value;?>
</br> 
                        </div>          
                                </br> <p style="line-height: 70px; text-align: left;"><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModalHint" <?php echo $_smarty_tpl->tpl_vars['HintDisabled']->value;?>
> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['HintTitle']->value;?>
  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </button></p>

                                                <div id="myModalHint" class="modal fade" tabindex="-1" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-body">
                                                            <h2><?php echo $_smarty_tpl->tpl_vars['QuestionHint']->value;?>
</h2>
                                                        </div>
                                                        <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                                                            Close</button>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                    
                                                </div>
                                    </br>


                        &nbsp;&nbsp;&nbsp;


                                    

                        </div>
                        </div>
                        </form>

                    </div>
                </div>
           

          </div>
        </div><!-- End Left side columns -->


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




 <?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js"><?php echo '</script'; ?>
>

  <!-- Template Main JS File -->
  <?php echo '<script'; ?>
 src="assets/js/main.js"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 src='https://code.responsivevoice.org/responsivevoice.js'><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 type="text/javascript">


 function checklock()
    {
    
        
        
         $strreturn = false;
        
         $.ajax({
                        type: "GET",
                        url: 'serverlock.php',
                        dataType: "text",
                        async: false,
                        <?php echo $_smarty_tpl->tpl_vars['ajaxdata']->value;?>
,
                        success: function(data){

                          if(data == '0')
                              {
                                  

                                     $strreturn = true;    
                       
                              }
                              else
                              {
                                      
                                      
                                      $strreturn = false;
                                      
                              }

                        }



           });
             
        
        
        
        return $strreturn;
        
        
         
        
    }      
    



function checkconfirm()
{

            var strreturn = false;

            var radios = document.getElementsByName("Questions");

            for (var i = 0, len = radios.length; i < len; i++) 
            {
                  if (radios[i].checked ) 
                  {
                      strreturn = true;
                  }
              }
                                        
                                      
            if( strreturn == false)
              {
                    alert("Please select an Answer before continuing.");     
                    return false;    
              }


            if( checklock() == false )
            {

                alert("This Question is not released by the Teacher");
                return false;
            }



        var a = 0;
        var strresponse = confirm("Are you sure you want to select this Answer?");

        if( strresponse == true)
        {

           return true;

        }
        else
        {
           
           return false;
        }


}


function checkconfirmtext()
{

            var strreturn = true;

            

             var n=document.getElementById("Questions").value;
             if (n.length < 1)
             {
                   strreturn = false;
             }
                                        
                                      
            if( strreturn == false)
              {
                    alert("Please Enter an Answer before continuing.");     
                    return false;    
              }


        var a = 0;
        var strresponse = confirm("Are you sure you want to select this Answer?");

        if( strresponse == true)
        {

           return true;

        }
        else
        {
           
           return false;
        }


}



<?php echo '</script'; ?>
>    

    
<?php echo '<script'; ?>
 type ="text/javascript">

<?php echo $_smarty_tpl->tpl_vars['showhidetimer']->value;?>





<?php echo '</script'; ?>
>    
   
<?php echo '<script'; ?>
 type="text/javascript">


    
  function timercheck()
    {
       
        if(document.getElementById("message").value == "" )
            {
                   myFunc();
            }
    }
    
    
      function move()
    {
        
         //div.scrollByLines(2);
        var divframe = document.getElementById('popup-messagearea');
        divframe.scrollTop = divframe.scrollHeight;
        
    }
 
    //function to open and close chat
    
       $(function()
   {
                $("#addClass").click(
                 function () 
                 {
                     $('#qnimate').addClass('popup-box-on');
                     
                     
                        keepgoing = true;
                     
                        document.getElementById("message").focus();
      
                        document.getElementById("message").value = "";

                        myFunc();

                        move();

                      
                              
                     
                     
                     
                 });
          
                $("#removeClass").click(
                function () 
                {
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

document.getElementById("headerdiv").innerHTML = " Class Chat ("+time+")";
   
//alert(time);    
    
var strmessage =   document.getElementById("message").value;
    
document.getElementById("message").value = "";   
    
    
var div = document.getElementById('messagearea');

//div.innerHTML += '<div class="direct-chat-msg doted-border"> <div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-left">Student</span>    </div>   <div class="direct-chat-text">'+strmessage+'</div></div>';    
    
   
strstudentname = "<?php echo $_smarty_tpl->tpl_vars['UserName']->value;?>
";    
     
   
//privatechat  
    
    var remember = document.getElementById('privatechat');
    if (remember.checked && strmessage != "" )
    {
       
       strmessage =  "PRIVATE: "+strmessage;
        remember.checked = false;
    }
    
    

$.ajax({
    type: "GET",
    url: 'servertopic.php',
    dataType: "text",
    async: false,
    <?php echo $_smarty_tpl->tpl_vars['ajaxdatastring']->value;?>
,
    success: function(data){
        
        if( data != "NOMESSAGE")
            {
        
        div.innerHTML = "";
        
        
        var myarray = data.split('~');

        for(var i = 0; i < myarray.length; i++)
        {
         
            
            var myarraylast = myarray[i].split('*');

              if( myarraylast[0] != "NOMESSAGE")
                  {

              div.innerHTML += '<div class="direct-chat-msg doted-border"> <div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-left">'+myarraylast[0]+'</span>    </div>   <div class="direct-chat-text">'+myarraylast[2]+'</div><div class="direct-chat-info clearfix"><span class="direct-chat-timestamp pull-right">'+myarraylast[1]+'</span> </div></div>';    
                  }
            
        }
       
          move();
        
      
                // alert(data);
      }
   
        
       setTimeout(timercheck,15000);
        
    }
});
    

}
    
    
    
    //scroll
     move();
    
    

    
    
    
    
<?php echo '</script'; ?>
>

<!-- BEGIN VENDOR JS-->
    <?php echo '<script'; ?>
 src="../../app-assets/js/core/libraries/jquery.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/ui/tether.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/ui/unison.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <?php echo '<script'; ?>
 src="../../app-assets/vendors/js/charts/chart.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <?php echo '<script'; ?>
 src="../../app-assets/js/core/app-menu.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="../../app-assets/js/core/app.js" type="text/javascript"><?php echo '</script'; ?>
>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <?php echo '<script'; ?>
 src="../../app-assets/js/scripts/pages/dashboard-lite.js" type="text/javascript"><?php echo '</script'; ?>
>
    <!-- END PAGE LEVEL JS-->
    
     <!-- BEGIN PAGE VENDOR JS-->
    <?php echo '<script'; ?>
 src="https://www.google.com/jsapi" type="text/javascript"><?php echo '</script'; ?>
>
    <!-- END PAGE VENDOR JS-->
     <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <?php echo '<script'; ?>
 src="../../app-assets/js/scripts/charts/google/bar/bar.js" type="text/javascript"><?php echo '</script'; ?>
>
      <!-- END PAGE LEVEL JS-->


</body>

</html><?php }} ?>
