{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
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

                            <h3>Student Add</h3>
                            <h2>message</h2>
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
                                        data-bs-target="#profile-general">General</button>
                                </li>




                            </ul>


                            <br>

                            <form action="teacher_studentprofileadd2021.php" method="post" id="tab_general">
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
                                        {$general_student}
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
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Address</label>
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

                                <div class="row mb-3">
                                    <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New
                                        Password</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_password}
                                    </div>
                                </div>

                                <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                    name="general_schoolno" />

                                <input type="hidden" value="general" id="tab" name="tab" />

                                <div class="text-center">
                                    <button type="submit" value="Add" id="add" name="add" class="btn btn-primary">Add
                                        Student</button>
                                </div>
                            </form><!-- End Profile Edit Form -->




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