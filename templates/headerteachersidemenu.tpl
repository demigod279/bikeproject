    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">


        <div class="d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <img src="assets/img/logo.png" alt="">
                <span class="d-none d-lg-block">{$sitename}</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div><!-- End Logo -->


        <div class="align-items-center justify-content-between">

            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$schoolname}</h2>


        </div><!-- End Logo -->


        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">


                <li class="dropdown dropdown-language nav-item">
                    <select class="form-select" aria-label="Select Year" onchange="location = this.value;">
                        <option selected>{$year_selected}</option>
                        {$Years}

                    </select>
                </li>
                &nbsp;&nbsp;
                <li class="dropdown dropdown-language nav-item">

                    <select class="form-select" aria-label="Select Term" onchange="location = this.value;">
                        <option selected>{$term_selected}</option>
                        {$Terms}

                    </select>


                </li>



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

                        {$mailmessage}


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
                                href="indexteacherprofile2021.php?teacherno={$teacherno}">
                                <i class="bi bi-person"></i>
                                <span>My Profile</span>
                            </a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="index.html">
                                <i class="bi bi-box-arrow-right"></i>
                                <span>Sign Out</span>
                            </a>
                        </li>

                    </ul><!-- End Profile Dropdown Items -->
                </li><!-- End Profile Nav -->

            </ul>
        </nav><!-- End Icons Navigation -->

    </header><!-- End Header -->

    <div class="modal fade" id="popupnotification" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Notification Center</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">



                    <div class="share-widget clearfix">
                        <form action="indexteacher2021.php" method="post">


                            <br>
                            <textarea name="teachernotification_text" class="form-control share-widget-textarea"
                                rows="3" placeholder="Send a note to the School from Here" tabindex="1"></textarea>



                            <input name="classno" type="hidden" value="{$messageclassno}">


                            <div class="share-widget-actions">
                                <br>

                                <div class="pull-left">
                                    <input type="submit" value="Send Notification to School Now">
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


    <div class="modal fade" id="popupmessage" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Message Center</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <h4 class="modal-title">Select Student to Message </h4>

                    <div class="share-widget clearfix">
                        <form action="indexteacher2021.php" method="post">

                            {$studentdropdown}
                            <br>
                            <textarea name="teacherdiscussion_text" class="form-control share-widget-textarea" rows="3"
                                placeholder="Send a note to the Student from Here" tabindex="1"></textarea>



                            <input name="classno" type="hidden" value="{$messageclassno}">


                            <div class="share-widget-actions">
                                <br>

                                <div class="pull-left">
                                    <input type="submit" value="Send Message to Student Now">
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



    <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">

        <ul class="sidebar-nav" id="sidebar-nav">



            <li class="nav-item">


                <h4> <i class="bi bi-person"></i><b> {$username}</b></h4>

                <h6># {$teacherno}<h6>
                        <h6>{$year_selected}</h6>
                        <h6>{$term_selected}</h6>
                        <h6>Teacher</h6>
                        <br>


                        <hr>
            </li>

            <li class="nav-item">
                <a class="nav-link " href="indexteacher2021.php">
                    <i class="bi bi-grid"></i>
                    <span>Home</span>
                </a>
            </li><!-- End Dashboard Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" href="teacher_login2021.php">
                    <i class="bi bi-person"></i>
                    <span>Log Off</span>
                </a>
            </li><!-- End Profile Page Nav -->




            {$Studentaccess}

            {$Parentaccess}

            {$Attendenceaccess}


            {$Classaccess}




            {$Cafeteriaaccess}


            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-Academic" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Academic Administration</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-Academic" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    {$Subjectaccess}


                    {$Departmentmanageraccess}


                    {$Classtypeaccess}

                    {$Standardaccess}

                    {$Grademanageraccess}

                    {$Termaccess}

                    {$Yearaccess}

                    {$Periodaccess}

                    {$GradeChartaccess}

                </ul>
            </li><!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-School" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>School Administration</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-School" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    {$Schoolaccess}

                    {$Staffaccess}

                    {$Enrollmentaccess}

                    {$Securityaccess}

                    {$Newsaccess}

                    {$Devicesaccess}



                    {$Administrationaccess}

                </ul>
            </li><!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-classroom" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Classroom Manager</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-classroom" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    {$Gameaccess}

                    {$Jobaccess}

                    {$Bankaccess}

                </ul>
            </li><!-- End Components Nav -->


            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-computer" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Computer Control</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-computer" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    {$Computeraccess}

                    {$Urlaccess}

                </ul>
            </li><!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#components-finances" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>School Finances</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="components-finances" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    {$Tuitionaccess}
                    {$Payablesaccess}
                    {$Budgetaccess}
                </ul>
            </li><!-- End Components Nav -->



            <li class="nav-heading">Resources</li>



            <li class="nav-item">
                <a class="nav-link collapsed" href="https://dashboard.daily.co/" target="_blank">
                    <i class="bi bi-person"></i>
                    <span>Online Conference Dashboard</span>
                </a>
            </li><!-- End Profile Page Nav -->


            <li class="nav-item">
                <a class="nav-link collapsed" href="teacher_help2021.php">
                    <i class="bi bi-person"></i>
                    <span>Training Videos</span>
                </a>
            </li><!-- End Profile Page Nav -->

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