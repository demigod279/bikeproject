{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>

                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$classimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h3>School News Add</h3>

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


                            <form action="teacher_newssearch2021.php" method="post" id="tab_general">

                                <div class="row mb-3">
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Active</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_active}
                                    </div>
                                </div>





                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Display for Students
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_studentdisplay}
                                    </div>
                                </div>




                                <div class="row mb-3">
                                    <label for="about" class="col-md-4 col-lg-3 col-form-label">Subject</label>
                                    <div class="col-md-8 col-lg-9">{$general_subject}</div>
                                </div>



                                <div class="row mb-3">
                                    <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Title

                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_title}

                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Link
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_link}

                                    </div>

                                </div>


                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Detail
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_detail}

                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Event Date
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_eventdate}

                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Event Time

                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_eventtime}

                                    </div>
                                </div>






                                <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                <input type="hidden" value="general" id="tab" name="tab" />

                                <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                    name="general_schoolno" />

                                <input type="hidden" value="general" id="tab" name="tab" />

                                <div class="text-center">
                                    <button type="submit" value="Add" id="add" name="add" class="btn btn-primary">Save
                                        Unit</button>
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

{include file="teacherfooter.tpl" }