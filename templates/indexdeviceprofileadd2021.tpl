{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_devicessearch2021.php">Device
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
                            <a class="btn btn-danger" href="indexdeviceprofile2021.php?remove=true&deviceid={$id}"
                                role="button">Remove Device</a>
                            &nbsp;&nbsp;
                            <a class="btn btn-info" href="indexdeviceprofileadd2021.php" role="button">Add Device</a>

                        </div>
                    </div>

                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->


                            <!-- Profile Edit Form -->
                            <form action="indexdeviceprofileadd2021.php" method="post">



                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">System #
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$id}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Active
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_active}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Device #
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_deviceid}
                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Serial #
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_serialnumber}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Description
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_description}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Notes
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_notes}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Purchase Date
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_datepurchased}
                                    </div>
                                </div>



                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Type
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_type}
                                    </div>
                                </div>

                                <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                    name="general_schoolno" />
                                <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />


                                <input type="hidden" value="general" id="tab" name="tab" />
                                <div class="text-center">
                                    <button type="submit" value="Add" id="add" name="add" class="btn btn-primary">Add
                                        Device</button>
                                </div>
                            </form><!-- End Profile Edit Form -->

                        </div>
                    </div>

                </div>
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }