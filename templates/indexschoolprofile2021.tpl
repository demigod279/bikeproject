{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_schoolsearch2021.php">School
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
                            <h2>{$school}</h2>
                            <h3>School Manager</h3>

                        </div>
                    </div>

                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <div class="row mb-3">
                                <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Update Profile
                                    Image
                                </label>

                                <div class="col-md-8 col-lg-9">
                                    {$image}

                                </div>

                            </div>

                            <!-- Profile Edit Form -->
                            <form action="indexschoolprofile2021.php" method="post">


                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">School #
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="col-lg-9 col-md-8">{$schoolno}</div>
                                    </div>
                                </div>



                                <div class="row mb-3">
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">School
                                        Name</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="school" type="text" class="form-control" id="school"
                                            value="{$school}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Address</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="address" type="text" class="form-control" id="address"
                                            value="{$address}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Job" class="col-md-4 col-lg-3 col-form-label">City</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="city" type="text" class="form-control" id="city" value="{$city}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Country" class="col-md-4 col-lg-3 col-form-label">State</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="state" type="text" class="form-control" id="state"
                                            value="{$state}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Address" class="col-md-4 col-lg-3 col-form-label">Zip</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="zip" type="text" class="form-control" id="zip" value="{$zip}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="phone" type="text" class="form-control" id="phone"
                                            value="{$phone}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">School
                                        Type</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="schooltype" type="text" class="form-control" id="schooltype"
                                            value="{$schooltype}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">School
                                        Email</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="adminemail" type="email" class="form-control" id="adminemail"
                                            value="{$adminemail}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">Country
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="country" type="text" class="form-control" id="country"
                                            value="{$country}">
                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">Website
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="website" type="text" class="form-control" id="website"
                                            value="{$website}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Image File
                                        Name</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="col-lg-9 col-md-8">{$imagefilename}</div>
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
                    </div>

                </div>
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }