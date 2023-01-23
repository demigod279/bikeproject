{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_securitysearch2021.php">Security
                            Search</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$profileimage}" alt="Profile" class="rounded-circle">
                            <h2>{$username}</h2>
                            <h3>Teacher/Staff</h3>

                        </div>
                    </div>

                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">

                                <li class="nav-item">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                        data-bs-target="#profile-overview">Overview</button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit
                                        Security</button>
                                </li>




                            </ul>
                            <div class="tab-content pt-2">

                                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                    <h5 class="card-title">About</h5>

                                    <h5 class="card-title">Profile Details</h5>


                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label ">District</div>
                                        <div class="col-lg-9 col-md-8">{$DistrictName}</div>
                                    </div>


                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label ">School</div>
                                        <div class="col-lg-9 col-md-8">{$schoolname}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label ">Full Name</div>
                                        <div class="col-lg-9 col-md-8">{$username}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">User ID</div>
                                        <div class="col-lg-9 col-md-8">{$userid}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Birthdate</div>
                                        <div class="col-lg-9 col-md-8">{$birthdate}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">School</div>
                                        <div class="col-lg-9 col-md-8">{$schoolname}</div>
                                    </div>


                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Address</div>
                                        <div class="col-lg-9 col-md-8">{$address1} {$address2} {$city} {$state} {$zip}
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Phone</div>
                                        <div class="col-lg-9 col-md-8">{$phoneno}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Cell Phone</div>
                                        <div class="col-lg-9 col-md-8">{$cellphone}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Teacher Email/Login</div>
                                        <div class="col-lg-9 col-md-8">{$email}</div>
                                    </div>


                                </div>

                                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                    <!-- Profile Edit Form -->
                                    <form action="indexsecurityprofile2021.php" method="post">


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Staff Name
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$username}</div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Active
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$active}</div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Teacher
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$teacher}</div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Teacher Student
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$student}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Attendence
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$attendence}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">All Class Access
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$attendence}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company" class="col-md-4 col-lg-3 col-form-label">Lesson
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$lesson}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company" class="col-md-4 col-lg-3 col-form-label">Cafeteria
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$cafeteria}
                                            </div>
                                        </div>

                                        <hr>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">All Student
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$allstudentaccess}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Parent
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Staff
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$staff}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Teacher
                                                Class Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$class}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Standards
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$standard}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="District" class="col-md-4 col-lg-3 col-form-label">School
                                                Management</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$school}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Administration"
                                                class="col-md-4 col-lg-3 col-form-label">Administration
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$administration}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Security
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$security}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Device
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$devices}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Computer
                                                Control</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$computer}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Website Library
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$url}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Budget
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$budget}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Payables
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$payables}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Job
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$job}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Game
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$game}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Classroom Bank
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$bank}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Tuition
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$tuition}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">News
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$news}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Subject
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$subject}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Category
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$category}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Department
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$departmentmanager}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Grade
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$grademanager}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Term
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$term}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Year
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$year}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Period
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$period}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Class Type
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$classtype}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Grade Chart
                                                Access</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$gradechart}
                                            </div>
                                        </div>



                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$teacherno}" id="teacherno" name="teacherno" />


                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>





                            </div><!-- End Bordered Tabs -->

                        </div>
                    </div>

                </div>
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }