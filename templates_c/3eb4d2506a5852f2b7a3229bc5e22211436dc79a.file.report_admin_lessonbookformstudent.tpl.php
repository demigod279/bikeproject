<?php /* Smarty version Smarty-3.1.21-dev, created on 2022-01-15 17:05:55
         compiled from ".\templates\report_admin_lessonbookformstudent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:277061e36f73d849d6-23176460%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3eb4d2506a5852f2b7a3229bc5e22211436dc79a' => 
    array (
      0 => '.\\templates\\report_admin_lessonbookformstudent.tpl',
      1 => 1640456448,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '277061e36f73d849d6-23176460',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SchoolName' => 0,
    'LessonPlanLesson' => 0,
    'ClassNameInformation' => 0,
    'LessonImage' => 0,
    'ClassLevel' => 0,
    'ClassSubject' => 0,
    'TeacherName' => 0,
    'LessonPlanGrade' => 0,
    'LessonLessonPlanNo' => 0,
    'LessonLessonNo' => 0,
    'LessonChapterNo' => 0,
    'BigIdea' => 0,
    'RewardPoints' => 0,
    'PrerequisiteLessonNo' => 0,
    'VirtualFieldTrip' => 0,
    'LessonPlanStandard' => 0,
    'LessonPlanStandardCategory' => 0,
    'LessonPlanStandardSubCategory' => 0,
    'LessonPlanStandardText' => 0,
    'LessonPlanHomework' => 0,
    'ConceptList' => 0,
    'LessonPlanNotes' => 0,
    'LessonPlanObjective' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_61e36f73df08c0_68778937',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_61e36f73df08c0_68778937')) {function content_61e36f73df08c0_68778937($_smarty_tpl) {?><!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en">

<head>

  <!-- Basic -->
  <title>Innovakids | Lesson Detail | <?php echo $_smarty_tpl->tpl_vars['SchoolName']->value;?>
</title>

  <!-- Define Charset -->
  <meta charset="utf-8">

  <!-- Responsive Metatag -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 <meta property="description" 
  content="Classroom Learning Management System designed to change they way we teach and learn. Innovakids is designed to be a fully integrated system for administration and Learning.  Digital coursework, student/teacher collaboration, assessment, and customization are only some of the many popular features of the Innovakids." />
    <META 
content="Classroom Learning Management System,Classroom online learning,Flipped Classroom,Hybrid Classes, School administration software, Learning Software,Online Quiz, Online Test,Student Management System,Innovakids, School software"
name=keywords>
  <meta name="author" content="Vivaldi Systems">


  <!-- Bootstrap CSS  -->
  <link rel="stylesheet" href="asset/css/bootstrap.min.css" type="text/css" media="screen">

  <!-- Font Awesome CSS -->
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="screen">

  <!-- Slicknav -->
  <link rel="stylesheet" type="text/css" href="css/slicknav.css" media="screen">

  <!-- Margo CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="css/style.css" media="screen">

  <!-- Responsive CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="css/responsive.css" media="screen">

  <!-- Color CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="css/colors/red.css" title="red" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/jade.css" title="jade" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/blue.css" title="blue" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/beige.css" title="beige" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/cyan.css" title="cyan" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/green.css" title="green" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/orange.css" title="orange" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/peach.css" title="peach" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/pink.css" title="pink" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/purple.css" title="purple" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/sky-blue.css" title="sky-blue" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/colors/yellow.css" title="yellow" media="screen" />


  <!-- Margo JS  -->
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery-2.1.4.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.migrate.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/modernizrr.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="asset/js/bootstrap.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.fitvids.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/owl.carousel.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/nivo-lightbox.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.isotope.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.appear.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/count-to.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.textillate.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.lettering.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.easypiechart.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.nicescroll.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.parallax.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.slicknav.js"><?php echo '</script'; ?>
>


  <!--[if IE 8]><?php echo '<script'; ?>
 src="http://html5shiv.googlecode.com/svn/trunk/html5.js"><?php echo '</script'; ?>
><![endif]-->
  <!--[if lt IE 9]><?php echo '<script'; ?>
 src="http://html5shiv.googlecode.com/svn/trunk/html5.js"><?php echo '</script'; ?>
><![endif]-->

</head>

<body>

  <!-- Container -->
  <div id="container">

    <!-- Start Header -->
    <div class="hidden-header"></div>
    <header class="clearfix">

      <!-- Start Top Bar -->
     
      <!-- End Top Bar -->

      <!-- Start Header ( Logo & Naviagtion ) -->
   
      <!-- End Header ( Logo & Naviagtion ) -->

    </header>
    <!-- End Header -->

  

    <!-- Start Content -->
    <div id="content">
      <div class="container">

        <div class="row">

          <div class="col-md-8">
 </br> </br> </br> </br> </br>
              
     
    <h4 ><span><font size="45"><center>Student Lesson Book</center></span></font></h4> 
             </br> </br></br> </br>
            <!-- Classic Heading -->
                     <center> <h4 class="classic-title">Student Edition</h4>  </center>
             <center> <h1><?php echo $_smarty_tpl->tpl_vars['LessonPlanLesson']->value;?>
</h1> </center>
            </br> </br>
            <h4><center><?php echo $_smarty_tpl->tpl_vars['ClassNameInformation']->value;?>
</center></h4> 
            
            </br> </br></br> </br>
           <div class="profile-avatar">
                      <center>  <img src="<?php echo $_smarty_tpl->tpl_vars['LessonImage']->value;?>
" class="profile-avatar-img thumbnail" width="250" Height="250" alt="Lesson Image"></center>
                    </div> 
             </br> 
          
          <p style="page-break-after: always;">&nbsp;</p>
          
          
</br>
<h4 class="classic-title">Lesson Information</h4>
<B>Class Grade/Level:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['ClassLevel']->value;?>
</br>
<B>Subject:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['ClassSubject']->value;?>
</br>
<B>Created by:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['TeacherName']->value;?>
</br>

  
            <!-- Start Contact Form -->
  
           
 
<B>Lesson Level:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonPlanGrade']->value;?>
</br>
<B>Associated Lesson Plan:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonLessonPlanNo']->value;?>
</br>
<B>Innovakids Lesson #:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonLessonNo']->value;?>
</br>

<B>Chapter #:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonChapterNo']->value;?>
</br>
<B>Big Idea:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['BigIdea']->value;?>
</br>
<B>Reward Points:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['RewardPoints']->value;?>
</br></br>
<B>Prerequisite Lesson #:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['PrerequisiteLessonNo']->value;?>
</br>
</br>


<B>Web Virtual Field Trip:</B>&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['VirtualFieldTrip']->value;?>
</br>

</br>

<h4 class="classic-title">Standard #:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonPlanStandard']->value;?>
</h4> 
    Standard Category:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonPlanStandardCategory']->value;?>
 </br>
    Standard Sub Category:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LessonPlanStandardSubCategory']->value;?>
 </br></br>
    <?php echo $_smarty_tpl->tpl_vars['LessonPlanStandardText']->value;?>

  
    
    
 </br> </br>




<h4 class="classic-title">Homework:</h4><?php echo $_smarty_tpl->tpl_vars['LessonPlanHomework']->value;?>
 </br> </br> 

<p style="page-break-after: always;">&nbsp;</p>



</br> 


     <?php echo $_smarty_tpl->tpl_vars['ConceptList']->value;?>
 </br> </br> 

            <!-- End Contact Form -->
<p style="page-break-after: always;">&nbsp;</p>
        
<h4 class="classic-title">Activity Sheet:</h4><?php echo $_smarty_tpl->tpl_vars['LessonPlanNotes']->value;?>
 </br> </br> 


 <p style="page-break-after: always;">&nbsp;</p>
<h4 class="classic-title">Student Lesson Study Notes: (Notes Students need to include in the Student Notebook)</h4><?php echo $_smarty_tpl->tpl_vars['LessonPlanObjective']->value;?>
 </br> </br> 

<p style="page-break-after: always;">&nbsp;</p>
        



          </div>


        </div>

      </div>
    </div>
    <!-- End content -->

  <!-- Start Footer -->

    <!-- End Footer -->

  </div>
  <!-- End Container -->

  <!-- Go To Top Link -->
  


</body>

</html>
<?php }} ?>
