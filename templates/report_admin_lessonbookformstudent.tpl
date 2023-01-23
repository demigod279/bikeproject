<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en">

<head>

    <!-- Basic -->
    <title>Innovakids</title>

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

</head>

<body>

    <!-- Container -->
    <div id="container">

        <!-- Start Header -->
        <div class="hidden-header"></div>
        <header class="clearfix">


        </header>
        <!-- End Header -->



        <!-- Start Content -->
        <div id="content">
            <div class="container">

                <div class="row">

                    <div class="col-md-8">
                        </br> </br> </br> </br> </br>


                        <h4><span>
                                <font size="45">
                                    <center>Student Lesson Book</center>
                            </span></font>
                        </h4>
                        </br> </br></br> </br>
                        <!-- Classic Heading -->
                        <center>
                            <h4 class="classic-title">Student Edition</h4>
                        </center>
                        <center>
                            <h1>{$LessonPlanLesson}</h1>
                        </center>
                        </br> </br>
                        <h4>
                            <center>{$ClassNameInformation}</center>
                        </h4>

                        </br> </br></br> </br>
                        <div class="profile-avatar">
                            <center> <img src="{$LessonImage}" class="profile-avatar-img thumbnail" width="250"
                                    Height="250" alt="Lesson Image"></center>
                        </div>
                        </br>

                        <p style="page-break-after: always;">&nbsp;</p>


                        </br>
                        <h4 class="classic-title">Lesson Information</h4>
                        <B>Class Grade/Level:</B>&nbsp;&nbsp;{$ClassLevel}</br>
                        <B>Subject:</B>&nbsp;&nbsp;{$ClassSubject}</br>
                        <B>Created by:</B>&nbsp;&nbsp;{$TeacherName}</br>


                        <!-- Start Contact Form -->



                        <B>Lesson Level:</B>&nbsp;&nbsp;{$LessonPlanGrade}</br>
                        <B>Associated Lesson Plan:</B>&nbsp;&nbsp;{$LessonLessonPlanNo}</br>
                        <B>Innovakids Lesson #:</B>&nbsp;&nbsp;{$LessonLessonNo}</br>

                        <B>Chapter #:</B>&nbsp;&nbsp;{$LessonChapterNo}</br>
                        <B>Big Idea:</B>&nbsp;&nbsp;{$BigIdea}</br>
                        <B>Reward Points:</B>&nbsp;&nbsp;{$RewardPoints}</br></br>
                        <B>Prerequisite Lesson #:</B>&nbsp;&nbsp;{$PrerequisiteLessonNo}</br>
                        </br>


                        <B>Web Virtual Field Trip:</B>&nbsp;&nbsp;{$VirtualFieldTrip}</br>

                        </br>

                        <h4 class="classic-title">Standard #:&nbsp;&nbsp;{$LessonPlanStandard}</h4>
                        Standard Category:&nbsp;&nbsp;{$LessonPlanStandardCategory} </br>
                        Standard Sub Category:&nbsp;&nbsp;{$LessonPlanStandardSubCategory} </br></br>
                        {$LessonPlanStandardText}



                        </br> </br>




                        <h4 class="classic-title">Homework:</h4>{$LessonPlanHomework} </br> </br>

                        <p style="page-break-after: always;">&nbsp;</p>



                        </br>


                        {$ConceptList} </br> </br>

                        <!-- End Contact Form -->
                        <p style="page-break-after: always;">&nbsp;</p>

                        <h4 class="classic-title">Activity Sheet:</h4>{$LessonPlanNotes} </br> </br>


                        <p style="page-break-after: always;">&nbsp;</p>
                        <h4 class="classic-title">Student Lesson Study Notes: (Notes Students need to include in the
                            Student Notebook)</h4>{$LessonPlanObjective} </br> </br>

                        <p style="page-break-after: always;">&nbsp;</p>




                    </div>


                </div>

            </div>
        </div>


    </div>




</body>

</html>