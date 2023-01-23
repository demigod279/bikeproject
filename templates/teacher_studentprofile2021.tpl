{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_parentsearch2021.php?teacherno={$teacherno}">Parent
                            Search</a></li>
                    <li class="breadcrumb-item"><a href="teacher_studentsearch2021.php?teacherno={$teacherno}">Student
                            Search</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
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
                        <iframe width='100%' height='450px' id='mapcanvas'
                            src='https://browserboard.com/whiteboard/TixjACojgjaGG54wigREno?key=BDkSycSHfq3SnMDoqmVizM'
                            frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>
                        </iframe>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Vertically centered Modal-->

        <div class="modal fade" id="popupclasses" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Student Classes</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <ul class="list-group list-group-flush">
                        {$myclasses}
                    </ul>

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
                        <iframe frameborder="0" height="500px" width="100%"
                            src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
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

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                new ApexCharts(document.querySelector("#barChart"), {
                                    series: [{
                                        data: [{$lessongrades}]
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
                                        categories: [{$lessonnames} ],
                                    }
                                }).render();
                            });
                        </script>
                        <!-- End Bar Chart -->




                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Extra Large Modal-->



        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$profileimage}" alt="Profile" class="rounded-circle">
                            <h2>{$fullname}</h2>
                            <h3>Student</h3>

                        </div>
                    </div>


                    <div class="btn-group">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#removestudent">
                            Remove
                        </button>&nbsp;&nbsp;
                        <div class="modal fade" id="removestudent" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Remove Student</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure you want to completely Delete this Student Record? I recommend
                                        making the student inactive, remove will completely remove this record from the
                                        system.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_studentprofile2021.php?remove=true&studentno={$studentno}"
                                            role="button">Remove Student</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->
                        <a class="btn btn-secondary" href="teacher_studentprofileadd2021.php?search=add"
                            role="button">Add
                        </a>&nbsp;&nbsp;
                        <a class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#popupclasses"
                            role="button">Classes</a>&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="teacher_studentgrade2021.php?studentno={$studentno}"
                            role="button">Grades
                        </a>
                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">


                        <div class="card-body">
                            <br>
                            <h5 class="modal-title">Rewards</h5>
                            <hr>

                            <h3 class="card-title">My Total Coins: {$totalcoins}</h3>
                            <h3 class="card-title">Bank Balance: {$CurrentBalance}</h3>
                            <h3 class="card-title">Stock Portfolio: {$CurrentStock}</h3>
                        </div>


                    </div><!-- End Sales Card -->


                    <div class="card">
                        <div class="card-body">
                            <br>
                            <h5 class="modal-title">Classes Reports</h5>
                            <hr>
                            {$mybasicclasses}
                        </div><!-- End Sales Card -->
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
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-general">General
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-parent">Parents
                                    </button>
                                </li>
                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-academics">Academics
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-medical">Medical
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-change-password">Change Password</button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab"
                                        data-bs-target="#profile-scores">Scores</button>
                                </li>

                            </ul>
                            <div class="tab-content pt-2">

                                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                    <h5 class="card-title">About (Public)</h5>
                                    <p class="small fst-italic">Click to <a
                                            href="teacher_attendencestudentreport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}&date={$date}&studentno={$studentno}"
                                            target="_blank">Print</a> Student Attendence Report</p>
                                    <p class="small fst-italic">{$about}</p>

                                    <h5 class="card-title">Profile Details</h5>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label ">Full Name</div>
                                        <div class="col-lg-9 col-md-8">{$fullname}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Student #</div>
                                        <div class="col-lg-9 col-md-8">{$studentno}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Student School ID</div>
                                        <div class="col-lg-9 col-md-8">{$studentid}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Gender</div>
                                        <div class="col-lg-9 col-md-8">{$gender}</div>
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
                                        <div class="col-lg-3 col-md-4 label">Grade</div>
                                        <div class="col-lg-9 col-md-8">{$grade}</div>
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
                                        <div class="col-lg-3 col-md-4 label">Student Email</div>
                                        <div class="col-lg-9 col-md-8">{$email}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Parent 1 Email</div>
                                        <div class="col-lg-9 col-md-8">{$p1email}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Parent 2 Email</div>
                                        <div class="col-lg-9 col-md-8">{$p2email}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Team</div>
                                        <div class="col-lg-9 col-md-8">{$team}</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Last Logged In</div>
                                        <div class="col-lg-9 col-md-8">{$lastlogin}</div>
                                    </div>


                                </div>

                                <div class="tab-pane fade profile-general pt-3" id="profile-general">

                                    <div class="row mb-3">
                                        <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Update Profile
                                            Image
                                        </label>

                                        <div class="col-md-8 col-lg-9">
                                            {$general_image}

                                        </div>

                                    </div>

                                    <form action="teacher_studentprofile2021.php" method="post" id="tab_general">
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Active Student
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_active}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$general_student}</div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Image File
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$general_imagefilename}</div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
                                            <div class="col-md-8 col-lg-9">{$general_about}</div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="notes" class="col-md-4 col-lg-3 col-form-label">Teacher Comments
                                                (Private)</label>
                                            <div class="col-md-8 col-lg-9">{$general_notes}</div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Student
                                                School ID
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_studentid}

                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Birth
                                                Date</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_birthdate}

                                            </div>
                                        </div>





                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Gender
                                            </label>
                                            <div class="col-md-8 col-lg-9">

                                                {$general_gender}

                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company"
                                                class="col-md-4 col-lg-3 col-form-label">Address</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_address1}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company"
                                                class="col-md-4 col-lg-3 col-form-label">Apartment/Suite</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_address2}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">City</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_city}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Country" class="col-md-4 col-lg-3 col-form-label">State</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_state}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Address" class="col-md-4 col-lg-3 col-form-label">Zip</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_zip}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_phoneno}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Cell
                                                Phone</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_cellphone}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$general_email}
                                            </div>
                                        </div>



                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$studentno}" id="studentno" name="studentno" />
                                        <input type="hidden" value="general" id="tab" name="tab" />

                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>



                                <div class="tab-pane fade profile-parent pt-3" id="profile-parent">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_studentprofile2021.php" method="post" id="tab_parent">


                                        <div class="row mb-3">
                                            <label for="p1name" class="col-md-4 col-lg-3 col-form-label">Parent 1
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1name}

                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1address" class="col-md-4 col-lg-3 col-form-label">Address
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1address1}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1address2" class="col-md-4 col-lg-3 col-form-label">Apt/Suite
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1address2}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1city" class="col-md-4 col-lg-3 col-form-label">City
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1city}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1state" class="col-md-4 col-lg-3 col-form-label">State
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1state}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1zip" class="col-md-4 col-lg-3 col-form-label">Zip
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1zip}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1phone1" class="col-md-4 col-lg-3 col-form-label">Phone
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1phone1}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1phone2" class="col-md-4 col-lg-3 col-form-label">Mobile
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1phone2}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Email
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p1email}
                                            </div>
                                        </div>


                                        <hr>
                                        <div class="row mb-3">
                                            <label for="p1name" class="col-md-4 col-lg-3 col-form-label">Parent 2
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2name}

                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1address" class="col-md-4 col-lg-3 col-form-label">Address
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2address1}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1address2" class="col-md-4 col-lg-3 col-form-label">Apt/Suite
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2address2}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1city" class="col-md-4 col-lg-3 col-form-label">City
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2city}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1state" class="col-md-4 col-lg-3 col-form-label">State
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2state}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1zip" class="col-md-4 col-lg-3 col-form-label">Zip
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2zip}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1phone1" class="col-md-4 col-lg-3 col-form-label">Phone
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2phone1}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1phone2" class="col-md-4 col-lg-3 col-form-label">Mobile
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2phone2}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Email
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$parent_p2email}
                                            </div>
                                        </div>




                                        <input type="hidden" value="parent" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$studentno}" id="studentno" name="studentno" />


                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->

                                </div>


                                <div class="tab-pane fade profile-academics pt-3" id="profile-academics">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_studentprofile2021.php" method="post" id="tab_academics">

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Status
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_status}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Current Grade
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_grade}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Device ID
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_deviceid} &nbsp;&nbsp;<a class="btn btn-secondary"
                                                    href="teacher_devicessearch2021.php" role="button">Manage</a>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Class of
                                                (Year)
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_classof}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Team
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_team}
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">IEP
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_iep}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">IEP
                                                Information
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_iepinfo}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Homeroom
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_homeroom}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Lexile Level
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_lexilelevel}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">SDC
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_sdc}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Preferred Seat
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_preferredseat}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Suspensions
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_suspended}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">Expelled
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_expelled}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Allow Student Chat
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_allowchat}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Teacher Chat Only
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_teacherchatonly}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                No Lesson Emails
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_nolessonemail}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Student Job
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_job}&nbsp;&nbsp;<a class="btn btn-secondary"
                                                    href="teacher_jobsearch2021.php" role="button">Manage</a>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Rent
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_rent}
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Salary
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$academics_salary}
                                            </div>
                                        </div>




                                        <input type="hidden" value="academics" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$grade}" id="grade" name="grade" />
                                        <input type="hidden" value="{$studentno}" id="studentno" name="studentno" />


                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>

                                    </form><!-- End Profile Edit Form -->

                                </div>

                                <div class="tab-pane fade profile-medical pt-3" id="profile-medical">

                                    <!-- Profile Edit Form -->
                                    <form action="teacher_studentprofile2021.php" method="post" id="tab_medical">


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Doctor
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_doctor}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Doctor Phone
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_doctorphone}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Insurance
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_insurance}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Insurance Phone #
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_insurphone}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                                Last Physical
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_lastphysical}
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">
                                                Condition 1
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_condition1}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">
                                                Condition 2
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_condition2}
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="p1email" class="col-md-4 col-lg-3 col-form-label">
                                                Medical Information
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                {$medical_medicalinfo}
                                            </div>
                                        </div>


                                        <input type="hidden" value="medical" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$studentno}" id="studentno" name="studentno" />


                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Save Changes</button>
                                        </div>

                                    </form><!-- End Profile Edit Form -->

                                </div>


                                <div class="tab-pane fade pt-3" id="profile-change-password">
                                    <!-- Change Password Form -->

                                    <form action="teacher_studentprofile2021.php" method="post" id="tab_password">

                                        <div class="row mb-3">
                                            <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New
                                                Password</label>
                                            <div class="col-md-8 col-lg-9">
                                                {$password_password}
                                            </div>
                                        </div>


                                        <input type="hidden" value="password" id="tab" name="tab" />
                                        <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                        <input type="hidden" value="{$studentno}" id="studentno" name="studentno" />


                                        <div class="text-center">
                                            <button type="submit" value="Save" id="save" name="save"
                                                class="btn btn-primary">Change Password</button>
                                        </div>


                                    </form><!-- End Change Password Form -->

                                </div>


                                <div class="tab-pane fade pt-3" id="profile-scores">
                                    <!-- Change Password Form -->

                                    <table class="table table-borderless datatable">
                                        <thead>
                                            <tr>
                                                <th scope="col">Action</th>
                                                <th scope="col">Subject</th>
                                                <th scope="col">Score</th>
                                                <th scope="col">Year</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            {$scorelist}

                                        </tbody>
                                    </table>



                                </div>


                            </div><!-- End Bordered Tabs -->

                        </div>
                    </div>

                </div>
            </div>
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }