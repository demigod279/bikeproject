{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_staffsearch2021.php">Staff
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



                            <h3>Add Teacher/Staff</h3>

                        </div>
                    </div>

                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">



                                <li class="nav-item active">
                                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Add
                                        Profile</button>
                                </li>





                            </ul>
                            <div class="tab-content pt-2">



                                <div class="tab-pane fade show active  profile-edit pt-3" id="profile-edit">

                                    <!-- Profile Edit Form -->
                                    <form action="indexteacherprofileadd2021.php" method="post">


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Staff #
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">Audo Assigned</div>
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
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Administrator
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$admin}</div>
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full
                                                Name</label>
                                            <div class="col-md-8 col-lg-9">
                                                <div class="col-lg-9 col-md-8">{$name}</div>
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Birth
                                                Date</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input type="date" class="form-control" id="birthdate" name="birthdate"
                                                    value="{$birthdate}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company"
                                                class="col-md-4 col-lg-3 col-form-label">Address</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="address1" type="text" class="form-control" id="address1"
                                                    value="{$address1}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="company"
                                                class="col-md-4 col-lg-3 col-form-label">Apartment/Suite</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="address2" type="text" class="form-control" id="address2"
                                                    value="{$address2}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">City</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="city" type="text" class="form-control" id="city"
                                                    value="{$city}">
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
                                                <input name="zip" type="text" class="form-control" id="zip"
                                                    value="{$zip}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="phoneno" type="text" class="form-control" id="phoneno"
                                                    value="{$phoneno}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Cell
                                                Phone</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="cellphoneno" type="text" class="form-control"
                                                    id="cellphoneno" value="{$cellphoneno}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email and
                                                Login</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="email" type="email" class="form-control" id="email"
                                                    value="{$email}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">Password</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="password" type="text" class="form-control" id="password"
                                                    value="{$password}">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">Second
                                                Email</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="p1email" type="email" class="form-control" id="p1email"
                                                    value="{$p1email}">
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">Grade
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="grade" type="text" class="form-control" id="grade"
                                                    value="{$grade}">
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">School Number
                                            </label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="schoolno" type="text" class="form-control" id="schoolno"
                                                    value="{$schoolno}">
                                            </div>
                                        </div>


                                        <input type="hidden" value="{$userid}" id="teacherno" name="teacherno" />


                                        <div class="text-center">
                                            <button type="submit" value="Add" id="add" name="add"
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